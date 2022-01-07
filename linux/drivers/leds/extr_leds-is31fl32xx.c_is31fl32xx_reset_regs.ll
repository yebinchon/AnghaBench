; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_reset_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_reset_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.is31fl32xx_priv = type { %struct.is31fl32xx_chipdef* }
%struct.is31fl32xx_chipdef = type { i64, {}* }

@IS31FL32XX_REG_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.is31fl32xx_priv*)* @is31fl32xx_reset_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl32xx_reset_regs(%struct.is31fl32xx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.is31fl32xx_priv*, align 8
  %4 = alloca %struct.is31fl32xx_chipdef*, align 8
  %5 = alloca i32, align 4
  store %struct.is31fl32xx_priv* %0, %struct.is31fl32xx_priv** %3, align 8
  %6 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %7 = getelementptr inbounds %struct.is31fl32xx_priv, %struct.is31fl32xx_priv* %6, i32 0, i32 0
  %8 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %7, align 8
  store %struct.is31fl32xx_chipdef* %8, %struct.is31fl32xx_chipdef** %4, align 8
  %9 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %10 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IS31FL32XX_REG_NONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %16 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %17 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %15, i64 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %27 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %26, i32 0, i32 1
  %28 = bitcast {}** %27 to i32 (%struct.is31fl32xx_priv*)**
  %29 = load i32 (%struct.is31fl32xx_priv*)*, i32 (%struct.is31fl32xx_priv*)** %28, align 8
  %30 = icmp ne i32 (%struct.is31fl32xx_priv*)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %33 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %32, i32 0, i32 1
  %34 = bitcast {}** %33 to i32 (%struct.is31fl32xx_priv*)**
  %35 = load i32 (%struct.is31fl32xx_priv*)*, i32 (%struct.is31fl32xx_priv*)** %34, align 8
  %36 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %37 = call i32 %35(%struct.is31fl32xx_priv* %36)
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31, %22
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @is31fl32xx_write(%struct.is31fl32xx_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
