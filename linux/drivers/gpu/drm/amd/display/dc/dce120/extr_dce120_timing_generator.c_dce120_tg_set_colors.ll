; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_tg_set_colors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_tg_set_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.tg_color = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_tg_set_colors(%struct.timing_generator* %0, %struct.tg_color* %1, %struct.tg_color* %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.tg_color*, align 8
  %6 = alloca %struct.tg_color*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store %struct.tg_color* %1, %struct.tg_color** %5, align 8
  store %struct.tg_color* %2, %struct.tg_color** %6, align 8
  %7 = load %struct.tg_color*, %struct.tg_color** %5, align 8
  %8 = icmp ne %struct.tg_color* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %11 = load %struct.tg_color*, %struct.tg_color** %5, align 8
  %12 = call i32 @dce120_tg_program_blank_color(%struct.timing_generator* %10, %struct.tg_color* %11)
  br label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.tg_color*, %struct.tg_color** %6, align 8
  %15 = icmp ne %struct.tg_color* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %18 = load %struct.tg_color*, %struct.tg_color** %6, align 8
  %19 = call i32 @dce120_tg_set_overscan_color(%struct.timing_generator* %17, %struct.tg_color* %18)
  br label %20

20:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @dce120_tg_program_blank_color(%struct.timing_generator*, %struct.tg_color*) #1

declare dso_local i32 @dce120_tg_set_overscan_color(%struct.timing_generator*, %struct.tg_color*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
