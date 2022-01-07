; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_translate.c_dal_hw_translate_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_translate.c_dal_hw_translate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_translate = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_hw_translate_init(%struct.hw_translate* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_translate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hw_translate* %0, %struct.hw_translate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @IS_FPGA_MAXIMUS_DC(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.hw_translate*, %struct.hw_translate** %5, align 8
  %13 = call i32 @dal_hw_translate_diag_fpga_init(%struct.hw_translate* %12)
  store i32 1, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %25 [
    i32 134, label %16
    i32 133, label %16
    i32 132, label %16
    i32 140, label %19
    i32 139, label %19
    i32 138, label %19
    i32 137, label %19
    i32 136, label %22
    i32 135, label %22
  ]

16:                                               ; preds = %14, %14, %14
  %17 = load %struct.hw_translate*, %struct.hw_translate** %5, align 8
  %18 = call i32 @dal_hw_translate_dce80_init(%struct.hw_translate* %17)
  store i32 1, i32* %4, align 4
  br label %27

19:                                               ; preds = %14, %14, %14, %14
  %20 = load %struct.hw_translate*, %struct.hw_translate** %5, align 8
  %21 = call i32 @dal_hw_translate_dce110_init(%struct.hw_translate* %20)
  store i32 1, i32* %4, align 4
  br label %27

22:                                               ; preds = %14, %14
  %23 = load %struct.hw_translate*, %struct.hw_translate** %5, align 8
  %24 = call i32 @dal_hw_translate_dce120_init(%struct.hw_translate* %23)
  store i32 1, i32* %4, align 4
  br label %27

25:                                               ; preds = %14
  %26 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %22, %19, %16, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @IS_FPGA_MAXIMUS_DC(i32) #1

declare dso_local i32 @dal_hw_translate_diag_fpga_init(%struct.hw_translate*) #1

declare dso_local i32 @dal_hw_translate_dce80_init(%struct.hw_translate*) #1

declare dso_local i32 @dal_hw_translate_dce110_init(%struct.hw_translate*) #1

declare dso_local i32 @dal_hw_translate_dce120_init(%struct.hw_translate*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
