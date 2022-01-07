; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_detect_ghost_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_detect_ghost_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_kp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"detected ghost key on row[%d] and row[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic8xxx_kp*, i32*)* @pmic8xxx_detect_ghost_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_detect_ghost_keys(%struct.pmic8xxx_kp* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmic8xxx_kp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pmic8xxx_kp* %0, %struct.pmic8xxx_kp** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %54, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %13 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %10
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %24 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %22, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @hweight16(i32 %29)
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %50

32:                                               ; preds = %16
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %44 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  store i32 1, i32* %3, align 4
  br label %58

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %10

57:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @hweight16(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
