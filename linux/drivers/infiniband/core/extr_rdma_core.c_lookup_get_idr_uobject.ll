; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_lookup_get_idr_uobject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_lookup_get_idr_uobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32 }
%struct.uverbs_api_object = type { i32 }
%struct.ib_uverbs_file = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_uobject* (%struct.uverbs_api_object*, %struct.ib_uverbs_file*, i64, i32)* @lookup_get_idr_uobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_uobject* @lookup_get_idr_uobject(%struct.uverbs_api_object* %0, %struct.ib_uverbs_file* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca %struct.uverbs_api_object*, align 8
  %7 = alloca %struct.ib_uverbs_file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_uobject*, align 8
  store %struct.uverbs_api_object* %0, %struct.uverbs_api_object** %6, align 8
  store %struct.ib_uverbs_file* %1, %struct.ib_uverbs_file** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %8, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @ULONG_MAX, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_uobject* @ERR_PTR(i32 %19)
  store %struct.ib_uobject* %20, %struct.ib_uobject** %5, align 8
  br label %41

21:                                               ; preds = %13
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %7, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call %struct.ib_uobject* @xa_load(i32* %24, i64 %25)
  store %struct.ib_uobject* %26, %struct.ib_uobject** %10, align 8
  %27 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %28 = icmp ne %struct.ib_uobject* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %31 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %30, i32 0, i32 0
  %32 = call i32 @kref_get_unless_zero(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %21
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.ib_uobject* @ERR_PTR(i32 %36)
  store %struct.ib_uobject* %37, %struct.ib_uobject** %10, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  store %struct.ib_uobject* %40, %struct.ib_uobject** %5, align 8
  br label %41

41:                                               ; preds = %38, %17
  %42 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  ret %struct.ib_uobject* %42
}

declare dso_local %struct.ib_uobject* @ERR_PTR(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ib_uobject* @xa_load(i32*, i64) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
