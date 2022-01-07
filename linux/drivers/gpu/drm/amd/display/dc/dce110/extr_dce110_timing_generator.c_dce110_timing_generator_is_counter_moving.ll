; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_is_counter_moving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_is_counter_moving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.timing_generator*, %struct.crtc_position*)* }
%struct.crtc_position = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_timing_generator_is_counter_moving(%struct.timing_generator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.crtc_position, align 8
  %5 = alloca %struct.crtc_position, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  %6 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %7 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.timing_generator*, %struct.crtc_position*)*, i32 (%struct.timing_generator*, %struct.crtc_position*)** %9, align 8
  %11 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %12 = call i32 %10(%struct.timing_generator* %11, %struct.crtc_position* %4)
  %13 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %14 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.timing_generator*, %struct.crtc_position*)*, i32 (%struct.timing_generator*, %struct.crtc_position*)** %16, align 8
  %18 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %19 = call i32 %17(%struct.timing_generator* %18, %struct.crtc_position* %5)
  %20 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %4, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %5, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %25, %1
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
