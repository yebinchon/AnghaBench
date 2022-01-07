; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mv_xor_v2_device = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MV_XOR_V2_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv_xor_v2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_v2_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mv_xor_v2_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.mv_xor_v2_device* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.mv_xor_v2_device* %5, %struct.mv_xor_v2_device** %3, align 8
  %6 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %3, align 8
  %7 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %6, i32 0, i32 6
  %8 = call i32 @dma_async_device_unregister(i32* %7)
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %3, align 8
  %12 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MV_XOR_V2_DESC_NUM, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %3, align 8
  %17 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %3, align 8
  %20 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dma_free_coherent(i32* %10, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %3, align 8
  %26 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %3, align 8
  %31 = call i32 @devm_free_irq(i32* %24, i32 %29, %struct.mv_xor_v2_device* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @platform_msi_domain_free_irqs(i32* %33)
  %35 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %3, align 8
  %36 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %35, i32 0, i32 2
  %37 = call i32 @tasklet_kill(i32* %36)
  %38 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %3, align 8
  %39 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_disable_unprepare(i32 %40)
  ret i32 0
}

declare dso_local %struct.mv_xor_v2_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.mv_xor_v2_device*) #1

declare dso_local i32 @platform_msi_domain_free_irqs(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
