; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_route_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_route_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.iser_cm_hdr = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.iser_conn = type { i64, %struct.ib_conn }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ISER_CONN_PENDING = common dso_local global i64 0, align 8
@ISER_ZBVA_NOT_SUP = common dso_local global i32 0, align 4
@ISER_SEND_W_INV_NOT_SUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failure connecting: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*)* @iser_route_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_route_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.rdma_conn_param, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_cm_hdr, align 8
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca %struct.ib_conn*, align 8
  %8 = alloca %struct.iser_device*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iser_conn*
  store %struct.iser_conn* %12, %struct.iser_conn** %6, align 8
  %13 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %14 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %13, i32 0, i32 1
  store %struct.ib_conn* %14, %struct.ib_conn** %7, align 8
  %15 = load %struct.ib_conn*, %struct.ib_conn** %7, align 8
  %16 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %15, i32 0, i32 0
  %17 = load %struct.iser_device*, %struct.iser_device** %16, align 8
  store %struct.iser_device* %17, %struct.iser_device** %8, align 8
  %18 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %19 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ISER_CONN_PENDING, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %70

24:                                               ; preds = %1
  %25 = load %struct.ib_conn*, %struct.ib_conn** %7, align 8
  %26 = call i32 @iser_create_ib_conn_res(%struct.ib_conn* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %67

30:                                               ; preds = %24
  %31 = call i32 @memset(%struct.rdma_conn_param* %3, i32 0, i32 32)
  %32 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  %33 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 6
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 1
  store i32 7, i32* %40, align 4
  %41 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 2
  store i32 6, i32* %41, align 8
  %42 = bitcast %struct.iser_cm_hdr* %5 to %struct.rdma_conn_param*
  %43 = call i32 @memset(%struct.rdma_conn_param* %42, i32 0, i32 32)
  %44 = load i32, i32* @ISER_ZBVA_NOT_SUP, align 4
  %45 = getelementptr inbounds %struct.iser_cm_hdr, %struct.iser_cm_hdr* %5, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  %47 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %30
  %51 = load i32, i32* @ISER_SEND_W_INV_NOT_SUP, align 4
  %52 = getelementptr inbounds %struct.iser_cm_hdr, %struct.iser_cm_hdr* %5, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %50, %30
  %56 = bitcast %struct.iser_cm_hdr* %5 to i8*
  %57 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 4
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 3
  store i32 32, i32* %58, align 4
  %59 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %60 = call i32 @rdma_connect(%struct.rdma_cm_id* %59, %struct.rdma_conn_param* %3)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @iser_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %67

66:                                               ; preds = %55
  br label %70

67:                                               ; preds = %63, %29
  %68 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %69 = call i32 @iser_connect_error(%struct.rdma_cm_id* %68)
  br label %70

70:                                               ; preds = %67, %66, %23
  ret void
}

declare dso_local i32 @iser_create_ib_conn_res(%struct.ib_conn*) #1

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rdma_connect(%struct.rdma_cm_id*, %struct.rdma_conn_param*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

declare dso_local i32 @iser_connect_error(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
