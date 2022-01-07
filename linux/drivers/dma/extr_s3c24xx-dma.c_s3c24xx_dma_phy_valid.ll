; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_phy_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_phy_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_dma_chan = type { i64, i32, %struct.s3c24xx_dma_engine* }
%struct.s3c24xx_dma_engine = type { %struct.TYPE_2__*, %struct.s3c24xx_dma_platdata* }
%struct.TYPE_2__ = type { i64 }
%struct.s3c24xx_dma_platdata = type { %struct.s3c24xx_dma_channel* }
%struct.s3c24xx_dma_channel = type { i32 }
%struct.s3c24xx_dma_phy = type { i32 }

@S3C24XX_CHANSEL_WIDTH = common dso_local global i32 0, align 4
@S3C24XX_CHANSEL_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_phy*)* @s3c24xx_dma_phy_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_dma_phy_valid(%struct.s3c24xx_dma_chan* %0, %struct.s3c24xx_dma_phy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c24xx_dma_chan*, align 8
  %5 = alloca %struct.s3c24xx_dma_phy*, align 8
  %6 = alloca %struct.s3c24xx_dma_engine*, align 8
  %7 = alloca %struct.s3c24xx_dma_platdata*, align 8
  %8 = alloca %struct.s3c24xx_dma_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.s3c24xx_dma_chan* %0, %struct.s3c24xx_dma_chan** %4, align 8
  store %struct.s3c24xx_dma_phy* %1, %struct.s3c24xx_dma_phy** %5, align 8
  %10 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %10, i32 0, i32 2
  %12 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %11, align 8
  store %struct.s3c24xx_dma_engine* %12, %struct.s3c24xx_dma_engine** %6, align 8
  %13 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %6, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %13, i32 0, i32 1
  %15 = load %struct.s3c24xx_dma_platdata*, %struct.s3c24xx_dma_platdata** %14, align 8
  store %struct.s3c24xx_dma_platdata* %15, %struct.s3c24xx_dma_platdata** %7, align 8
  %16 = load %struct.s3c24xx_dma_platdata*, %struct.s3c24xx_dma_platdata** %7, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_dma_platdata, %struct.s3c24xx_dma_platdata* %16, i32 0, i32 0
  %18 = load %struct.s3c24xx_dma_channel*, %struct.s3c24xx_dma_channel** %17, align 8
  %19 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %4, align 8
  %20 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_dma_channel, %struct.s3c24xx_dma_channel* %18, i64 %21
  store %struct.s3c24xx_dma_channel* %22, %struct.s3c24xx_dma_channel** %8, align 8
  %23 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %6, align 8
  %30 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %52

36:                                               ; preds = %28
  %37 = load %struct.s3c24xx_dma_channel*, %struct.s3c24xx_dma_channel** %8, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_dma_channel, %struct.s3c24xx_dma_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %41 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @S3C24XX_CHANSEL_WIDTH, align 4
  %44 = mul nsw i32 %42, %43
  %45 = ashr i32 %39, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @S3C24XX_CHANSEL_VALID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %36, %35, %27
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
