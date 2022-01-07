; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_slave_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32 }
%struct.mdc_chan = type { %struct.TYPE_2__, %struct.dma_slave_config }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @mdc_slave_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc_slave_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.dma_slave_config*, align 8
  %5 = alloca %struct.mdc_chan*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %4, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.mdc_chan* @to_mdc_chan(%struct.dma_chan* %7)
  store %struct.mdc_chan* %8, %struct.mdc_chan** %5, align 8
  %9 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %10 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %15 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %14, i32 0, i32 1
  %16 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %17 = bitcast %struct.dma_slave_config* %15 to i8*
  %18 = bitcast %struct.dma_slave_config* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %20 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  ret i32 0
}

declare dso_local %struct.mdc_chan* @to_mdc_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
