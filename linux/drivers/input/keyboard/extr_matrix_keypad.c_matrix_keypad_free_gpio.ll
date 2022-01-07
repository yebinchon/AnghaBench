; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c_matrix_keypad_free_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c_matrix_keypad_free_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix_keypad = type { %struct.matrix_keypad_platform_data* }
%struct.matrix_keypad_platform_data = type { i64, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrix_keypad*)* @matrix_keypad_free_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrix_keypad_free_gpio(%struct.matrix_keypad* %0) #0 {
  %2 = alloca %struct.matrix_keypad*, align 8
  %3 = alloca %struct.matrix_keypad_platform_data*, align 8
  %4 = alloca i32, align 4
  store %struct.matrix_keypad* %0, %struct.matrix_keypad** %2, align 8
  %5 = load %struct.matrix_keypad*, %struct.matrix_keypad** %2, align 8
  %6 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %5, i32 0, i32 0
  %7 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  store %struct.matrix_keypad_platform_data* %7, %struct.matrix_keypad_platform_data** %3, align 8
  %8 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %9 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %14 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.matrix_keypad*, %struct.matrix_keypad** %2, align 8
  %17 = call i32 @free_irq(i64 %15, %struct.matrix_keypad* %16)
  br label %40

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %22 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %27 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @gpio_to_irq(i32 %32)
  %34 = load %struct.matrix_keypad*, %struct.matrix_keypad** %2, align 8
  %35 = call i32 @free_irq(i64 %33, %struct.matrix_keypad* %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %19

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39, %12
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %44 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %49 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @gpio_free(i32 %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %41

59:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %63 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %3, align 8
  %68 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @gpio_free(i32 %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %60

78:                                               ; preds = %60
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.matrix_keypad*) #1

declare dso_local i64 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
