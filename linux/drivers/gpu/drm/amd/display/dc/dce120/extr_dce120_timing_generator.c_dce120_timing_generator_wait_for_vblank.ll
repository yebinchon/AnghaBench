; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_wait_for_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_wait_for_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.timing_generator*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_wait_for_vblank(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  br label %3

3:                                                ; preds = %17, %1
  %4 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %5 = call i64 @dce120_timing_generator_is_in_vertical_blank(%struct.timing_generator* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %9 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %11, align 8
  %13 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %14 = call i32 %12(%struct.timing_generator* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  br label %18

17:                                               ; preds = %7
  br label %3

18:                                               ; preds = %16, %3
  br label %19

19:                                               ; preds = %34, %18
  %20 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %21 = call i64 @dce120_timing_generator_is_in_vertical_blank(%struct.timing_generator* %20)
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %26 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %28, align 8
  %30 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %31 = call i32 %29(%struct.timing_generator* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %35

34:                                               ; preds = %24
  br label %19

35:                                               ; preds = %33, %19
  ret void
}

declare dso_local i64 @dce120_timing_generator_is_in_vertical_blank(%struct.timing_generator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
