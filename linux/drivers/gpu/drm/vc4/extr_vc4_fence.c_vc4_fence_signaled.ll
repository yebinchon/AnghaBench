; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_fence.c_vc4_fence_signaled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_fence.c_vc4_fence_signaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.vc4_fence = type { i64, i32 }
%struct.vc4_dev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @vc4_fence_signaled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_fence_signaled(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.vc4_fence*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %5 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %6 = call %struct.vc4_fence* @to_vc4_fence(%struct.dma_fence* %5)
  store %struct.vc4_fence* %6, %struct.vc4_fence** %3, align 8
  %7 = load %struct.vc4_fence*, %struct.vc4_fence** %3, align 8
  %8 = getelementptr inbounds %struct.vc4_fence, %struct.vc4_fence* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.vc4_dev* @to_vc4_dev(i32 %9)
  store %struct.vc4_dev* %10, %struct.vc4_dev** %4, align 8
  %11 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %12 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vc4_fence*, %struct.vc4_fence** %3, align 8
  %15 = getelementptr inbounds %struct.vc4_fence, %struct.vc4_fence* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local %struct.vc4_fence* @to_vc4_fence(%struct.dma_fence*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
