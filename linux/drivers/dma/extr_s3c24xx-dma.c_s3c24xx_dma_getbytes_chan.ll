; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_getbytes_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_getbytes_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_dma_chan = type { %struct.s3c24xx_txd*, %struct.s3c24xx_dma_phy* }
%struct.s3c24xx_txd = type { i32 }
%struct.s3c24xx_dma_phy = type { i64 }

@S3C24XX_DSTAT = common dso_local global i64 0, align 8
@S3C24XX_DSTAT_CURRTC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_dma_chan*)* @s3c24xx_dma_getbytes_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_dma_getbytes_chan(%struct.s3c24xx_dma_chan* %0) #0 {
  %2 = alloca %struct.s3c24xx_dma_chan*, align 8
  %3 = alloca %struct.s3c24xx_dma_phy*, align 8
  %4 = alloca %struct.s3c24xx_txd*, align 8
  %5 = alloca i32, align 4
  store %struct.s3c24xx_dma_chan* %0, %struct.s3c24xx_dma_chan** %2, align 8
  %6 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %6, i32 0, i32 1
  %8 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %7, align 8
  store %struct.s3c24xx_dma_phy* %8, %struct.s3c24xx_dma_phy** %3, align 8
  %9 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %9, i32 0, i32 0
  %11 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %10, align 8
  store %struct.s3c24xx_txd* %11, %struct.s3c24xx_txd** %4, align 8
  %12 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %3, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @S3C24XX_DSTAT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = load i32, i32* @S3C24XX_DSTAT_CURRTC_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %4, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  ret i32 %24
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
