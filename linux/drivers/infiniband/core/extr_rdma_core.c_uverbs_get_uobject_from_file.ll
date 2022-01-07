; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_get_uobject_from_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_get_uobject_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32 }
%struct.uverbs_attr_bundle = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uverbs_api_object = type { i32 }

@UVERBS_LOOKUP_READ = common dso_local global i32 0, align 4
@UVERBS_LOOKUP_DESTROY = common dso_local global i32 0, align 4
@UVERBS_LOOKUP_WRITE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_uobject* @uverbs_get_uobject_from_file(i32 %0, i32 %1, i32 %2, %struct.uverbs_attr_bundle* %3) #0 {
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uverbs_attr_bundle*, align 8
  %10 = alloca %struct.uverbs_api_object*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.uverbs_attr_bundle* %3, %struct.uverbs_attr_bundle** %9, align 8
  %11 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %12 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.uverbs_api_object* @uapi_get_object(i32 %17, i32 %18)
  store %struct.uverbs_api_object* %19, %struct.uverbs_api_object** %10, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %55 [
    i32 129, label %21
    i32 131, label %30
    i32 128, label %39
    i32 130, label %48
  ]

21:                                               ; preds = %4
  %22 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %10, align 8
  %23 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %24 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @UVERBS_LOOKUP_READ, align 4
  %28 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %29 = call %struct.ib_uobject* @rdma_lookup_get_uobject(%struct.uverbs_api_object* %22, %struct.TYPE_5__* %25, i32 %26, i32 %27, %struct.uverbs_attr_bundle* %28)
  store %struct.ib_uobject* %29, %struct.ib_uobject** %5, align 8
  br label %60

30:                                               ; preds = %4
  %31 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %10, align 8
  %32 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %33 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @UVERBS_LOOKUP_DESTROY, align 4
  %37 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %38 = call %struct.ib_uobject* @rdma_lookup_get_uobject(%struct.uverbs_api_object* %31, %struct.TYPE_5__* %34, i32 %35, i32 %36, %struct.uverbs_attr_bundle* %37)
  store %struct.ib_uobject* %38, %struct.ib_uobject** %5, align 8
  br label %60

39:                                               ; preds = %4
  %40 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %10, align 8
  %41 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %42 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @UVERBS_LOOKUP_WRITE, align 4
  %46 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %47 = call %struct.ib_uobject* @rdma_lookup_get_uobject(%struct.uverbs_api_object* %40, %struct.TYPE_5__* %43, i32 %44, i32 %45, %struct.uverbs_attr_bundle* %46)
  store %struct.ib_uobject* %47, %struct.ib_uobject** %5, align 8
  br label %60

48:                                               ; preds = %4
  %49 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %10, align 8
  %50 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %51 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %54 = call %struct.ib_uobject* @rdma_alloc_begin_uobject(%struct.uverbs_api_object* %49, %struct.TYPE_5__* %52, %struct.uverbs_attr_bundle* %53)
  store %struct.ib_uobject* %54, %struct.ib_uobject** %5, align 8
  br label %60

55:                                               ; preds = %4
  %56 = call i32 @WARN_ON(i32 1)
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.ib_uobject* @ERR_PTR(i32 %58)
  store %struct.ib_uobject* %59, %struct.ib_uobject** %5, align 8
  br label %60

60:                                               ; preds = %55, %48, %39, %30, %21
  %61 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  ret %struct.ib_uobject* %61
}

declare dso_local %struct.uverbs_api_object* @uapi_get_object(i32, i32) #1

declare dso_local %struct.ib_uobject* @rdma_lookup_get_uobject(%struct.uverbs_api_object*, %struct.TYPE_5__*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local %struct.ib_uobject* @rdma_alloc_begin_uobject(%struct.uverbs_api_object*, %struct.TYPE_5__*, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ib_uobject* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
