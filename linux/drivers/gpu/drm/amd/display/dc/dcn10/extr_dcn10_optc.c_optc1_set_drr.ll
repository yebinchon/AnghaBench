; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_set_drr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_set_drr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.timing_generator*)* }
%struct.drr_params = type { i64, i64, i64, i64 }
%struct.optc = type { i32 }

@OTG_V_TOTAL_MID = common dso_local global i32 0, align 4
@OTG_V_TOTAL_CONTROL = common dso_local global i32 0, align 4
@OTG_VTOTAL_MID_REPLACING_MAX_EN = common dso_local global i32 0, align 4
@OTG_VTOTAL_MID_FRAME_NUM = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MAX = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MIN = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MIN_SEL = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MAX_SEL = common dso_local global i32 0, align 4
@OTG_FORCE_LOCK_ON_EVENT = common dso_local global i32 0, align 4
@OTG_SET_V_TOTAL_MIN_MASK_EN = common dso_local global i32 0, align 4
@OTG_SET_V_TOTAL_MIN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_set_drr(%struct.timing_generator* %0, %struct.drr_params* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.drr_params*, align 8
  %5 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.drr_params* %1, %struct.drr_params** %4, align 8
  %6 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %7 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.optc* %7, %struct.optc** %5, align 8
  %8 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %9 = icmp ne %struct.drr_params* %8, null
  br i1 %9, label %10, label %70

10:                                               ; preds = %2
  %11 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %12 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %10
  %16 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %17 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %15
  %21 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %22 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i32, i32* @OTG_V_TOTAL_MID, align 4
  %27 = load i32, i32* @OTG_V_TOTAL_MID, align 4
  %28 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %29 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = call i32 @REG_SET(i32 %26, i32 0, i32 %27, i64 %31)
  %33 = load i32, i32* @OTG_V_TOTAL_CONTROL, align 4
  %34 = load i32, i32* @OTG_VTOTAL_MID_REPLACING_MAX_EN, align 4
  %35 = load i32, i32* @OTG_VTOTAL_MID_FRAME_NUM, align 4
  %36 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %37 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @REG_UPDATE_2(i32 %33, i32 %34, i32 1, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %25, %20
  %42 = load i32, i32* @OTG_V_TOTAL_MAX, align 4
  %43 = load i32, i32* @OTG_V_TOTAL_MAX, align 4
  %44 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %45 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  %48 = call i32 @REG_SET(i32 %42, i32 0, i32 %43, i64 %47)
  %49 = load i32, i32* @OTG_V_TOTAL_MIN, align 4
  %50 = load i32, i32* @OTG_V_TOTAL_MIN, align 4
  %51 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %52 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call i32 @REG_SET(i32 %49, i32 0, i32 %50, i64 %54)
  %56 = load i32, i32* @OTG_V_TOTAL_CONTROL, align 4
  %57 = load i32, i32* @OTG_V_TOTAL_MIN_SEL, align 4
  %58 = load i32, i32* @OTG_V_TOTAL_MAX_SEL, align 4
  %59 = load i32, i32* @OTG_FORCE_LOCK_ON_EVENT, align 4
  %60 = load i32, i32* @OTG_SET_V_TOTAL_MIN_MASK_EN, align 4
  %61 = load i32, i32* @OTG_SET_V_TOTAL_MIN_MASK, align 4
  %62 = call i32 @REG_UPDATE_5(i32 %56, i32 %57, i32 1, i32 %58, i32 1, i32 %59, i32 0, i32 %60, i32 0, i32 %61, i32 0)
  %63 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %64 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %66, align 8
  %68 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %69 = call i32 %67(%struct.timing_generator* %68)
  br label %83

70:                                               ; preds = %15, %10, %2
  %71 = load i32, i32* @OTG_V_TOTAL_CONTROL, align 4
  %72 = load i32, i32* @OTG_SET_V_TOTAL_MIN_MASK, align 4
  %73 = load i32, i32* @OTG_V_TOTAL_MIN_SEL, align 4
  %74 = load i32, i32* @OTG_V_TOTAL_MAX_SEL, align 4
  %75 = load i32, i32* @OTG_FORCE_LOCK_ON_EVENT, align 4
  %76 = call i32 @REG_UPDATE_4(i32 %71, i32 %72, i32 0, i32 %73, i32 0, i32 %74, i32 0, i32 %75, i32 0)
  %77 = load i32, i32* @OTG_V_TOTAL_MIN, align 4
  %78 = load i32, i32* @OTG_V_TOTAL_MIN, align 4
  %79 = call i32 @REG_SET(i32 %77, i32 0, i32 %78, i64 0)
  %80 = load i32, i32* @OTG_V_TOTAL_MAX, align 4
  %81 = load i32, i32* @OTG_V_TOTAL_MAX, align 4
  %82 = call i32 @REG_SET(i32 %80, i32 0, i32 %81, i64 0)
  br label %83

83:                                               ; preds = %70, %41
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i64) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
