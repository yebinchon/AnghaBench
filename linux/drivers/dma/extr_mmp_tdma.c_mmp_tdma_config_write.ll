; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32 }
%struct.mmp_tdma_chan = type { i32, i32, i32, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_slave_config*)* @mmp_tdma_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_tdma_config_write(%struct.dma_chan* %0, i32 %1, %struct.dma_slave_config* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_slave_config*, align 8
  %7 = alloca %struct.mmp_tdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dma_slave_config* %2, %struct.dma_slave_config** %6, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan* %8)
  store %struct.mmp_tdma_chan* %9, %struct.mmp_tdma_chan** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %15 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %7, align 8
  %18 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %20 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %7, align 8
  %23 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %25 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %7, align 8
  %28 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %45

29:                                               ; preds = %3
  %30 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %31 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %7, align 8
  %34 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %7, align 8
  %39 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %7, align 8
  %44 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %29, %13
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %7, align 8
  %48 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %50 = call i32 @mmp_tdma_config_chan(%struct.dma_chan* %49)
  ret i32 %50
}

declare dso_local %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @mmp_tdma_config_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
