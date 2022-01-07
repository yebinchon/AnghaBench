; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_validate_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_validate_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dce110_timing_generator = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce120_timing_generator_validate_timing(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timing_generator*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %12 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %20 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %23 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %27 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %31 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load i64, i64* %8, align 8
  %35 = mul nsw i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %37 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %36)
  store %struct.dce110_timing_generator* %37, %struct.dce110_timing_generator** %10, align 8
  %38 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %39 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dce110_timing_generator_validate_timing(%struct.timing_generator* %38, %struct.dc_crtc_timing* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

44:                                               ; preds = %3
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %10, align 8
  %47 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %44
  %51 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %52 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %10, align 8
  %55 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %60 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %10, align 8
  %63 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %50, %44
  store i32 0, i32* %4, align 4
  br label %68

67:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %66, %43
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dce110_timing_generator_validate_timing(%struct.timing_generator*, %struct.dc_crtc_timing*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
