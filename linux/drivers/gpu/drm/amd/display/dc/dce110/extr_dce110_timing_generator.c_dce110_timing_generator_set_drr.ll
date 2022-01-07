; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_set_drr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_set_drr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.drr_params = type { i64, i64 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_V_TOTAL_MIN = common dso_local global i32 0, align 4
@mmCRTC_V_TOTAL_MAX = common dso_local global i32 0, align 4
@mmCRTC_V_TOTAL_CONTROL = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MAX = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MIN = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_CONTROL = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MIN_SEL = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MAX_SEL = common dso_local global i32 0, align 4
@CRTC_FORCE_LOCK_ON_EVENT = common dso_local global i32 0, align 4
@CRTC_FORCE_LOCK_TO_MASTER_VSYNC = common dso_local global i32 0, align 4
@CRTC_SET_V_TOTAL_MIN_MASK_EN = common dso_local global i32 0, align 4
@CRTC_SET_V_TOTAL_MIN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_set_drr(%struct.timing_generator* %0, %struct.drr_params* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.drr_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dce110_timing_generator*, align 8
  %9 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.drr_params* %1, %struct.drr_params** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %11 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %10)
  store %struct.dce110_timing_generator* %11, %struct.dce110_timing_generator** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @mmCRTC_V_TOTAL_MIN, align 4
  %13 = call i32 @CRTC_REG(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %15 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @dm_read_reg(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @mmCRTC_V_TOTAL_MAX, align 4
  %20 = call i32 @CRTC_REG(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %22 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dm_read_reg(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @mmCRTC_V_TOTAL_CONTROL, align 4
  %27 = call i32 @CRTC_REG(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %29 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dm_read_reg(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %34 = icmp ne %struct.drr_params* %33, null
  br i1 %34, label %35, label %88

35:                                               ; preds = %2
  %36 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %37 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %35
  %41 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %42 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %88

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %48 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @CRTC_V_TOTAL_MAX, align 4
  %53 = load i32, i32* @CRTC_V_TOTAL_MAX, align 4
  %54 = call i32 @set_reg_field_value(i32 %46, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.drr_params*, %struct.drr_params** %4, align 8
  %57 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @CRTC_V_TOTAL_MIN, align 4
  %62 = load i32, i32* @CRTC_V_TOTAL_MIN, align 4
  %63 = call i32 @set_reg_field_value(i32 %55, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %66 = load i32, i32* @CRTC_V_TOTAL_MIN_SEL, align 4
  %67 = call i32 @set_reg_field_value(i32 %64, i32 1, i32 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %70 = load i32, i32* @CRTC_V_TOTAL_MAX_SEL, align 4
  %71 = call i32 @set_reg_field_value(i32 %68, i32 1, i32 %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %74 = load i32, i32* @CRTC_FORCE_LOCK_ON_EVENT, align 4
  %75 = call i32 @set_reg_field_value(i32 %72, i32 0, i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %78 = load i32, i32* @CRTC_FORCE_LOCK_TO_MASTER_VSYNC, align 4
  %79 = call i32 @set_reg_field_value(i32 %76, i32 0, i32 %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %82 = load i32, i32* @CRTC_SET_V_TOTAL_MIN_MASK_EN, align 4
  %83 = call i32 @set_reg_field_value(i32 %80, i32 0, i32 %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %86 = load i32, i32* @CRTC_SET_V_TOTAL_MIN_MASK, align 4
  %87 = call i32 @set_reg_field_value(i32 %84, i32 0, i32 %85, i32 %86)
  br label %117

88:                                               ; preds = %40, %35, %2
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %91 = load i32, i32* @CRTC_SET_V_TOTAL_MIN_MASK, align 4
  %92 = call i32 @set_reg_field_value(i32 %89, i32 0, i32 %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %95 = load i32, i32* @CRTC_V_TOTAL_MIN_SEL, align 4
  %96 = call i32 @set_reg_field_value(i32 %93, i32 0, i32 %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %99 = load i32, i32* @CRTC_V_TOTAL_MAX_SEL, align 4
  %100 = call i32 @set_reg_field_value(i32 %97, i32 0, i32 %98, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @CRTC_V_TOTAL_MIN, align 4
  %103 = load i32, i32* @CRTC_V_TOTAL_MIN, align 4
  %104 = call i32 @set_reg_field_value(i32 %101, i32 0, i32 %102, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @CRTC_V_TOTAL_MAX, align 4
  %107 = load i32, i32* @CRTC_V_TOTAL_MAX, align 4
  %108 = call i32 @set_reg_field_value(i32 %105, i32 0, i32 %106, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %111 = load i32, i32* @CRTC_FORCE_LOCK_ON_EVENT, align 4
  %112 = call i32 @set_reg_field_value(i32 %109, i32 0, i32 %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @CRTC_V_TOTAL_CONTROL, align 4
  %115 = load i32, i32* @CRTC_FORCE_LOCK_TO_MASTER_VSYNC, align 4
  %116 = call i32 @set_reg_field_value(i32 %113, i32 0, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %88, %45
  %118 = load i32, i32* @mmCRTC_V_TOTAL_MIN, align 4
  %119 = call i32 @CRTC_REG(i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %121 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @dm_write_reg(i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* @mmCRTC_V_TOTAL_MAX, align 4
  %127 = call i32 @CRTC_REG(i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %129 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @dm_write_reg(i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* @mmCRTC_V_TOTAL_CONTROL, align 4
  %135 = call i32 @CRTC_REG(i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %137 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @dm_write_reg(i32 %138, i32 %139, i32 %140)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
