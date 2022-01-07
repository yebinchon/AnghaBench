; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_wait_for_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_wait_for_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*)* @dce110_timing_generator_v_wait_for_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_timing_generator_v_wait_for_vblank(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  br label %3

3:                                                ; preds = %12, %1
  %4 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %5 = call i64 @dce110_timing_generator_v_is_in_vertical_blank(%struct.timing_generator* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %9 = call i32 @dce110_timing_generator_v_is_counter_moving(%struct.timing_generator* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7
  br label %3

13:                                               ; preds = %11, %3
  br label %14

14:                                               ; preds = %24, %13
  %15 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %16 = call i64 @dce110_timing_generator_v_is_in_vertical_blank(%struct.timing_generator* %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %21 = call i32 @dce110_timing_generator_v_is_counter_moving(%struct.timing_generator* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %25

24:                                               ; preds = %19
  br label %14

25:                                               ; preds = %23, %14
  ret void
}

declare dso_local i64 @dce110_timing_generator_v_is_in_vertical_blank(%struct.timing_generator*) #1

declare dso_local i32 @dce110_timing_generator_v_is_counter_moving(%struct.timing_generator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
