; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c___rdma_create_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c___rdma_create_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32, i32, %struct.TYPE_7__, i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { i32 }
%struct.rdma_id_private = type { i32, i32, i32, %struct.rdma_cm_id, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_RESTRACK_CM_ID = common dso_local global i32 0, align 4
@RDMA_CM_IDLE = common dso_local global i32 0, align 4
@IB_GID_TYPE_IB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rdma_cm_id* @__rdma_create_id(%struct.net* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.rdma_cm_id*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.rdma_id_private*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rdma_id_private* @kzalloc(i32 80, i32 %15)
  store %struct.rdma_id_private* %16, %struct.rdma_id_private** %14, align 8
  %17 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %18 = icmp ne %struct.rdma_id_private* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.rdma_cm_id* @ERR_PTR(i32 %21)
  store %struct.rdma_cm_id* %22, %struct.rdma_cm_id** %7, align 8
  br label %96

23:                                               ; preds = %6
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %25 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %24, i32 0, i32 13
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @rdma_restrack_set_task(%struct.TYPE_8__* %25, i8* %26)
  %28 = load i32, i32* @RDMA_RESTRACK_CM_ID, align 4
  %29 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %30 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %29, i32 0, i32 13
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @RDMA_CM_IDLE, align 4
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %34 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %37 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %37, i32 0, i32 4
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %41 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %45 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %49 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %52 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %54 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* @IB_GID_TYPE_IB, align 4
  %56 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %57 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 4
  %58 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %59 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %58, i32 0, i32 10
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %62 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %61, i32 0, i32 9
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %65 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %64, i32 0, i32 8
  %66 = call i32 @init_completion(i32* %65)
  %67 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %68 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %67, i32 0, i32 7
  %69 = call i32 @atomic_set(i32* %68, i32 1)
  %70 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %71 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %70, i32 0, i32 6
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %74 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %73, i32 0, i32 5
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %77 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %76, i32 0, i32 4
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %80 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %79, i32 0, i32 2
  %81 = call i32 @get_random_bytes(i32* %80, i32 4)
  %82 = load %struct.net*, %struct.net** %8, align 8
  %83 = call i32 @get_net(%struct.net* %82)
  %84 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %85 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %83, i32* %89, align 8
  %90 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %91 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 16777215
  store i32 %93, i32* %91, align 8
  %94 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  %95 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %94, i32 0, i32 3
  store %struct.rdma_cm_id* %95, %struct.rdma_cm_id** %7, align 8
  br label %96

96:                                               ; preds = %23, %19
  %97 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  ret %struct.rdma_cm_id* %97
}

declare dso_local %struct.rdma_id_private* @kzalloc(i32, i32) #1

declare dso_local %struct.rdma_cm_id* @ERR_PTR(i32) #1

declare dso_local i32 @rdma_restrack_set_task(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @get_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
