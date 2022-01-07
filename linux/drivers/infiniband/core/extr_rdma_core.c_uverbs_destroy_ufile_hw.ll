; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_destroy_ufile_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_destroy_ufile_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_file = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RDMA_REMOVE_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uverbs_destroy_ufile_hw(%struct.ib_uverbs_file* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_uverbs_file*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RDMA_REMOVE_CLOSE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %10 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %9, i32 0, i32 0
  %11 = call i32 @mutex_trylock(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %74

14:                                               ; preds = %8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %17 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  br label %19

19:                                               ; preds = %15, %14
  %20 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %20, i32 0, i32 1
  %22 = call i32 @down_write(i32* %21)
  %23 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %67

28:                                               ; preds = %19
  %29 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %30 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %34 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %49, %28
  %38 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %39 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %38, i32 0, i32 2
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @__uverbs_cleanup_ufile(%struct.ib_uverbs_file* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %50

49:                                               ; preds = %43
  br label %37

50:                                               ; preds = %48, %37
  %51 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %52 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %56 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %55, i32 0, i32 2
  %57 = call i32 @list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @__uverbs_cleanup_ufile(%struct.ib_uverbs_file* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %50
  %64 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ufile_destroy_ucontext(%struct.ib_uverbs_file* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %27
  %68 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %69 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %68, i32 0, i32 1
  %70 = call i32 @up_write(i32* %69)
  %71 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %72 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  br label %74

74:                                               ; preds = %67, %13
  ret void
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @__uverbs_cleanup_ufile(%struct.ib_uverbs_file*, i32) #1

declare dso_local i32 @ufile_destroy_ucontext(%struct.ib_uverbs_file*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
