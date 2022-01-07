; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rockchip_saradc.c_rockchip_saradc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rockchip_saradc.c_rockchip_saradc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_saradc = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@SARADC_DATA = common dso_local global i64 0, align 8
@SARADC_CTRL = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rockchip_saradc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_saradc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rockchip_saradc*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.rockchip_saradc*
  store %struct.rockchip_saradc* %7, %struct.rockchip_saradc** %5, align 8
  %8 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %5, align 8
  %9 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SARADC_DATA, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl_relaxed(i64 %12)
  %14 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %5, align 8
  %15 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %5, align 8
  %17 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 1
  %22 = call i32 @GENMASK(i64 %21, i32 0)
  %23 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %5, align 8
  %24 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %5, align 8
  %28 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SARADC_CTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 0, i64 %31)
  %33 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %5, align 8
  %34 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %33, i32 0, i32 0
  %35 = call i32 @complete(i32* %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
