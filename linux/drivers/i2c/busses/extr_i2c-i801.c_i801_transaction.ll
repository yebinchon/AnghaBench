; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32, i32, %struct.TYPE_2__*, i32, %struct.i2c_adapter }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }

@FEATURE_IRQ = common dso_local global i32 0, align 4
@SMBHSTCNT_INTREN = common dso_local global i32 0, align 4
@SMBHSTCNT_START = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Timeout waiting for interrupt!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*, i32)* @i801_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_transaction(%struct.i801_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i801_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  store %struct.i801_priv* %0, %struct.i801_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %10 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %9, i32 0, i32 4
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %8, align 8
  %11 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %12 = call i32 @i801_check_pre(%struct.i801_priv* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %19 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FEATURE_IRQ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SMBHSTCNT_INTREN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SMBHSTCNT_START, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %31 = call i32 @SMBHSTCNT(%struct.i801_priv* %30)
  %32 = call i32 @outb_p(i32 %29, i32 %31)
  %33 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %34 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %37 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wait_event_timeout(i32 %35, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %24
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %49 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %45, %24
  %54 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %55 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @i801_check_post(%struct.i801_priv* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %71

59:                                               ; preds = %17
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SMBHSTCNT_START, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %64 = call i32 @SMBHSTCNT(%struct.i801_priv* %63)
  %65 = call i32 @outb_p(i32 %62, i32 %64)
  %66 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %67 = call i32 @i801_wait_intr(%struct.i801_priv* %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @i801_check_post(%struct.i801_priv* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %59, %53, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @i801_check_pre(%struct.i801_priv*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTCNT(%struct.i801_priv*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i801_check_post(%struct.i801_priv*, i32) #1

declare dso_local i32 @i801_wait_intr(%struct.i801_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
