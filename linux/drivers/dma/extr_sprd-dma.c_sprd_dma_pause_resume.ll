; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_pause_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_pause_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_dma_chn = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sprd_dma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SPRD_DMA_PAUSE_CNT = common dso_local global i64 0, align 8
@SPRD_DMA_CHN_PAUSE = common dso_local global i64 0, align 8
@SPRD_DMA_PAUSE_EN = common dso_local global i32 0, align 4
@SPRD_DMA_PAUSE_STS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"pause dma controller timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_dma_chn*, i32)* @sprd_dma_pause_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_dma_pause_resume(%struct.sprd_dma_chn* %0, i32 %1) #0 {
  %3 = alloca %struct.sprd_dma_chn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_dma_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sprd_dma_chn* %0, %struct.sprd_dma_chn** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %9 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call %struct.sprd_dma_dev* @to_sprd_dma_dev(i32* %10)
  store %struct.sprd_dma_dev* %11, %struct.sprd_dma_dev** %5, align 8
  %12 = load i64, i64* @SPRD_DMA_PAUSE_CNT, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  %16 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %17 = load i64, i64* @SPRD_DMA_CHN_PAUSE, align 8
  %18 = load i32, i32* @SPRD_DMA_PAUSE_EN, align 4
  %19 = load i32, i32* @SPRD_DMA_PAUSE_EN, align 4
  %20 = call i32 @sprd_dma_chn_update(%struct.sprd_dma_chn* %16, i64 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %35, %15
  %22 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %23 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPRD_DMA_CHN_PAUSE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @readl(i64 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @SPRD_DMA_PAUSE_STS, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %39

33:                                               ; preds = %21
  %34 = call i32 (...) @cpu_relax()
  br label %35

35:                                               ; preds = %33
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %7, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %21, label %39

39:                                               ; preds = %35, %32
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %5, align 8
  %44 = getelementptr inbounds %struct.sprd_dma_dev, %struct.sprd_dma_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %42, %39
  br label %54

49:                                               ; preds = %2
  %50 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %51 = load i64, i64* @SPRD_DMA_CHN_PAUSE, align 8
  %52 = load i32, i32* @SPRD_DMA_PAUSE_EN, align 4
  %53 = call i32 @sprd_dma_chn_update(%struct.sprd_dma_chn* %50, i64 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %49, %48
  ret void
}

declare dso_local %struct.sprd_dma_dev* @to_sprd_dma_dev(i32*) #1

declare dso_local i32 @sprd_dma_chn_update(%struct.sprd_dma_chn*, i64, i32, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
