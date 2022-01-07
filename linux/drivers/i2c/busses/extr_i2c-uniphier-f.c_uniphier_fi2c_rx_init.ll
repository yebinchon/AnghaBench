; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_fi2c_priv = type { i32, i32, i64, i32 }

@UNIPHIER_FI2C_RD = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_RBC = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_INT_RF = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_INT_RB = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_MANUAL_NACK = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_DTTX_CMD = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_DTTX_RD = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_DTTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_fi2c_priv*, i32)* @uniphier_fi2c_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_fi2c_rx_init(%struct.uniphier_fi2c_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.uniphier_fi2c_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.uniphier_fi2c_priv* %0, %struct.uniphier_fi2c_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @UNIPHIER_FI2C_RD, align 4
  %6 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %7 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %11 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 256
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %19 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %22 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UNIPHIER_FI2C_RBC, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* @UNIPHIER_FI2C_INT_RF, align 4
  %28 = load i32, i32* @UNIPHIER_FI2C_INT_RB, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %31 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %36 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UNIPHIER_FI2C_RBC, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 0, i64 %39)
  %41 = load i32, i32* @UNIPHIER_FI2C_MANUAL_NACK, align 4
  %42 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %43 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @UNIPHIER_FI2C_INT_RF, align 4
  %47 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %48 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %34, %17
  %52 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %53 = call i32 @uniphier_fi2c_set_irqs(%struct.uniphier_fi2c_priv* %52)
  %54 = load i32, i32* @UNIPHIER_FI2C_DTTX_CMD, align 4
  %55 = load i32, i32* @UNIPHIER_FI2C_DTTX_RD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %4, align 4
  %58 = shl i32 %57, 1
  %59 = or i32 %56, %58
  %60 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %61 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UNIPHIER_FI2C_DTTX, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @uniphier_fi2c_set_irqs(%struct.uniphier_fi2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
