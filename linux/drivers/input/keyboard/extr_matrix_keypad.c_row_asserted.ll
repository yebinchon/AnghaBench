; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c_row_asserted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c_row_asserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix_keypad_platform_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrix_keypad_platform_data*, i32)* @row_asserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @row_asserted(%struct.matrix_keypad_platform_data* %0, i32 %1) #0 {
  %3 = alloca %struct.matrix_keypad_platform_data*, align 8
  %4 = alloca i32, align 4
  store %struct.matrix_keypad_platform_data* %0, %struct.matrix_keypad_platform_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %6 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @gpio_get_value_cansleep(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %16 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %23 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %25

25:                                               ; preds = %21, %14
  %26 = phi i32 [ %20, %14 ], [ %24, %21 ]
  ret i32 %26
}

declare dso_local i64 @gpio_get_value_cansleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
