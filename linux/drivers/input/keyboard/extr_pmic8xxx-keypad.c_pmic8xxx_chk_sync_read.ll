; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_chk_sync_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_chk_sync_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_kp = type { i32, i32 }

@KEYP_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error reading KEYP_SCAN reg, rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Error writing KEYP_SCAN reg, rc=%d\0A\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@KEYP_CLOCK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic8xxx_kp*)* @pmic8xxx_chk_sync_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_chk_sync_read(%struct.pmic8xxx_kp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmic8xxx_kp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pmic8xxx_kp* %0, %struct.pmic8xxx_kp** %3, align 8
  %6 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %3, align 8
  %7 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @KEYP_SCAN, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %3, align 8
  %15 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %3, align 8
  %24 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KEYP_SCAN, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @regmap_write(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %3, align 8
  %33 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %20
  %39 = load i32, i32* @USEC_PER_SEC, align 4
  %40 = load i32, i32* @KEYP_CLOCK_FREQ, align 4
  %41 = call i32 @DIV_ROUND_UP(i32 %39, i32 %40)
  %42 = mul nsw i32 2, %41
  %43 = add nsw i32 %42, 1
  %44 = call i32 @udelay(i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %38, %31, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
