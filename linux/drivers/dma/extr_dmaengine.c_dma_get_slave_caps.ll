; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_get_slave_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_get_slave_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_get_slave_caps(%struct.dma_chan* %0, %struct.dma_slave_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_caps*, align 8
  %6 = alloca %struct.dma_device*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_caps* %1, %struct.dma_slave_caps** %5, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %8 = icmp ne %struct.dma_chan* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %11 = icmp ne %struct.dma_slave_caps* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %103

15:                                               ; preds = %9
  %16 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %17 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %16, i32 0, i32 0
  %18 = load %struct.dma_device*, %struct.dma_device** %17, align 8
  store %struct.dma_device* %18, %struct.dma_device** %6, align 8
  %19 = load i32, i32* @DMA_SLAVE, align 4
  %20 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %21 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @test_bit(i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @DMA_CYCLIC, align 4
  %28 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %29 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @test_bit(i32 %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %103

37:                                               ; preds = %26, %15
  %38 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %39 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %103

45:                                               ; preds = %37
  %46 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %47 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %50 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %52 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %55 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %57 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %60 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %59, i32 0, i32 6
  store i64 %58, i64* %60, align 8
  %61 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %62 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %65 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %67 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %70 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %72 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %75 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %77 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %84 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %86 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %93 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %95 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load %struct.dma_slave_caps*, %struct.dma_slave_caps** %5, align 8
  %102 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %45, %42, %34, %12
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
