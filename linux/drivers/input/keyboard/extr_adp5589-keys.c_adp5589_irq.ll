; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5589_kpad = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADP5589_5_INT_STATUS = common dso_local global i32 0, align 4
@OVRFLOW_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Event Overflow Error\0A\00", align 1
@EVENT_INT = common dso_local global i32 0, align 4
@ADP5589_5_STATUS = common dso_local global i32 0, align 4
@KEC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @adp5589_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5589_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.adp5589_kpad*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.adp5589_kpad*
  store %struct.adp5589_kpad* %10, %struct.adp5589_kpad** %5, align 8
  %11 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %5, align 8
  %12 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %11, i32 0, i32 1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = load i32, i32* @ADP5589_5_INT_STATUS, align 4
  %16 = call i32 @adp5589_read(%struct.i2c_client* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @OVRFLOW_INT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @EVENT_INT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = load i32, i32* @ADP5589_5_STATUS, align 4
  %33 = call i32 @adp5589_read(%struct.i2c_client* %31, i32 %32)
  %34 = load i32, i32* @KEC, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @adp5589_report_events(%struct.adp5589_kpad* %39, i32 %40)
  %42 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %5, align 8
  %43 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @input_sync(i32 %44)
  br label %46

46:                                               ; preds = %38, %30
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %49 = load i32, i32* @ADP5589_5_INT_STATUS, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @adp5589_write(%struct.i2c_client* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @adp5589_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @adp5589_report_events(%struct.adp5589_kpad*, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @adp5589_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
