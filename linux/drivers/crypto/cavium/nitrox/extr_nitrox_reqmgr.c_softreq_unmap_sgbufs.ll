; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_softreq_unmap_sgbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_softreq_unmap_sgbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_softreq = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.nitrox_device* }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32 }
%struct.nitrox_device = type { i32 }
%struct.device = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_softreq*)* @softreq_unmap_sgbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @softreq_unmap_sgbufs(%struct.nitrox_softreq* %0) #0 {
  %2 = alloca %struct.nitrox_softreq*, align 8
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.nitrox_softreq* %0, %struct.nitrox_softreq** %2, align 8
  %5 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %6 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %5, i32 0, i32 2
  %7 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  store %struct.nitrox_device* %7, %struct.nitrox_device** %3, align 8
  %8 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %9 = call %struct.device* @DEV(%struct.nitrox_device* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %12 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %16 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %20 = call i32 @dma_unmap_sg(%struct.device* %10, i32* %14, i32 %18, i32 %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %23 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %27 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = call i32 @dma_unmap_single(%struct.device* %21, i32 %25, i32 %29, i32 %30)
  %32 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %33 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %38 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %41 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %45 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %49 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %53 = call i32 @dma_unmap_sg(%struct.device* %43, i32* %47, i32 %51, i32 %52)
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %56 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %60 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @dma_unmap_single(%struct.device* %54, i32 %58, i32 %62, i32 %63)
  %65 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %66 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @kfree(i32 %68)
  %70 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %71 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %2, align 8
  %74 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  ret void
}

declare dso_local %struct.device* @DEV(%struct.nitrox_device*) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
