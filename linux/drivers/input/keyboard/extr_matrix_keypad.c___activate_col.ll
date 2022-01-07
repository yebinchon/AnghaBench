; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c___activate_col.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c___activate_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix_keypad_platform_data = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrix_keypad_platform_data*, i32, i32)* @__activate_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__activate_col(%struct.matrix_keypad_platform_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.matrix_keypad_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.matrix_keypad_platform_data* %0, %struct.matrix_keypad_platform_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %9 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %18 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @gpio_direction_output(i32 %23, i32 %24)
  br label %53

26:                                               ; preds = %3
  %27 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @gpio_set_value_cansleep(i32 %33, i32 %37)
  %39 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %40 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %26
  %44 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %45 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gpio_direction_input(i32 %50)
  br label %52

52:                                               ; preds = %43, %26
  br label %53

53:                                               ; preds = %52, %16
  ret void
}

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
