; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_intctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_intctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi2c_imx_struct = type { i64 }

@LPI2C_MIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpi2c_imx_struct*, i32)* @lpi2c_imx_intctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpi2c_imx_intctrl(%struct.lpi2c_imx_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.lpi2c_imx_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.lpi2c_imx_struct* %0, %struct.lpi2c_imx_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %7 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LPI2C_MIER, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
