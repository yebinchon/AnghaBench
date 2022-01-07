; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i64, i64, i32, i64, i64 }
%struct.dma_pl330_chan = type { %struct.TYPE_2__*, i8*, i8*, i64 }
%struct.TYPE_2__ = type { i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*, i32)* @pl330_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl330_config_write(%struct.dma_chan* %0, %struct.dma_slave_config* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_pl330_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan* %8)
  store %struct.dma_pl330_chan* %9, %struct.dma_pl330_chan** %7, align 8
  %10 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %7, align 8
  %11 = call i32 @pl330_unprep_slave_fifo(%struct.dma_pl330_chan* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %3
  %16 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %17 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %22 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %7, align 8
  %25 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %28 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %33 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @__ffs(i64 %34)
  %36 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %7, align 8
  %37 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %40 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %7, align 8
  %43 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @fixup_burst_len(i32 %41, i32 %46)
  %48 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %7, align 8
  %49 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %90

50:                                               ; preds = %3
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %56 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %61 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %7, align 8
  %64 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %67 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %72 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @__ffs(i64 %73)
  %75 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %7, align 8
  %76 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %79 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %7, align 8
  %82 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @fixup_burst_len(i32 %80, i32 %85)
  %87 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %7, align 8
  %88 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %77, %50
  br label %90

90:                                               ; preds = %89, %38
  ret i32 0
}

declare dso_local %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan*) #1

declare dso_local i32 @pl330_unprep_slave_fifo(%struct.dma_pl330_chan*) #1

declare dso_local i8* @__ffs(i64) #1

declare dso_local i8* @fixup_burst_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
