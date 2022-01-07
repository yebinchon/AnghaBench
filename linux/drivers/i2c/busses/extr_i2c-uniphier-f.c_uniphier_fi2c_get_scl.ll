; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_get_scl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_get_scl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.uniphier_fi2c_priv = type { i64 }

@UNIPHIER_FI2C_BM = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_BM_SCLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @uniphier_fi2c_get_scl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_fi2c_get_scl(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.uniphier_fi2c_priv*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %5 = call %struct.uniphier_fi2c_priv* @i2c_get_adapdata(%struct.i2c_adapter* %4)
  store %struct.uniphier_fi2c_priv* %5, %struct.uniphier_fi2c_priv** %3, align 8
  %6 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %3, align 8
  %7 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UNIPHIER_FI2C_BM, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  %12 = load i32, i32* @UNIPHIER_FI2C_BM_SCLS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local %struct.uniphier_fi2c_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
