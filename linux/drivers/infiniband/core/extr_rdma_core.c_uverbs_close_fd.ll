; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_close_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_close_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ib_uobject* }
%struct.ib_uobject = type { i32, %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { i32, i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_uverbs_file*, i32 }

@UVERBS_LOOKUP_WRITE = common dso_local global i32 0, align 4
@RDMA_REMOVE_CLOSE = common dso_local global i32 0, align 4
@ib_uverbs_release_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uverbs_close_fd(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.ib_uobject*, align 8
  %4 = alloca %struct.ib_uverbs_file*, align 8
  %5 = alloca %struct.uverbs_attr_bundle, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  store %struct.ib_uobject* %8, %struct.ib_uobject** %3, align 8
  %9 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  %10 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %9, i32 0, i32 1
  %11 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %10, align 8
  store %struct.ib_uverbs_file* %11, %struct.ib_uverbs_file** %4, align 8
  %12 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %5, i32 0, i32 0
  %13 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  store %struct.ib_uverbs_file* %13, %struct.ib_uverbs_file** %12, align 8
  %14 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %5, i32 0, i32 1
  %15 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  %16 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 8
  %18 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %19 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %18, i32 0, i32 1
  %20 = call i64 @down_read_trylock(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  %24 = load i32, i32* @UVERBS_LOOKUP_WRITE, align 4
  %25 = call i32 @uverbs_try_lock_object(%struct.ib_uobject* %23, i32 %24)
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  %28 = load i32, i32* @RDMA_REMOVE_CLOSE, align 4
  %29 = call i32 @uverbs_destroy_uobject(%struct.ib_uobject* %27, i32 %28, %struct.uverbs_attr_bundle* %5)
  %30 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %31 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %30, i32 0, i32 1
  %32 = call i32 @up_read(i32* %31)
  br label %33

33:                                               ; preds = %22, %1
  %34 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %35 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %34, i32 0, i32 0
  %36 = load i32, i32* @ib_uverbs_release_file, align 4
  %37 = call i32 @kref_put(i32* %35, i32 %36)
  %38 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  %39 = call i32 @uverbs_uobject_put(%struct.ib_uobject* %38)
  ret void
}

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @uverbs_try_lock_object(%struct.ib_uobject*, i32) #1

declare dso_local i32 @uverbs_destroy_uobject(%struct.ib_uobject*, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @uverbs_uobject_put(%struct.ib_uobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
