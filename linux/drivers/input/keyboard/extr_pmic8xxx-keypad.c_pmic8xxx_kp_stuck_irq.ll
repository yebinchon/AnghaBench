; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_stuck_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_stuck_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_kp = type { i32, i32 }

@PM8XXX_MAX_ROWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read keypad matrix\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pmic8xxx_kp_stuck_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_kp_stuck_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmic8xxx_kp*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @PM8XXX_MAX_ROWS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @PM8XXX_MAX_ROWS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.pmic8xxx_kp*
  store %struct.pmic8xxx_kp* %20, %struct.pmic8xxx_kp** %10, align 8
  %21 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %10, align 8
  %22 = call i32 @pmic8xxx_kp_read_matrix(%struct.pmic8xxx_kp* %21, i32* %15, i32* %18)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %10, align 8
  %27 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %10, align 8
  %33 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %10, align 8
  %34 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp* %32, i32* %15, i32 %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %38

38:                                               ; preds = %31, %25
  %39 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pmic8xxx_kp_read_matrix(%struct.pmic8xxx_kp*, i32*, i32*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @__pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
