; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_program_horz_count_by_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_program_horz_count_by_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_COUNT_CONTROL = common dso_local global i32 0, align 4
@CRTC_COUNT_CONTROL = common dso_local global i32 0, align 4
@CRTC_HORZ_COUNT_BY2_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*, %struct.dc_crtc_timing*)* @program_horz_count_by_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_horz_count_by_2(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.dc_crtc_timing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %4, align 8
  %7 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %8 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %7)
  store %struct.dce110_timing_generator* %8, %struct.dce110_timing_generator** %6, align 8
  %9 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %10 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @mmCRTC_COUNT_CONTROL, align 4
  %13 = call i32 @CRTC_REG(i32 %12)
  %14 = call i32 @dm_read_reg(i32 %11, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CRTC_COUNT_CONTROL, align 4
  %17 = load i32, i32* @CRTC_HORZ_COUNT_BY2_EN, align 4
  %18 = call i32 @set_reg_field_value(i32 %15, i32 0, i32 %16, i32 %17)
  %19 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %20 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CRTC_COUNT_CONTROL, align 4
  %27 = load i32, i32* @CRTC_HORZ_COUNT_BY2_EN, align 4
  %28 = call i32 @set_reg_field_value(i32 %25, i32 1, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %31 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @mmCRTC_COUNT_CONTROL, align 4
  %34 = call i32 @CRTC_REG(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dm_write_reg(i32 %32, i32 %34, i32 %35)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
