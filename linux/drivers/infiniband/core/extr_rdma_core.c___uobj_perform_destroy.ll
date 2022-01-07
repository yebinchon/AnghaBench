; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c___uobj_perform_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c___uobj_perform_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api_object = type { i32 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uobject = type { i32 }

@UVERBS_LOOKUP_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__uobj_perform_destroy(%struct.uverbs_api_object* %0, i32 %1, %struct.uverbs_attr_bundle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uverbs_api_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uverbs_attr_bundle*, align 8
  %8 = alloca %struct.ib_uobject*, align 8
  store %struct.uverbs_api_object* %0, %struct.uverbs_api_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %7, align 8
  %9 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %7, align 8
  %12 = call %struct.ib_uobject* @__uobj_get_destroy(%struct.uverbs_api_object* %9, i32 %10, %struct.uverbs_attr_bundle* %11)
  store %struct.ib_uobject* %12, %struct.ib_uobject** %8, align 8
  %13 = load %struct.ib_uobject*, %struct.ib_uobject** %8, align 8
  %14 = call i64 @IS_ERR(%struct.ib_uobject* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.ib_uobject*, %struct.ib_uobject** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.ib_uobject* %17)
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.ib_uobject*, %struct.ib_uobject** %8, align 8
  %21 = load i32, i32* @UVERBS_LOOKUP_WRITE, align 4
  %22 = call i32 @rdma_lookup_put_uobject(%struct.ib_uobject* %20, i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.ib_uobject* @__uobj_get_destroy(%struct.uverbs_api_object*, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i64 @IS_ERR(%struct.ib_uobject*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_uobject*) #1

declare dso_local i32 @rdma_lookup_put_uobject(%struct.ib_uobject*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
