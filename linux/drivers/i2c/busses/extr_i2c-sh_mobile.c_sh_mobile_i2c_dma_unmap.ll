; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i64, %struct.TYPE_4__*, i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.TYPE_4__ = type { i32 }
%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DMA_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_i2c_dma_unmap(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca %struct.sh_mobile_i2c_data*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %2, align 8
  %4 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %5 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %11 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %10, i32 0, i32 4
  %12 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %15 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %14, i32 0, i32 3
  %16 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi %struct.dma_chan* [ %12, %9 ], [ %16, %13 ]
  store %struct.dma_chan* %18, %struct.dma_chan** %3, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %25 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %24, i32 0, i32 2
  %26 = call i32 @sg_dma_address(i32* %25)
  %27 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %28 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %33 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dma_unmap_single(i32 %23, i32 %26, i32 %31, i64 %34)
  %36 = load i64, i64* @DMA_NONE, align 8
  %37 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i64) #1

declare dso_local i32 @sg_dma_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
