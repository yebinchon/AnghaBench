; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_bridge_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32* }
%struct.msm_dsi = type { %struct.drm_encoder*, %struct.TYPE_2__* }
%struct.drm_encoder = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dsi_bridge = type { %struct.drm_bridge, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dsi_mgr_bridge_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_bridge* @msm_dsi_manager_bridge_init(i32 %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi*, align 8
  %5 = alloca %struct.drm_bridge*, align 8
  %6 = alloca %struct.dsi_bridge*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %9)
  store %struct.msm_dsi* %10, %struct.msm_dsi** %4, align 8
  store %struct.drm_bridge* null, %struct.drm_bridge** %5, align 8
  %11 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %12 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dsi_bridge* @devm_kzalloc(i32 %15, i32 16, i32 %16)
  store %struct.dsi_bridge* %17, %struct.dsi_bridge** %6, align 8
  %18 = load %struct.dsi_bridge*, %struct.dsi_bridge** %6, align 8
  %19 = icmp ne %struct.dsi_bridge* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %42

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.dsi_bridge*, %struct.dsi_bridge** %6, align 8
  %26 = getelementptr inbounds %struct.dsi_bridge, %struct.dsi_bridge* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %28 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %27, i32 0, i32 0
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %28, align 8
  store %struct.drm_encoder* %29, %struct.drm_encoder** %7, align 8
  %30 = load %struct.dsi_bridge*, %struct.dsi_bridge** %6, align 8
  %31 = getelementptr inbounds %struct.dsi_bridge, %struct.dsi_bridge* %30, i32 0, i32 0
  store %struct.drm_bridge* %31, %struct.drm_bridge** %5, align 8
  %32 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  %33 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %32, i32 0, i32 0
  store i32* @dsi_mgr_bridge_funcs, i32** %33, align 8
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %35 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  %36 = call i32 @drm_bridge_attach(%struct.drm_encoder* %34, %struct.drm_bridge* %35, i32* null)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %42

40:                                               ; preds = %23
  %41 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  store %struct.drm_bridge* %41, %struct.drm_bridge** %2, align 8
  br label %51

42:                                               ; preds = %39, %20
  %43 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  %44 = icmp ne %struct.drm_bridge* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  %47 = call i32 @msm_dsi_manager_bridge_destroy(%struct.drm_bridge* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.drm_bridge* @ERR_PTR(i32 %49)
  store %struct.drm_bridge* %50, %struct.drm_bridge** %2, align 8
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  ret %struct.drm_bridge* %52
}

declare dso_local %struct.msm_dsi* @dsi_mgr_get_dsi(i32) #1

declare dso_local %struct.dsi_bridge* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, %struct.drm_bridge*, i32*) #1

declare dso_local i32 @msm_dsi_manager_bridge_destroy(%struct.drm_bridge*) #1

declare dso_local %struct.drm_bridge* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
