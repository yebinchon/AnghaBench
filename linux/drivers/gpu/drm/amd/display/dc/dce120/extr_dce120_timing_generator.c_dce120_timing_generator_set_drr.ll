; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_set_drr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_set_drr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.drr_params = type { i64, i64 }
%struct.dce110_timing_generator = type { i32 }

@CRTC0_CRTC_V_TOTAL_MIN = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MIN = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_MAX = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MAX = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_CONTROL = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MIN_SEL = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MAX_SEL = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_ON_EVENT = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_TO_MASTER_VSYNC = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK_EN = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK = common dso_local global i32 0, align 4
@CRTC0_CRTC_STATIC_SCREEN_CONTROL = common dso_local global i32 0, align 4
@CRTC_STATIC_SCREEN_EVENT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_set_drr(%struct.timing_generator* %0, %struct.drr_params* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.drr_params*, align 8
  %5 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.drr_params* %1, %struct.drr_params** %4, align 8
  %6 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %7 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.dce110_timing_generator* %7, %struct.dce110_timing_generator** %5, align 8
  %8 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %9 = icmp ne %struct.drr_params* %8, null
  br i1 %9, label %10, label %54

10:                                               ; preds = %2
  %11 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %12 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %10
  %16 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %17 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = load i32, i32* @CRTC0_CRTC_V_TOTAL_MIN, align 4
  %22 = load i32, i32* @CRTC_V_TOTAL_MIN, align 4
  %23 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %24 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i32 @CRTC_REG_UPDATE(i32 %21, i32 %22, i32 %27)
  %29 = load i32, i32* @CRTC0_CRTC_V_TOTAL_MAX, align 4
  %30 = load i32, i32* @CRTC_V_TOTAL_MAX, align 4
  %31 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %32 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i32 @CRTC_REG_UPDATE(i32 %29, i32 %30, i32 %35)
  %37 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL, align 4
  %38 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MIN_SEL, align 4
  %39 = call i32 @FD(i32 %38)
  %40 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MAX_SEL, align 4
  %41 = call i32 @FD(i32 %40)
  %42 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_ON_EVENT, align 4
  %43 = call i32 @FD(i32 %42)
  %44 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_TO_MASTER_VSYNC, align 4
  %45 = call i32 @FD(i32 %44)
  %46 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK_EN, align 4
  %47 = call i32 @FD(i32 %46)
  %48 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK, align 4
  %49 = call i32 @FD(i32 %48)
  %50 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @CRTC_REG_SET_N(i32 %37, i32 6, i32 %39, i32 1, i32 %41, i32 1, i32 %43, i32 0, i32 %45, i32 0, i32 %47, i32 0, i32 %49, i32 0)
  %51 = load i32, i32* @CRTC0_CRTC_STATIC_SCREEN_CONTROL, align 4
  %52 = load i32, i32* @CRTC_STATIC_SCREEN_EVENT_MASK, align 4
  %53 = call i32 @CRTC_REG_UPDATE(i32 %51, i32 %52, i32 384)
  br label %76

54:                                               ; preds = %15, %10, %2
  %55 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL, align 4
  %56 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MIN_SEL, align 4
  %57 = call i32 @FD(i32 %56)
  %58 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MAX_SEL, align 4
  %59 = call i32 @FD(i32 %58)
  %60 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_ON_EVENT, align 4
  %61 = call i32 @FD(i32 %60)
  %62 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_TO_MASTER_VSYNC, align 4
  %63 = call i32 @FD(i32 %62)
  %64 = load i32, i32* @CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK, align 4
  %65 = call i32 @FD(i32 %64)
  %66 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @CRTC_REG_SET_N(i32 %55, i32 5, i32 %57, i32 0, i32 %59, i32 0, i32 %61, i32 0, i32 %63, i32 0, i32 %65, i32 0)
  %67 = load i32, i32* @CRTC0_CRTC_V_TOTAL_MIN, align 4
  %68 = load i32, i32* @CRTC_V_TOTAL_MIN, align 4
  %69 = call i32 @CRTC_REG_UPDATE(i32 %67, i32 %68, i32 0)
  %70 = load i32, i32* @CRTC0_CRTC_V_TOTAL_MAX, align 4
  %71 = load i32, i32* @CRTC_V_TOTAL_MAX, align 4
  %72 = call i32 @CRTC_REG_UPDATE(i32 %70, i32 %71, i32 0)
  %73 = load i32, i32* @CRTC0_CRTC_STATIC_SCREEN_CONTROL, align 4
  %74 = load i32, i32* @CRTC_STATIC_SCREEN_EVENT_MASK, align 4
  %75 = call i32 @CRTC_REG_UPDATE(i32 %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %54, %20
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @CRTC_REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @CRTC_REG_SET_N(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @FD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
