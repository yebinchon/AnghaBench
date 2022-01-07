; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_arm_vert_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_arm_vert_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.timing_generator*, i64*, i64*, i64*, i64*)* }
%struct.dce110_timing_generator = type { i32 }

@CRTC_VERTICAL_INTERRUPT0_POSITION = common dso_local global i32 0, align 4
@CRTC_VERTICAL_INTERRUPT0_LINE_START = common dso_local global i32 0, align 4
@CRTC_VERTICAL_INTERRUPT0_LINE_END = common dso_local global i32 0, align 4
@mmCRTC_VERTICAL_INTERRUPT0_POSITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_arm_vert_intr(%struct.timing_generator* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dce110_timing_generator*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %13 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %12)
  store %struct.dce110_timing_generator* %13, %struct.dce110_timing_generator** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %15 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.timing_generator*, i64*, i64*, i64*, i64*)*, i32 (%struct.timing_generator*, i64*, i64*, i64*, i64*)** %17, align 8
  %19 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %20 = call i32 %18(%struct.timing_generator* %19, i64* %7, i64* %8, i64* %10, i64* %11)
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @CRTC_VERTICAL_INTERRUPT0_POSITION, align 4
  %31 = load i32, i32* @CRTC_VERTICAL_INTERRUPT0_LINE_START, align 4
  %32 = call i32 @set_reg_field_value(i64 %28, i64 %29, i32 %30, i32 %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @CRTC_VERTICAL_INTERRUPT0_POSITION, align 4
  %38 = load i32, i32* @CRTC_VERTICAL_INTERRUPT0_LINE_END, align 4
  %39 = call i32 @set_reg_field_value(i64 %33, i64 %36, i32 %37, i32 %38)
  %40 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %41 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @mmCRTC_VERTICAL_INTERRUPT0_POSITION, align 4
  %44 = call i32 @CRTC_REG(i32 %43)
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @dm_write_reg(i32 %42, i32 %44, i64 %45)
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %27, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @set_reg_field_value(i64, i64, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i64) #1

declare dso_local i32 @CRTC_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
