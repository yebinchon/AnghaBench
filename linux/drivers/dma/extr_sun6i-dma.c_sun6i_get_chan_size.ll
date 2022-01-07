; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_get_chan_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_get_chan_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_pchan = type { i64, %struct.sun6i_desc* }
%struct.sun6i_desc = type { %struct.sun6i_dma_lli* }
%struct.sun6i_dma_lli = type { i64, i64, %struct.sun6i_dma_lli* }

@DMA_CHAN_LLI_ADDR = common dso_local global i64 0, align 8
@DMA_CHAN_CUR_CNT = common dso_local global i64 0, align 8
@LLI_LAST_ITEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sun6i_pchan*)* @sun6i_get_chan_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun6i_get_chan_size(%struct.sun6i_pchan* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sun6i_pchan*, align 8
  %4 = alloca %struct.sun6i_desc*, align 8
  %5 = alloca %struct.sun6i_dma_lli*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sun6i_pchan* %0, %struct.sun6i_pchan** %3, align 8
  %8 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %3, align 8
  %9 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %8, i32 0, i32 1
  %10 = load %struct.sun6i_desc*, %struct.sun6i_desc** %9, align 8
  store %struct.sun6i_desc* %10, %struct.sun6i_desc** %4, align 8
  %11 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %3, align 8
  %12 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMA_CHAN_LLI_ADDR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i8* @readl(i64 %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %3, align 8
  %19 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMA_CHAN_CUR_CNT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i8* @readl(i64 %22)
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @LLI_LAST_ITEM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %2, align 8
  br label %68

30:                                               ; preds = %1
  %31 = load %struct.sun6i_desc*, %struct.sun6i_desc** %4, align 8
  %32 = getelementptr inbounds %struct.sun6i_desc, %struct.sun6i_desc* %31, i32 0, i32 0
  %33 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %32, align 8
  store %struct.sun6i_dma_lli* %33, %struct.sun6i_dma_lli** %5, align 8
  br label %34

34:                                               ; preds = %62, %30
  %35 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %36 = icmp ne %struct.sun6i_dma_lli* %35, null
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %39 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %45 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %44, i32 0, i32 2
  %46 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %45, align 8
  store %struct.sun6i_dma_lli* %46, %struct.sun6i_dma_lli** %5, align 8
  br label %47

47:                                               ; preds = %56, %43
  %48 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %49 = icmp ne %struct.sun6i_dma_lli* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %52 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %50
  %57 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %58 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %57, i32 0, i32 2
  %59 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %58, align 8
  store %struct.sun6i_dma_lli* %59, %struct.sun6i_dma_lli** %5, align 8
  br label %47

60:                                               ; preds = %47
  br label %66

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %64 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %63, i32 0, i32 2
  %65 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %64, align 8
  store %struct.sun6i_dma_lli* %65, %struct.sun6i_dma_lli** %5, align 8
  br label %34

66:                                               ; preds = %60, %34
  %67 = load i64, i64* %6, align 8
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %66, %28
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
