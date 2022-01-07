; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_finalize_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_finalize_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32 }
%struct.uverbs_attr_bundle = type { i32 }

@UVERBS_LOOKUP_READ = common dso_local global i32 0, align 4
@UVERBS_LOOKUP_WRITE = common dso_local global i32 0, align 4
@UVERBS_LOOKUP_DESTROY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uverbs_finalize_object(%struct.ib_uobject* %0, i32 %1, i32 %2, %struct.uverbs_attr_bundle* %3) #0 {
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uverbs_attr_bundle*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_uobject* %0, %struct.ib_uobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.uverbs_attr_bundle* %3, %struct.uverbs_attr_bundle** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %39 [
    i32 129, label %11
    i32 128, label %15
    i32 131, label %19
    i32 130, label %27
  ]

11:                                               ; preds = %4
  %12 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %13 = load i32, i32* @UVERBS_LOOKUP_READ, align 4
  %14 = call i32 @rdma_lookup_put_uobject(%struct.ib_uobject* %12, i32 %13)
  br label %43

15:                                               ; preds = %4
  %16 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %17 = load i32, i32* @UVERBS_LOOKUP_WRITE, align 4
  %18 = call i32 @rdma_lookup_put_uobject(%struct.ib_uobject* %16, i32 %17)
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %21 = icmp ne %struct.ib_uobject* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %24 = load i32, i32* @UVERBS_LOOKUP_DESTROY, align 4
  %25 = call i32 @rdma_lookup_put_uobject(%struct.ib_uobject* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  br label %43

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %32 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %8, align 8
  %33 = call i32 @rdma_alloc_commit_uobject(%struct.ib_uobject* %31, %struct.uverbs_attr_bundle* %32)
  store i32 %33, i32* %9, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %36 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %8, align 8
  %37 = call i32 @rdma_alloc_abort_uobject(%struct.ib_uobject* %35, %struct.uverbs_attr_bundle* %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %43

39:                                               ; preds = %4
  %40 = call i32 @WARN_ON(i32 1)
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %38, %26, %15, %11
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @rdma_lookup_put_uobject(%struct.ib_uobject*, i32) #1

declare dso_local i32 @rdma_alloc_commit_uobject(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @rdma_alloc_abort_uobject(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
