; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_add_shared_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_add_shared_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32 }
%struct.dma_fence = type { i64 }
%struct.dma_resv_list = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_resv_add_shared_fence(%struct.dma_resv* %0, %struct.dma_fence* %1) #0 {
  %3 = alloca %struct.dma_resv*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.dma_resv_list*, align 8
  %6 = alloca %struct.dma_fence*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dma_resv* %0, %struct.dma_resv** %3, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %4, align 8
  %9 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %10 = call i32 @dma_fence_get(%struct.dma_fence* %9)
  %11 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %12 = call i32 @dma_resv_assert_held(%struct.dma_resv* %11)
  %13 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %14 = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %13)
  store %struct.dma_resv_list* %14, %struct.dma_resv_list** %5, align 8
  %15 = load %struct.dma_resv_list*, %struct.dma_resv_list** %5, align 8
  %16 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = call i32 (...) @preempt_disable()
  %19 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %20 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %19, i32 0, i32 0
  %21 = call i32 @write_seqcount_begin(i32* %20)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %50, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.dma_resv_list*, %struct.dma_resv_list** %5, align 8
  %28 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %35 = call i32 @dma_resv_held(%struct.dma_resv* %34)
  %36 = call %struct.dma_fence* @rcu_dereference_protected(i32 %33, i32 %35)
  store %struct.dma_fence* %36, %struct.dma_fence** %6, align 8
  %37 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %38 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %41 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %26
  %45 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %46 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %26
  br label %65

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load %struct.dma_resv_list*, %struct.dma_resv_list** %5, align 8
  %55 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dma_resv_list*, %struct.dma_resv_list** %5, align 8
  %58 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp uge i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  store %struct.dma_fence* null, %struct.dma_fence** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %53, %48
  %66 = load %struct.dma_resv_list*, %struct.dma_resv_list** %5, align 8
  %67 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %74 = call i32 @RCU_INIT_POINTER(i32 %72, %struct.dma_fence* %73)
  %75 = load %struct.dma_resv_list*, %struct.dma_resv_list** %5, align 8
  %76 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @smp_store_mb(i32 %77, i32 %78)
  %80 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %81 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %80, i32 0, i32 0
  %82 = call i32 @write_seqcount_end(i32* %81)
  %83 = call i32 (...) @preempt_enable()
  %84 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %85 = call i32 @dma_fence_put(%struct.dma_fence* %84)
  ret void
}

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @dma_resv_assert_held(%struct.dma_resv*) #1

declare dso_local %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dma_resv_held(%struct.dma_resv*) #1

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.dma_fence*) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
