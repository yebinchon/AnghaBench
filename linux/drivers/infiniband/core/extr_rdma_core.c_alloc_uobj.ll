; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_alloc_uobj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_alloc_uobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32, i32, %struct.uverbs_api_object*, i32, %struct.ib_ucontext*, %struct.ib_uverbs_file* }
%struct.ib_ucontext = type { i32 }
%struct.ib_uverbs_file = type { i32 }
%struct.uverbs_api_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_uobject* (%struct.ib_uverbs_file*, %struct.uverbs_api_object*)* @alloc_uobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_uobject* @alloc_uobj(%struct.ib_uverbs_file* %0, %struct.uverbs_api_object* %1) #0 {
  %3 = alloca %struct.ib_uobject*, align 8
  %4 = alloca %struct.ib_uverbs_file*, align 8
  %5 = alloca %struct.uverbs_api_object*, align 8
  %6 = alloca %struct.ib_uobject*, align 8
  %7 = alloca %struct.ib_ucontext*, align 8
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %4, align 8
  store %struct.uverbs_api_object* %1, %struct.uverbs_api_object** %5, align 8
  %8 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %9 = call %struct.ib_ucontext* @ib_uverbs_get_ucontext_file(%struct.ib_uverbs_file* %8)
  store %struct.ib_ucontext* %9, %struct.ib_ucontext** %7, align 8
  %10 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %11 = call i64 @IS_ERR(%struct.ib_ucontext* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %15 = call %struct.ib_uobject* @ERR_CAST(%struct.ib_ucontext* %14)
  store %struct.ib_uobject* %15, %struct.ib_uobject** %3, align 8
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %5, align 8
  %18 = getelementptr inbounds %struct.uverbs_api_object, %struct.uverbs_api_object* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ib_uobject* @kzalloc(i32 %21, i32 %22)
  store %struct.ib_uobject* %23, %struct.ib_uobject** %6, align 8
  %24 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %25 = icmp ne %struct.ib_uobject* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ib_uobject* @ERR_PTR(i32 %28)
  store %struct.ib_uobject* %29, %struct.ib_uobject** %3, align 8
  br label %50

30:                                               ; preds = %16
  %31 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %32 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %33 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %32, i32 0, i32 5
  store %struct.ib_uverbs_file* %31, %struct.ib_uverbs_file** %33, align 8
  %34 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %35 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %36 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %35, i32 0, i32 4
  store %struct.ib_ucontext* %34, %struct.ib_ucontext** %36, align 8
  %37 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %38 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %37, i32 0, i32 3
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %5, align 8
  %41 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %42 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %41, i32 0, i32 2
  store %struct.uverbs_api_object* %40, %struct.uverbs_api_object** %42, align 8
  %43 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %44 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %43, i32 0, i32 1
  %45 = call i32 @atomic_set(i32* %44, i32 -1)
  %46 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %47 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %46, i32 0, i32 0
  %48 = call i32 @kref_init(i32* %47)
  %49 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  store %struct.ib_uobject* %49, %struct.ib_uobject** %3, align 8
  br label %50

50:                                               ; preds = %30, %26, %13
  %51 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  ret %struct.ib_uobject* %51
}

declare dso_local %struct.ib_ucontext* @ib_uverbs_get_ucontext_file(%struct.ib_uverbs_file*) #1

declare dso_local i64 @IS_ERR(%struct.ib_ucontext*) #1

declare dso_local %struct.ib_uobject* @ERR_CAST(%struct.ib_ucontext*) #1

declare dso_local %struct.ib_uobject* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_uobject* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
