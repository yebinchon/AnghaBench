; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_alloc_begin_idr_uobject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_alloc_begin_idr_uobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uverbs_api_object = type { i32 }
%struct.ib_uverbs_file = type { i32 }

@RDMACG_RESOURCE_HCA_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_uobject* (%struct.uverbs_api_object*, %struct.ib_uverbs_file*)* @alloc_begin_idr_uobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_uobject* @alloc_begin_idr_uobject(%struct.uverbs_api_object* %0, %struct.ib_uverbs_file* %1) #0 {
  %3 = alloca %struct.ib_uobject*, align 8
  %4 = alloca %struct.uverbs_api_object*, align 8
  %5 = alloca %struct.ib_uverbs_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_uobject*, align 8
  store %struct.uverbs_api_object* %0, %struct.uverbs_api_object** %4, align 8
  store %struct.ib_uverbs_file* %1, %struct.ib_uverbs_file** %5, align 8
  %8 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %9 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %4, align 8
  %10 = call %struct.ib_uobject* @alloc_uobj(%struct.ib_uverbs_file* %8, %struct.uverbs_api_object* %9)
  store %struct.ib_uobject* %10, %struct.ib_uobject** %7, align 8
  %11 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %12 = call i64 @IS_ERR(%struct.ib_uobject* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  store %struct.ib_uobject* %15, %struct.ib_uobject** %3, align 8
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %18 = call i32 @idr_add_uobj(%struct.ib_uobject* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %44

22:                                               ; preds = %16
  %23 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %24 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %23, i32 0, i32 2
  %25 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %26 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RDMACG_RESOURCE_HCA_OBJECT, align 4
  %31 = call i32 @ib_rdmacg_try_charge(i32* %24, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %37

35:                                               ; preds = %22
  %36 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  store %struct.ib_uobject* %36, %struct.ib_uobject** %3, align 8
  br label %49

37:                                               ; preds = %34
  %38 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %39 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %38, i32 0, i32 0
  %40 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %41 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @xa_erase(i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %21
  %45 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %46 = call i32 @uverbs_uobject_put(%struct.ib_uobject* %45)
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.ib_uobject* @ERR_PTR(i32 %47)
  store %struct.ib_uobject* %48, %struct.ib_uobject** %3, align 8
  br label %49

49:                                               ; preds = %44, %35, %14
  %50 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  ret %struct.ib_uobject* %50
}

declare dso_local %struct.ib_uobject* @alloc_uobj(%struct.ib_uverbs_file*, %struct.uverbs_api_object*) #1

declare dso_local i64 @IS_ERR(%struct.ib_uobject*) #1

declare dso_local i32 @idr_add_uobj(%struct.ib_uobject*) #1

declare dso_local i32 @ib_rdmacg_try_charge(i32*, i32, i32) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @uverbs_uobject_put(%struct.ib_uobject*) #1

declare dso_local %struct.ib_uobject* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
