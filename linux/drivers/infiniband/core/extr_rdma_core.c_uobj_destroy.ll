; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uobj_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uobj_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { i32 }

@UVERBS_LOOKUP_WRITE = common dso_local global i32 0, align 4
@RDMA_REMOVE_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uobj_destroy(%struct.ib_uobject* %0, %struct.uverbs_attr_bundle* %1) #0 {
  %3 = alloca %struct.ib_uobject*, align 8
  %4 = alloca %struct.uverbs_attr_bundle*, align 8
  %5 = alloca %struct.ib_uverbs_file*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_uobject* %0, %struct.ib_uobject** %3, align 8
  store %struct.uverbs_attr_bundle* %1, %struct.uverbs_attr_bundle** %4, align 8
  %7 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %8 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %7, i32 0, i32 0
  %9 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  store %struct.ib_uverbs_file* %9, %struct.ib_uverbs_file** %5, align 8
  %10 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %11 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %10, i32 0, i32 0
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  %14 = load i32, i32* @UVERBS_LOOKUP_WRITE, align 4
  %15 = call i32 @uverbs_try_lock_object(%struct.ib_uobject* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  %21 = load i32, i32* @RDMA_REMOVE_DESTROY, align 4
  %22 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %23 = call i32 @uverbs_destroy_uobject(%struct.ib_uobject* %20, i32 %21, %struct.uverbs_attr_bundle* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  %28 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %27, i32 0, i32 0
  %29 = call i32 @atomic_set(i32* %28, i32 0)
  br label %31

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %26, %18
  %32 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %33 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %32, i32 0, i32 0
  %34 = call i32 @up_read(i32* %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @uverbs_try_lock_object(%struct.ib_uobject*, i32) #1

declare dso_local i32 @uverbs_destroy_uobject(%struct.ib_uobject*, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
