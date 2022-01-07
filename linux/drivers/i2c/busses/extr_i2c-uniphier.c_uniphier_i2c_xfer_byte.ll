; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_xfer_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_xfer_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32 }
%struct.uniphier_i2c_priv = type { i64, i32 }

@UNIPHIER_I2C_DTRM_IRQEN = common dso_local global i32 0, align 4
@UNIPHIER_I2C_DTRM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"transaction timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@UNIPHIER_I2C_DREC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32*)* @uniphier_i2c_xfer_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_i2c_xfer_byte(%struct.i2c_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.uniphier_i2c_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.uniphier_i2c_priv* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.uniphier_i2c_priv* %12, %struct.uniphier_i2c_priv** %8, align 8
  %13 = load %struct.uniphier_i2c_priv*, %struct.uniphier_i2c_priv** %8, align 8
  %14 = getelementptr inbounds %struct.uniphier_i2c_priv, %struct.uniphier_i2c_priv* %13, i32 0, i32 1
  %15 = call i32 @reinit_completion(i32* %14)
  %16 = load i32, i32* @UNIPHIER_I2C_DTRM_IRQEN, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.uniphier_i2c_priv*, %struct.uniphier_i2c_priv** %8, align 8
  %21 = getelementptr inbounds %struct.uniphier_i2c_priv, %struct.uniphier_i2c_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UNIPHIER_I2C_DTRM, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.uniphier_i2c_priv*, %struct.uniphier_i2c_priv** %8, align 8
  %27 = getelementptr inbounds %struct.uniphier_i2c_priv, %struct.uniphier_i2c_priv* %26, i32 0, i32 1
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @wait_for_completion_timeout(i32* %27, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %57

44:                                               ; preds = %3
  %45 = load %struct.uniphier_i2c_priv*, %struct.uniphier_i2c_priv** %8, align 8
  %46 = getelementptr inbounds %struct.uniphier_i2c_priv, %struct.uniphier_i2c_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UNIPHIER_I2C_DREC, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %44
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.uniphier_i2c_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
