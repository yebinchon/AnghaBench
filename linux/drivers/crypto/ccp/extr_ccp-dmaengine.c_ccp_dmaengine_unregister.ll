; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dmaengine.c_ccp_dmaengine_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dmaengine.c_ccp_dmaengine_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i32, i32, %struct.dma_device }
%struct.dma_device = type { i32 }

@dmaengine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_dmaengine_unregister(%struct.ccp_device* %0) #0 {
  %2 = alloca %struct.ccp_device*, align 8
  %3 = alloca %struct.dma_device*, align 8
  store %struct.ccp_device* %0, %struct.ccp_device** %2, align 8
  %4 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %4, i32 0, i32 2
  store %struct.dma_device* %5, %struct.dma_device** %3, align 8
  %6 = load i32, i32* @dmaengine, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.dma_device*, %struct.dma_device** %3, align 8
  %11 = call i32 @dma_async_device_unregister(%struct.dma_device* %10)
  %12 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %13 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kmem_cache_destroy(i32 %14)
  %16 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %17 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kmem_cache_destroy(i32 %18)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @dma_async_device_unregister(%struct.dma_device*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
