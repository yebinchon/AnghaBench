; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_bridge_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32* }
%struct.hdmi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_bridge = type { %struct.drm_bridge, %struct.hdmi* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msm_hdmi_bridge_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_bridge* @msm_hdmi_bridge_init(%struct.hdmi* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.hdmi_bridge*, align 8
  %6 = alloca i32, align 4
  store %struct.hdmi* %0, %struct.hdmi** %3, align 8
  store %struct.drm_bridge* null, %struct.drm_bridge** %4, align 8
  %7 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hdmi_bridge* @devm_kzalloc(i32 %11, i32 16, i32 %12)
  store %struct.hdmi_bridge* %13, %struct.hdmi_bridge** %5, align 8
  %14 = load %struct.hdmi_bridge*, %struct.hdmi_bridge** %5, align 8
  %15 = icmp ne %struct.hdmi_bridge* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %21 = load %struct.hdmi_bridge*, %struct.hdmi_bridge** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi_bridge, %struct.hdmi_bridge* %21, i32 0, i32 1
  store %struct.hdmi* %20, %struct.hdmi** %22, align 8
  %23 = load %struct.hdmi_bridge*, %struct.hdmi_bridge** %5, align 8
  %24 = getelementptr inbounds %struct.hdmi_bridge, %struct.hdmi_bridge* %23, i32 0, i32 0
  store %struct.drm_bridge* %24, %struct.drm_bridge** %4, align 8
  %25 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %26 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %25, i32 0, i32 0
  store i32* @msm_hdmi_bridge_funcs, i32** %26, align 8
  %27 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %28 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %31 = call i32 @drm_bridge_attach(i32 %29, %struct.drm_bridge* %30, i32* null)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %37

35:                                               ; preds = %19
  %36 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  store %struct.drm_bridge* %36, %struct.drm_bridge** %2, align 8
  br label %46

37:                                               ; preds = %34, %16
  %38 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %39 = icmp ne %struct.drm_bridge* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %42 = call i32 @msm_hdmi_bridge_destroy(%struct.drm_bridge* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.drm_bridge* @ERR_PTR(i32 %44)
  store %struct.drm_bridge* %45, %struct.drm_bridge** %2, align 8
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  ret %struct.drm_bridge* %47
}

declare dso_local %struct.hdmi_bridge* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_bridge_attach(i32, %struct.drm_bridge*, i32*) #1

declare dso_local i32 @msm_hdmi_bridge_destroy(%struct.drm_bridge*) #1

declare dso_local %struct.drm_bridge* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
