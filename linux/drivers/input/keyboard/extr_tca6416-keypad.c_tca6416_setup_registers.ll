; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca6416-keypad.c_tca6416_setup_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca6416-keypad.c_tca6416_setup_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca6416_keypad_chip = type { i32, i32, i32, i32 }

@TCA6416_OUTPUT = common dso_local global i32 0, align 4
@TCA6416_DIRECTION = common dso_local global i32 0, align 4
@TCA6416_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tca6416_keypad_chip*)* @tca6416_setup_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca6416_setup_registers(%struct.tca6416_keypad_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tca6416_keypad_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.tca6416_keypad_chip* %0, %struct.tca6416_keypad_chip** %3, align 8
  %5 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %6 = load i32, i32* @TCA6416_OUTPUT, align 4
  %7 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %8 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %7, i32 0, i32 0
  %9 = call i32 @tca6416_read_reg(%struct.tca6416_keypad_chip* %5, i32 %6, i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %16 = load i32, i32* @TCA6416_DIRECTION, align 4
  %17 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %18 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %17, i32 0, i32 1
  %19 = call i32 @tca6416_read_reg(%struct.tca6416_keypad_chip* %15, i32 %16, i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %14
  %25 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %26 = load i32, i32* @TCA6416_DIRECTION, align 4
  %27 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %28 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %31 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = call i32 @tca6416_write_reg(%struct.tca6416_keypad_chip* %25, i32 %26, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %24
  %40 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %41 = load i32, i32* @TCA6416_DIRECTION, align 4
  %42 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %43 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %42, i32 0, i32 1
  %44 = call i32 @tca6416_read_reg(%struct.tca6416_keypad_chip* %40, i32 %41, i32* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %67

49:                                               ; preds = %39
  %50 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %51 = load i32, i32* @TCA6416_INPUT, align 4
  %52 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %53 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %52, i32 0, i32 3
  %54 = call i32 @tca6416_read_reg(%struct.tca6416_keypad_chip* %50, i32 %51, i32* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %67

59:                                               ; preds = %49
  %60 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %61 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %64 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %59, %57, %47, %37, %22, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @tca6416_read_reg(%struct.tca6416_keypad_chip*, i32, i32*) #1

declare dso_local i32 @tca6416_write_reg(%struct.tca6416_keypad_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
