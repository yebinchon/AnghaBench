; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_save_net_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_save_net_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rdma_cm_id = type { i32 }
%struct.ib_cm_event = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@AF_IB = common dso_local global i64 0, align 8
@IB_CM_REQ_RECEIVED = common dso_local global i64 0, align 8
@IB_CM_SIDR_REQ_RECEIVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.rdma_cm_id*, %struct.ib_cm_event*, i64, i32)* @cma_save_net_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_save_net_info(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.rdma_cm_id* %2, %struct.ib_cm_event* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.rdma_cm_id*, align 8
  %11 = alloca %struct.ib_cm_event*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.rdma_cm_id* %2, %struct.rdma_cm_id** %10, align 8
  store %struct.ib_cm_event* %3, %struct.ib_cm_event** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* @AF_IB, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %6
  %18 = load %struct.ib_cm_event*, %struct.ib_cm_event** %11, align 8
  %19 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IB_CM_REQ_RECEIVED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %26 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %10, align 8
  %27 = load %struct.ib_cm_event*, %struct.ib_cm_event** %11, align 8
  %28 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @cma_save_ib_info(%struct.sockaddr* %24, %struct.sockaddr* %25, %struct.rdma_cm_id* %26, i32* %31)
  br label %45

33:                                               ; preds = %17
  %34 = load %struct.ib_cm_event*, %struct.ib_cm_event** %11, align 8
  %35 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IB_CM_SIDR_REQ_RECEIVED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %41 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %42 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %10, align 8
  %43 = call i32 @cma_save_ib_info(%struct.sockaddr* %40, %struct.sockaddr* %41, %struct.rdma_cm_id* %42, i32* null)
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44, %23
  store i32 0, i32* %7, align 4
  br label %52

46:                                               ; preds = %6
  %47 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %49 = load %struct.ib_cm_event*, %struct.ib_cm_event** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @cma_save_ip_info(%struct.sockaddr* %47, %struct.sockaddr* %48, %struct.ib_cm_event* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @cma_save_ib_info(%struct.sockaddr*, %struct.sockaddr*, %struct.rdma_cm_id*, i32*) #1

declare dso_local i32 @cma_save_ip_info(%struct.sockaddr*, %struct.sockaddr*, %struct.ib_cm_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
