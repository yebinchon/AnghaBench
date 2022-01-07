; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_rdma_alloc_begin_uobject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_rdma_alloc_begin_uobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uverbs_api_object* (%struct.uverbs_api_object*, %struct.ib_uverbs_file*)* }
%struct.uverbs_api_object = type { i32, %struct.TYPE_2__* }
%struct.ib_uverbs_file = type { i32 }
%struct.uverbs_attr_bundle = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_uobject* @rdma_alloc_begin_uobject(%struct.uverbs_api_object* %0, %struct.ib_uverbs_file* %1, %struct.uverbs_attr_bundle* %2) #0 {
  %4 = alloca %struct.ib_uobject*, align 8
  %5 = alloca %struct.uverbs_api_object*, align 8
  %6 = alloca %struct.ib_uverbs_file*, align 8
  %7 = alloca %struct.uverbs_attr_bundle*, align 8
  %8 = alloca %struct.ib_uobject*, align 8
  store %struct.uverbs_api_object* %0, %struct.uverbs_api_object** %5, align 8
  store %struct.ib_uverbs_file* %1, %struct.ib_uverbs_file** %6, align 8
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %7, align 8
  %9 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %5, align 8
  %10 = call i64 @IS_ERR(%struct.uverbs_api_object* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.uverbs_api_object* @ERR_PTR(i32 %14)
  %16 = bitcast %struct.uverbs_api_object* %15 to %struct.ib_uobject*
  store %struct.ib_uobject* %16, %struct.ib_uobject** %4, align 8
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %19 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %18, i32 0, i32 0
  %20 = call i32 @down_read_trylock(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.uverbs_api_object* @ERR_PTR(i32 %24)
  %26 = bitcast %struct.uverbs_api_object* %25 to %struct.ib_uobject*
  store %struct.ib_uobject* %26, %struct.ib_uobject** %4, align 8
  br label %57

27:                                               ; preds = %17
  %28 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %5, align 8
  %29 = getelementptr inbounds %struct.uverbs_api_object, %struct.uverbs_api_object* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.uverbs_api_object* (%struct.uverbs_api_object*, %struct.ib_uverbs_file*)*, %struct.uverbs_api_object* (%struct.uverbs_api_object*, %struct.ib_uverbs_file*)** %31, align 8
  %33 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %5, align 8
  %34 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %35 = call %struct.uverbs_api_object* %32(%struct.uverbs_api_object* %33, %struct.ib_uverbs_file* %34)
  %36 = bitcast %struct.uverbs_api_object* %35 to %struct.ib_uobject*
  store %struct.ib_uobject* %36, %struct.ib_uobject** %8, align 8
  %37 = load %struct.ib_uobject*, %struct.ib_uobject** %8, align 8
  %38 = bitcast %struct.ib_uobject* %37 to %struct.uverbs_api_object*
  %39 = call i64 @IS_ERR(%struct.uverbs_api_object* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %43 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %42, i32 0, i32 0
  %44 = call i32 @up_read(i32* %43)
  %45 = load %struct.ib_uobject*, %struct.ib_uobject** %8, align 8
  store %struct.ib_uobject* %45, %struct.ib_uobject** %4, align 8
  br label %57

46:                                               ; preds = %27
  %47 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %7, align 8
  %48 = icmp ne %struct.uverbs_attr_bundle* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.ib_uobject*, %struct.ib_uobject** %8, align 8
  %51 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %7, align 8
  %54 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load %struct.ib_uobject*, %struct.ib_uobject** %8, align 8
  store %struct.ib_uobject* %56, %struct.ib_uobject** %4, align 8
  br label %57

57:                                               ; preds = %55, %41, %22, %12
  %58 = load %struct.ib_uobject*, %struct.ib_uobject** %4, align 8
  ret %struct.ib_uobject* %58
}

declare dso_local i64 @IS_ERR(%struct.uverbs_api_object*) #1

declare dso_local %struct.uverbs_api_object* @ERR_PTR(i32) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
