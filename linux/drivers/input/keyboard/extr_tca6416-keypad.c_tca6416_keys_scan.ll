; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca6416-keypad.c_tca6416_keys_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca6416-keypad.c_tca6416_keys_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca6416_keypad_chip = type { i32, i32, %struct.tca6416_button*, %struct.input_dev* }
%struct.tca6416_button = type { i32, i32, i32 }
%struct.input_dev = type { i32 }

@TCA6416_INPUT = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tca6416_keypad_chip*)* @tca6416_keys_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tca6416_keys_scan(%struct.tca6416_keypad_chip* %0) #0 {
  %2 = alloca %struct.tca6416_keypad_chip*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tca6416_button*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tca6416_keypad_chip* %0, %struct.tca6416_keypad_chip** %2, align 8
  %12 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %2, align 8
  %13 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %12, i32 0, i32 3
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %3, align 8
  %15 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %2, align 8
  %16 = load i32, i32* @TCA6416_INPUT, align 4
  %17 = call i32 @tca6416_read_reg(%struct.tca6416_keypad_chip* %15, i32 %16, i32* %4)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %99

21:                                               ; preds = %1
  %22 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %2, align 8
  %23 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %2, align 8
  %29 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %2, align 8
  %34 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %96, %21
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %99

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %38
  %45 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %2, align 8
  %46 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %45, i32 0, i32 2
  %47 = load %struct.tca6416_button*, %struct.tca6416_button** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.tca6416_button, %struct.tca6416_button* %47, i64 %49
  store %struct.tca6416_button* %50, %struct.tca6416_button** %9, align 8
  %51 = load %struct.tca6416_button*, %struct.tca6416_button** %9, align 8
  %52 = getelementptr inbounds %struct.tca6416_button, %struct.tca6416_button* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @EV_KEY, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ %53, %55 ], [ %57, %56 ]
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.tca6416_button*, %struct.tca6416_button** %9, align 8
  %68 = getelementptr inbounds %struct.tca6416_button, %struct.tca6416_button* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %66, %69
  store i32 %70, i32* %11, align 4
  %71 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.tca6416_button*, %struct.tca6416_button** %9, align 8
  %74 = getelementptr inbounds %struct.tca6416_button, %struct.tca6416_button* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @input_event(%struct.input_dev* %71, i32 %72, i32 %75, i32 %80)
  %82 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %83 = call i32 @input_sync(%struct.input_dev* %82)
  br label %84

84:                                               ; preds = %58, %38
  %85 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %2, align 8
  %86 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %35

99:                                               ; preds = %20, %35
  ret void
}

declare dso_local i32 @tca6416_read_reg(%struct.tca6416_keypad_chip*, i32, i32*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
