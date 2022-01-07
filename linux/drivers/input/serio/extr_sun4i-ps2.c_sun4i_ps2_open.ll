; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.sun4i_ps2data* }
%struct.sun4i_ps2data = type { i32, i64, i32 }

@PS2_LCTL_STOPERREN = common dso_local global i32 0, align 4
@PS2_LCTL_ACKERREN = common dso_local global i32 0, align 4
@PS2_LCTL_PARERREN = common dso_local global i32 0, align 4
@PS2_LCTL_RXDTOEN = common dso_local global i32 0, align 4
@PS2_REG_LCTL = common dso_local global i64 0, align 8
@PS2_FCTL_TXRST = common dso_local global i32 0, align 4
@PS2_FCTL_RXRST = common dso_local global i32 0, align 4
@PS2_FCTL_TXUFIEN = common dso_local global i32 0, align 4
@PS2_FCTL_TXOFIEN = common dso_local global i32 0, align 4
@PS2_FCTL_RXUFIEN = common dso_local global i32 0, align 4
@PS2_FCTL_RXOFIEN = common dso_local global i32 0, align 4
@PS2_FCTL_RXRDYIEN = common dso_local global i32 0, align 4
@PS2_REG_FCTL = common dso_local global i64 0, align 8
@PS2_SAMPLE_CLK = common dso_local global i32 0, align 4
@PS2_SCLK = common dso_local global i32 0, align 4
@PS2_REG_CLKDR = common dso_local global i64 0, align 8
@PS2_GCTL_RESET = common dso_local global i32 0, align 4
@PS2_GCTL_INTEN = common dso_local global i32 0, align 4
@PS2_GCTL_MASTER = common dso_local global i32 0, align 4
@PS2_GCTL_BUSEN = common dso_local global i32 0, align 4
@PS2_REG_GCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*)* @sun4i_ps2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_ps2_open(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.sun4i_ps2data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %9 = load %struct.serio*, %struct.serio** %2, align 8
  %10 = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 0
  %11 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %10, align 8
  store %struct.sun4i_ps2data* %11, %struct.sun4i_ps2data** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @PS2_LCTL_STOPERREN, align 4
  %13 = load i32, i32* @PS2_LCTL_ACKERREN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PS2_LCTL_PARERREN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PS2_LCTL_RXDTOEN, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %21 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PS2_REG_LCTL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @PS2_FCTL_TXRST, align 4
  %27 = load i32, i32* @PS2_FCTL_RXRST, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PS2_FCTL_TXUFIEN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PS2_FCTL_TXOFIEN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PS2_FCTL_RXUFIEN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PS2_FCTL_RXOFIEN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PS2_FCTL_RXRDYIEN, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %41 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PS2_REG_FCTL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %47 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_get_rate(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @PS2_SAMPLE_CLK, align 4
  %52 = sdiv i32 %50, %51
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @PS2_SAMPLE_CLK, align 4
  %55 = load i32, i32* @PS2_SCLK, align 4
  %56 = sdiv i32 %54, %55
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 %58, 8
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %64 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PS2_REG_CLKDR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load i32, i32* @PS2_GCTL_RESET, align 4
  %70 = load i32, i32* @PS2_GCTL_INTEN, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @PS2_GCTL_MASTER, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @PS2_GCTL_BUSEN, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %77 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %76, i32 0, i32 0
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %82 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PS2_REG_GCTL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %88 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %87, i32 0, i32 0
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
