; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_mrst_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_mrst_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_limit_t = type { i32 }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@INTEL_OUTPUT_MIPI = common dso_local global i32 0, align 4
@mrst_limits = common dso_local global %struct.gma_limit_t* null, align 8
@MRST_LIMIT_LVDS_100L = common dso_local global i64 0, align 8
@MRST_LIMIT_LVDS_83 = common dso_local global i64 0, align 8
@MRST_LIMIT_LVDS_100 = common dso_local global i64 0, align 8
@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@MRST_LIMIT_SDVO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"mrst_limit Wrong display type.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gma_limit_t* (%struct.drm_crtc*, i32)* @mrst_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gma_limit_t* @mrst_limit(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gma_limit_t*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.gma_limit_t* null, %struct.gma_limit_t** %5, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.drm_psb_private*, %struct.drm_psb_private** %12, align 8
  store %struct.drm_psb_private* %13, %struct.drm_psb_private** %7, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %16 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = load i32, i32* @INTEL_OUTPUT_MIPI, align 4
  %21 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18, %2
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %39 [
    i32 100, label %27
    i32 166, label %31
    i32 200, label %35
  ]

27:                                               ; preds = %23
  %28 = load %struct.gma_limit_t*, %struct.gma_limit_t** @mrst_limits, align 8
  %29 = load i64, i64* @MRST_LIMIT_LVDS_100L, align 8
  %30 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %28, i64 %29
  store %struct.gma_limit_t* %30, %struct.gma_limit_t** %5, align 8
  br label %39

31:                                               ; preds = %23
  %32 = load %struct.gma_limit_t*, %struct.gma_limit_t** @mrst_limits, align 8
  %33 = load i64, i64* @MRST_LIMIT_LVDS_83, align 8
  %34 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %32, i64 %33
  store %struct.gma_limit_t* %34, %struct.gma_limit_t** %5, align 8
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.gma_limit_t*, %struct.gma_limit_t** @mrst_limits, align 8
  %37 = load i64, i64* @MRST_LIMIT_LVDS_100, align 8
  %38 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %36, i64 %37
  store %struct.gma_limit_t* %38, %struct.gma_limit_t** %5, align 8
  br label %39

39:                                               ; preds = %23, %35, %31, %27
  br label %55

40:                                               ; preds = %18
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %42 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %43 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.gma_limit_t*, %struct.gma_limit_t** @mrst_limits, align 8
  %47 = load i64, i64* @MRST_LIMIT_SDVO, align 8
  %48 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %46, i64 %47
  store %struct.gma_limit_t* %48, %struct.gma_limit_t** %5, align 8
  br label %54

49:                                               ; preds = %40
  store %struct.gma_limit_t* null, %struct.gma_limit_t** %5, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  ret %struct.gma_limit_t* %56
}

declare dso_local i64 @gma_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
