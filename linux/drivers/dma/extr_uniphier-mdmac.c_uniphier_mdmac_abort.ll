; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_mdmac_chan = type { i64, i32, %struct.uniphier_mdmac_device* }
%struct.uniphier_mdmac_device = type { i64 }

@UNIPHIER_MDMAC_CH_IRQ__ABORT = common dso_local global i32 0, align 4
@UNIPHIER_MDMAC_CH_IRQ_REQ = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CMD_ABORT = common dso_local global i32 0, align 4
@UNIPHIER_MDMAC_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_mdmac_chan*)* @uniphier_mdmac_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_mdmac_abort(%struct.uniphier_mdmac_chan* %0) #0 {
  %2 = alloca %struct.uniphier_mdmac_chan*, align 8
  %3 = alloca %struct.uniphier_mdmac_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uniphier_mdmac_chan* %0, %struct.uniphier_mdmac_chan** %2, align 8
  %6 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %2, align 8
  %7 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %6, i32 0, i32 2
  %8 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %7, align 8
  store %struct.uniphier_mdmac_device* %8, %struct.uniphier_mdmac_device** %3, align 8
  %9 = load i32, i32* @UNIPHIER_MDMAC_CH_IRQ__ABORT, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %2, align 8
  %12 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UNIPHIER_MDMAC_CH_IRQ_REQ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load i32, i32* @UNIPHIER_MDMAC_CMD_ABORT, align 4
  %18 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %2, align 8
  %19 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @BIT(i32 %20)
  %22 = or i32 %17, %21
  %23 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %3, align 8
  %24 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UNIPHIER_MDMAC_CMD, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %2, align 8
  %30 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UNIPHIER_MDMAC_CH_IRQ_REQ, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @readl_poll_timeout(i64 %33, i32 %34, i32 %37, i32 0, i32 20)
  ret i32 %38
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
