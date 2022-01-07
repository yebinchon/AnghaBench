; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_connector.c_msm_edp_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_connector.c_msm_edp_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, i32 }
%struct.msm_edp = type { i32, i32 }
%struct.edp_connector = type { %struct.drm_connector, %struct.msm_edp* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@edp_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@edp_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_connector* @msm_edp_connector_init(%struct.msm_edp* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.msm_edp*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edp_connector*, align 8
  %6 = alloca i32, align 4
  store %struct.msm_edp* %0, %struct.msm_edp** %3, align 8
  store %struct.drm_connector* null, %struct.drm_connector** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.edp_connector* @kzalloc(i32 24, i32 %7)
  store %struct.edp_connector* %8, %struct.edp_connector** %5, align 8
  %9 = load %struct.edp_connector*, %struct.edp_connector** %5, align 8
  %10 = icmp ne %struct.edp_connector* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.drm_connector* @ERR_PTR(i32 %13)
  store %struct.drm_connector* %14, %struct.drm_connector** %2, align 8
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.msm_edp*, %struct.msm_edp** %3, align 8
  %17 = load %struct.edp_connector*, %struct.edp_connector** %5, align 8
  %18 = getelementptr inbounds %struct.edp_connector, %struct.edp_connector* %17, i32 0, i32 1
  store %struct.msm_edp* %16, %struct.msm_edp** %18, align 8
  %19 = load %struct.edp_connector*, %struct.edp_connector** %5, align 8
  %20 = getelementptr inbounds %struct.edp_connector, %struct.edp_connector* %19, i32 0, i32 0
  store %struct.drm_connector* %20, %struct.drm_connector** %4, align 8
  %21 = load %struct.msm_edp*, %struct.msm_edp** %3, align 8
  %22 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %26 = call i32 @drm_connector_init(i32 %23, %struct.drm_connector* %24, i32* @edp_connector_funcs, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.drm_connector* @ERR_PTR(i32 %30)
  store %struct.drm_connector* %31, %struct.drm_connector** %2, align 8
  br label %48

32:                                               ; preds = %15
  %33 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %34 = call i32 @drm_connector_helper_add(%struct.drm_connector* %33, i32* @edp_connector_helper_funcs)
  %35 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %36 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %41 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %43 = load %struct.msm_edp*, %struct.msm_edp** %3, align 8
  %44 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %42, i32 %45)
  %47 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  store %struct.drm_connector* %47, %struct.drm_connector** %2, align 8
  br label %48

48:                                               ; preds = %32, %29, %11
  %49 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  ret %struct.drm_connector* %49
}

declare dso_local %struct.edp_connector* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_connector* @ERR_PTR(i32) #1

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
