; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32, i32, i32 }
%struct.dma_resv_list = type { i32 }
%struct.dma_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_resv_fini(%struct.dma_resv* %0) #0 {
  %2 = alloca %struct.dma_resv*, align 8
  %3 = alloca %struct.dma_resv_list*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %0, %struct.dma_resv** %2, align 8
  %5 = load %struct.dma_resv*, %struct.dma_resv** %2, align 8
  %6 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @rcu_dereference_protected(i32 %7, i32 1)
  %9 = bitcast i8* %8 to %struct.dma_fence*
  store %struct.dma_fence* %9, %struct.dma_fence** %4, align 8
  %10 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %11 = icmp ne %struct.dma_fence* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %14 = call i32 @dma_fence_put(%struct.dma_fence* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.dma_resv*, %struct.dma_resv** %2, align 8
  %17 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @rcu_dereference_protected(i32 %18, i32 1)
  %20 = bitcast i8* %19 to %struct.dma_resv_list*
  store %struct.dma_resv_list* %20, %struct.dma_resv_list** %3, align 8
  %21 = load %struct.dma_resv_list*, %struct.dma_resv_list** %3, align 8
  %22 = call i32 @dma_resv_list_free(%struct.dma_resv_list* %21)
  %23 = load %struct.dma_resv*, %struct.dma_resv** %2, align 8
  %24 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %23, i32 0, i32 0
  %25 = call i32 @ww_mutex_destroy(i32* %24)
  ret void
}

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @dma_resv_list_free(%struct.dma_resv_list*) #1

declare dso_local i32 @ww_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
