; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_i2c_common = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_i2c_common*)* @i2c_amd_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_amd_dma_unmap(%struct.amd_i2c_common* %0) #0 {
  %2 = alloca %struct.amd_i2c_common*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.amd_i2c_common* %0, %struct.amd_i2c_common** %2, align 8
  %5 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %6 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %12 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_M_RD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %4, align 4
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %27 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %30 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dma_unmap_single(%struct.device* %25, i32 %28, i32 %33, i32 %34)
  %36 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %37 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %40 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @i2c_put_dma_safe_msg_buf(i32 %38, %struct.TYPE_6__* %41, i32 1)
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @i2c_put_dma_safe_msg_buf(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
