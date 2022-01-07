; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32 }
%struct.k3_dma_chan = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DMA_SLAVE_BUSWIDTH_UNDEFINED = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@CX_CFG_DSTINCR = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@CX_CFG_SRCINCR = common dso_local global i32 0, align 4
@CX_CFG_MEM2PER = common dso_local global i32 0, align 4
@CX_CFG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_slave_config*)* @k3_dma_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k3_dma_config_write(%struct.dma_chan* %0, i32 %1, %struct.dma_slave_config* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_slave_config*, align 8
  %7 = alloca %struct.k3_dma_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dma_slave_config* %2, %struct.dma_slave_config** %6, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %12 = call %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan* %11)
  store %struct.k3_dma_chan* %12, %struct.k3_dma_chan** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load i32, i32* @CX_CFG_DSTINCR, align 4
  %19 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %7, align 8
  %20 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %22 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %7, align 8
  %25 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %30 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %52

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i32, i32* @CX_CFG_SRCINCR, align 4
  %38 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %7, align 8
  %39 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %7, align 8
  %44 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %46 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %49 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %36, %32
  br label %52

52:                                               ; preds = %51, %17
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %57 [
    i32 131, label %54
    i32 130, label %54
    i32 129, label %54
    i32 128, label %54
  ]

54:                                               ; preds = %52, %52, %52, %52
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @__ffs(i32 %55)
  store i32 %56, i32* %9, align 4
  br label %58

57:                                               ; preds = %52
  store i32 3, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 %59, 12
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %60, %62
  %64 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %7, align 8
  %65 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %71, 16
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %58
  store i32 15, i32* %9, align 4
  br label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %73
  %78 = load i32, i32* %9, align 4
  %79 = shl i32 %78, 20
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %80, 24
  %82 = or i32 %79, %81
  %83 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %7, align 8
  %84 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @CX_CFG_MEM2PER, align 4
  %88 = load i32, i32* @CX_CFG_EN, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %7, align 8
  %91 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %7, align 8
  %95 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 4
  %100 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %7, align 8
  %101 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  ret i32 0
}

declare dso_local %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan*) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
