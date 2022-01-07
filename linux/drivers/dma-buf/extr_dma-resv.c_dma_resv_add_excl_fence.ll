; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_add_excl_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_add_excl_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32, i32 }
%struct.dma_fence = type { i32 }
%struct.dma_resv_list = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_resv_add_excl_fence(%struct.dma_resv* %0, %struct.dma_fence* %1) #0 {
  %3 = alloca %struct.dma_resv*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca %struct.dma_resv_list*, align 8
  %7 = alloca i64, align 8
  store %struct.dma_resv* %0, %struct.dma_resv** %3, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %4, align 8
  %8 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %9 = call %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv* %8)
  store %struct.dma_fence* %9, %struct.dma_fence** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %11 = call i32 @dma_resv_assert_held(%struct.dma_resv* %10)
  %12 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %13 = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %12)
  store %struct.dma_resv_list* %13, %struct.dma_resv_list** %6, align 8
  %14 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %15 = icmp ne %struct.dma_resv_list* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %18 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %22 = icmp ne %struct.dma_fence* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %25 = call i32 @dma_fence_get(%struct.dma_fence* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = call i32 (...) @preempt_disable()
  %28 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %29 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %28, i32 0, i32 0
  %30 = call i32 @write_seqcount_begin(i32* %29)
  %31 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %32 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %35 = call i32 @RCU_INIT_POINTER(i32 %33, %struct.dma_fence* %34)
  %36 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %37 = icmp ne %struct.dma_resv_list* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %40 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %26
  %42 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %43 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %42, i32 0, i32 0
  %44 = call i32 @write_seqcount_end(i32* %43)
  %45 = call i32 (...) @preempt_enable()
  br label %46

46:                                               ; preds = %50, %41
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %7, align 8
  %49 = icmp ne i64 %47, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %52 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %58 = call i32 @dma_resv_held(%struct.dma_resv* %57)
  %59 = call %struct.dma_fence* @rcu_dereference_protected(i32 %56, i32 %58)
  %60 = call i32 @dma_fence_put(%struct.dma_fence* %59)
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %63 = call i32 @dma_fence_put(%struct.dma_fence* %62)
  ret void
}

declare dso_local %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv*) #1

declare dso_local i32 @dma_resv_assert_held(%struct.dma_resv*) #1

declare dso_local %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv*) #1

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.dma_fence*) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dma_resv_held(%struct.dma_resv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
