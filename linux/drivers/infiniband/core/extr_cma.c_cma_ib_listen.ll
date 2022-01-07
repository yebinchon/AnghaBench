; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_ib_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_ib_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.ib_cm_id* }
%struct.ib_cm_id = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@cma_ib_req_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_ib_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_ib_listen(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.ib_cm_id*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %7 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %8 = call %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private* %7)
  store %struct.sockaddr* %8, %struct.sockaddr** %4, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %10 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %9, i32 0, i32 1
  %11 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %12 = call i32 @rdma_get_service_id(%struct.TYPE_4__* %10, %struct.sockaddr* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %14 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @cma_ib_req_handler, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.ib_cm_id* @ib_cm_insert_listen(i32 %16, i32 %17, i32 %18)
  store %struct.ib_cm_id* %19, %struct.ib_cm_id** %5, align 8
  %20 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %21 = call i64 @IS_ERR(%struct.ib_cm_id* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.ib_cm_id* %24)
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %28 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %29 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.ib_cm_id* %27, %struct.ib_cm_id** %30, align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_get_service_id(%struct.TYPE_4__*, %struct.sockaddr*) #1

declare dso_local %struct.ib_cm_id* @ib_cm_insert_listen(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
