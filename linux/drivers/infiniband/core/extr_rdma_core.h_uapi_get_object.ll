; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.h_uapi_get_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.h_uapi_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api_object = type { i32 }
%struct.uverbs_api = type { i32 }

@UVERBS_IDR_ANY_OBJECT = common dso_local global i64 0, align 8
@ENOMSG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uverbs_api_object* (%struct.uverbs_api*, i64)* @uapi_get_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uverbs_api_object* @uapi_get_object(%struct.uverbs_api* %0, i64 %1) #0 {
  %3 = alloca %struct.uverbs_api_object*, align 8
  %4 = alloca %struct.uverbs_api*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uverbs_api_object*, align 8
  store %struct.uverbs_api* %0, %struct.uverbs_api** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @UVERBS_IDR_ANY_OBJECT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMSG, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.uverbs_api_object* @ERR_PTR(i32 %12)
  store %struct.uverbs_api_object* %13, %struct.uverbs_api_object** %3, align 8
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %16 = getelementptr inbounds %struct.uverbs_api, %struct.uverbs_api* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @uapi_key_obj(i64 %17)
  %19 = call %struct.uverbs_api_object* @radix_tree_lookup(i32* %16, i32 %18)
  store %struct.uverbs_api_object* %19, %struct.uverbs_api_object** %6, align 8
  %20 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %6, align 8
  %21 = icmp ne %struct.uverbs_api_object* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.uverbs_api_object* @ERR_PTR(i32 %24)
  store %struct.uverbs_api_object* %25, %struct.uverbs_api_object** %3, align 8
  br label %28

26:                                               ; preds = %14
  %27 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %6, align 8
  store %struct.uverbs_api_object* %27, %struct.uverbs_api_object** %3, align 8
  br label %28

28:                                               ; preds = %26, %22, %10
  %29 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %3, align 8
  ret %struct.uverbs_api_object* %29
}

declare dso_local %struct.uverbs_api_object* @ERR_PTR(i32) #1

declare dso_local %struct.uverbs_api_object* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @uapi_key_obj(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
