; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.mpc_dma = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mpc_dma*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.mpc_dma* @dev_get_drvdata(%struct.device* %7)
  store %struct.mpc_dma* %8, %struct.mpc_dma** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @of_dma_controller_free(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %20 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %19, i32 0, i32 4
  %21 = call i32 @dma_async_device_unregister(i32* %20)
  %22 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %23 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %28 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.mpc_dma* %30)
  %32 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %33 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @irq_dispose_mapping(i32 %34)
  br label %36

36:                                               ; preds = %26, %18
  %37 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %38 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %41 = call i32 @free_irq(i32 %39, %struct.mpc_dma* %40)
  %42 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %43 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @irq_dispose_mapping(i32 %44)
  %46 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %47 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %46, i32 0, i32 0
  %48 = call i32 @tasklet_kill(i32* %47)
  ret i32 0
}

declare dso_local %struct.mpc_dma* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_dma_controller_free(i64) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.mpc_dma*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
