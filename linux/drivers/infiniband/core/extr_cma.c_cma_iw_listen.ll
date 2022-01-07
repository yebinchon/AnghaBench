; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_iw_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_iw_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_3__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.iw_cm_id* }
%struct.iw_cm_id = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@iw_conn_req_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i32)* @cma_iw_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_iw_listen(%struct.rdma_id_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iw_cm_id*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %9 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @iw_conn_req_handler, align 4
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %14 = call %struct.iw_cm_id* @iw_create_cm_id(i32 %11, i32 %12, %struct.rdma_id_private* %13)
  store %struct.iw_cm_id* %14, %struct.iw_cm_id** %7, align 8
  %15 = load %struct.iw_cm_id*, %struct.iw_cm_id** %7, align 8
  %16 = call i64 @IS_ERR(%struct.iw_cm_id* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.iw_cm_id*, %struct.iw_cm_id** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.iw_cm_id* %19)
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %23 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iw_cm_id*, %struct.iw_cm_id** %7, align 8
  %26 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %28 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.iw_cm_id*, %struct.iw_cm_id** %7, align 8
  %31 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.iw_cm_id*, %struct.iw_cm_id** %7, align 8
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %34 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.iw_cm_id* %32, %struct.iw_cm_id** %35, align 8
  %36 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %37 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.iw_cm_id*, %struct.iw_cm_id** %38, align 8
  %40 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %39, i32 0, i32 0
  %41 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %42 = call i32 @cma_src_addr(%struct.rdma_id_private* %41)
  %43 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %44 = call i32 @cma_src_addr(%struct.rdma_id_private* %43)
  %45 = call i32 @rdma_addr_size(i32 %44)
  %46 = call i32 @memcpy(i32* %40, i32 %42, i32 %45)
  %47 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %48 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.iw_cm_id*, %struct.iw_cm_id** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @iw_cm_listen(%struct.iw_cm_id* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %21
  %56 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %57 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.iw_cm_id*, %struct.iw_cm_id** %58, align 8
  %60 = call i32 @iw_destroy_cm_id(%struct.iw_cm_id* %59)
  %61 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %62 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %63, align 8
  br label %64

64:                                               ; preds = %55, %21
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.iw_cm_id* @iw_create_cm_id(i32, i32, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.iw_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.iw_cm_id*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_addr_size(i32) #1

declare dso_local i32 @iw_cm_listen(%struct.iw_cm_id*, i32) #1

declare dso_local i32 @iw_destroy_cm_id(%struct.iw_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
