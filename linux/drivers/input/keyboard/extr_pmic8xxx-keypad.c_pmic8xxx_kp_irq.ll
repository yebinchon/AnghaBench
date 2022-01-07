; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_kp = type { i32, i32 }

@KEYP_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to read keyp_ctrl register\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@KEYP_CTRL_EVNTS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to scan matrix\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pmic8xxx_kp_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_kp_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pmic8xxx_kp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pmic8xxx_kp*
  store %struct.pmic8xxx_kp* %11, %struct.pmic8xxx_kp** %6, align 8
  %12 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %6, align 8
  %13 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @KEYP_CTRL, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %6, align 8
  %21 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @KEYP_CTRL_EVNTS_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %6, align 8
  %36 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %25
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
