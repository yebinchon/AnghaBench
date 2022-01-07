; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_fi2c_priv = type { i64, i32 }

@UNIPHIER_FI2C_INT_STOP = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_CR_MST = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_CR_STO = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_fi2c_priv*)* @uniphier_fi2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_fi2c_stop(%struct.uniphier_fi2c_priv* %0) #0 {
  %2 = alloca %struct.uniphier_fi2c_priv*, align 8
  store %struct.uniphier_fi2c_priv* %0, %struct.uniphier_fi2c_priv** %2, align 8
  %3 = load i32, i32* @UNIPHIER_FI2C_INT_STOP, align 4
  %4 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %5 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 8
  %8 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %9 = call i32 @uniphier_fi2c_set_irqs(%struct.uniphier_fi2c_priv* %8)
  %10 = load i32, i32* @UNIPHIER_FI2C_CR_MST, align 4
  %11 = load i32, i32* @UNIPHIER_FI2C_CR_STO, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %14 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UNIPHIER_FI2C_CR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  ret void
}

declare dso_local i32 @uniphier_fi2c_set_irqs(%struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
