; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_twi_dev = type { i32, i32, %struct.at91_twi_dma }
%struct.at91_twi_dma = type { i32, i64, i32, i32*, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_twi_dev*)* @at91_twi_dma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_twi_dma_cleanup(%struct.at91_twi_dev* %0) #0 {
  %2 = alloca %struct.at91_twi_dev*, align 8
  %3 = alloca %struct.at91_twi_dma*, align 8
  store %struct.at91_twi_dev* %0, %struct.at91_twi_dev** %2, align 8
  %4 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %5 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %4, i32 0, i32 2
  store %struct.at91_twi_dma* %5, %struct.at91_twi_dma** %3, align 8
  %6 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %7 = call i32 @at91_twi_irq_save(%struct.at91_twi_dev* %6)
  %8 = load %struct.at91_twi_dma*, %struct.at91_twi_dma** %3, align 8
  %9 = getelementptr inbounds %struct.at91_twi_dma, %struct.at91_twi_dma* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.at91_twi_dma*, %struct.at91_twi_dma** %3, align 8
  %14 = getelementptr inbounds %struct.at91_twi_dma, %struct.at91_twi_dma* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.at91_twi_dma*, %struct.at91_twi_dma** %3, align 8
  %20 = getelementptr inbounds %struct.at91_twi_dma, %struct.at91_twi_dma* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dmaengine_terminate_all(i32 %21)
  br label %28

23:                                               ; preds = %12
  %24 = load %struct.at91_twi_dma*, %struct.at91_twi_dma** %3, align 8
  %25 = getelementptr inbounds %struct.at91_twi_dma, %struct.at91_twi_dma* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dmaengine_terminate_all(i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.at91_twi_dma*, %struct.at91_twi_dma** %3, align 8
  %30 = getelementptr inbounds %struct.at91_twi_dma, %struct.at91_twi_dma* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.at91_twi_dma*, %struct.at91_twi_dma** %3, align 8
  %33 = getelementptr inbounds %struct.at91_twi_dma, %struct.at91_twi_dma* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %38 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.at91_twi_dma*, %struct.at91_twi_dma** %3, align 8
  %41 = getelementptr inbounds %struct.at91_twi_dma, %struct.at91_twi_dma* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i32 @sg_dma_address(i32* %43)
  %45 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %46 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.at91_twi_dma*, %struct.at91_twi_dma** %3, align 8
  %49 = getelementptr inbounds %struct.at91_twi_dma, %struct.at91_twi_dma* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dma_unmap_single(i32 %39, i32 %44, i32 %47, i64 %50)
  %52 = load %struct.at91_twi_dma*, %struct.at91_twi_dma** %3, align 8
  %53 = getelementptr inbounds %struct.at91_twi_dma, %struct.at91_twi_dma* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %36, %31
  %55 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %56 = call i32 @at91_twi_irq_restore(%struct.at91_twi_dev* %55)
  ret void
}

declare dso_local i32 @at91_twi_irq_save(%struct.at91_twi_dev*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i64) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @at91_twi_irq_restore(%struct.at91_twi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
