; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_alloc_begin_fd_uobject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_alloc_begin_fd_uobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32, %struct.ib_uverbs_file* }
%struct.uverbs_api_object = type { i32 }
%struct.ib_uverbs_file = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_uobject* (%struct.uverbs_api_object*, %struct.ib_uverbs_file*)* @alloc_begin_fd_uobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_uobject* @alloc_begin_fd_uobject(%struct.uverbs_api_object* %0, %struct.ib_uverbs_file* %1) #0 {
  %3 = alloca %struct.ib_uobject*, align 8
  %4 = alloca %struct.uverbs_api_object*, align 8
  %5 = alloca %struct.ib_uverbs_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_uobject*, align 8
  store %struct.uverbs_api_object* %0, %struct.uverbs_api_object** %4, align 8
  store %struct.ib_uverbs_file* %1, %struct.ib_uverbs_file** %5, align 8
  %8 = load i32, i32* @O_CLOEXEC, align 4
  %9 = call i32 @get_unused_fd_flags(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ib_uobject* @ERR_PTR(i32 %13)
  store %struct.ib_uobject* %14, %struct.ib_uobject** %3, align 8
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %17 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %4, align 8
  %18 = call %struct.ib_uobject* @alloc_uobj(%struct.ib_uverbs_file* %16, %struct.uverbs_api_object* %17)
  store %struct.ib_uobject* %18, %struct.ib_uobject** %7, align 8
  %19 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %20 = call i64 @IS_ERR(%struct.ib_uobject* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @put_unused_fd(i32 %23)
  %25 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  store %struct.ib_uobject* %25, %struct.ib_uobject** %3, align 8
  br label %34

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %29 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %31 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %32 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %31, i32 0, i32 1
  store %struct.ib_uverbs_file* %30, %struct.ib_uverbs_file** %32, align 8
  %33 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  store %struct.ib_uobject* %33, %struct.ib_uobject** %3, align 8
  br label %34

34:                                               ; preds = %26, %22, %12
  %35 = load %struct.ib_uobject*, %struct.ib_uobject** %3, align 8
  ret %struct.ib_uobject* %35
}

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.ib_uobject* @ERR_PTR(i32) #1

declare dso_local %struct.ib_uobject* @alloc_uobj(%struct.ib_uverbs_file*, %struct.uverbs_api_object*) #1

declare dso_local i64 @IS_ERR(%struct.ib_uobject*) #1

declare dso_local i32 @put_unused_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
