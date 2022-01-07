; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_new_ib_cm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_new_ib_cm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { %struct.TYPE_9__, %struct.srp_target_port* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.ib_cm_id* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.ib_cm_id = type { i32 }
%struct.srp_target_port = type { %struct.TYPE_10__, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@srp_ib_cm_handler = common dso_local global i32 0, align 4
@SA_PATH_REC_TYPE_OPA = common dso_local global i32 0, align 4
@SA_PATH_REC_TYPE_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rdma_ch*)* @srp_new_ib_cm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_new_ib_cm_id(%struct.srp_rdma_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srp_rdma_ch*, align 8
  %4 = alloca %struct.srp_target_port*, align 8
  %5 = alloca %struct.ib_cm_id*, align 8
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %3, align 8
  %6 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %7 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %6, i32 0, i32 1
  %8 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  store %struct.srp_target_port* %8, %struct.srp_target_port** %4, align 8
  %9 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %10 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @srp_ib_cm_handler, align 4
  %17 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %18 = call %struct.ib_cm_id* @ib_create_cm_id(i32 %15, i32 %16, %struct.srp_rdma_ch* %17)
  store %struct.ib_cm_id* %18, %struct.ib_cm_id** %5, align 8
  %19 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %20 = call i64 @IS_ERR(%struct.ib_cm_id* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %24 = call i32 @PTR_ERR(%struct.ib_cm_id* %23)
  store i32 %24, i32* %2, align 4
  br label %100

25:                                               ; preds = %1
  %26 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %27 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.ib_cm_id*, %struct.ib_cm_id** %28, align 8
  %30 = icmp ne %struct.ib_cm_id* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %33 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.ib_cm_id*, %struct.ib_cm_id** %34, align 8
  %36 = call i32 @ib_destroy_cm_id(%struct.ib_cm_id* %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %39 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %40 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store %struct.ib_cm_id* %38, %struct.ib_cm_id** %41, align 8
  %42 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %43 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %50 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @rdma_cap_opa_ah(i32 %48, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %37
  %57 = load i32, i32* @SA_PATH_REC_TYPE_OPA, align 4
  %58 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %59 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  store i32 %57, i32* %61, align 8
  br label %68

62:                                               ; preds = %37
  %63 = load i32, i32* @SA_PATH_REC_TYPE_IB, align 4
  %64 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %65 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  store i32 %63, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %70 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %73 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  store i32 %71, i32* %75, align 4
  %76 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %77 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %81 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store i32 %79, i32* %83, align 8
  %84 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %85 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %89 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %93 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %97 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %68, %22
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.ib_cm_id* @ib_create_cm_id(i32, i32, %struct.srp_rdma_ch*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.ib_cm_id*) #1

declare dso_local i64 @rdma_cap_opa_ah(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
