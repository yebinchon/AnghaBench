; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_kp = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic8xxx_kp*, i32*, i32, i32)* @pmic8xxx_kp_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_kp_read_data(%struct.pmic8xxx_kp* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmic8xxx_kp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pmic8xxx_kp* %0, %struct.pmic8xxx_kp** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %41, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %6, align 8
  %19 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %12)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %45

27:                                               ; preds = %17
  %28 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %6, align 8
  %29 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @pmic8xxx_col_state(%struct.pmic8xxx_kp* %34, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %13

44:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @pmic8xxx_col_state(%struct.pmic8xxx_kp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
