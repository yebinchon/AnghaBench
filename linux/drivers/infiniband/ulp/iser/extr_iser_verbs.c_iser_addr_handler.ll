; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_addr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_addr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.iser_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iser_conn = type { i64, %struct.ib_conn }
%struct.ib_conn = type { i32, %struct.iser_device* }

@ISER_CONN_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"device lookup/creation failed\0A\00", align 1
@iser_pi_enable = common dso_local global i64 0, align 8
@IB_DEVICE_INTEGRITY_HANDOVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"T10-PI requested but not supported on %s, continue without T10-PI\0A\00", align 1
@iser_max_sectors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"resolve route failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*)* @iser_addr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_addr_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.iser_device*, align 8
  %4 = alloca %struct.iser_conn*, align 8
  %5 = alloca %struct.ib_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iser_conn*
  store %struct.iser_conn* %10, %struct.iser_conn** %4, align 8
  %11 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %12 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ISER_CONN_PENDING, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %19 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %18, i32 0, i32 1
  store %struct.ib_conn* %19, %struct.ib_conn** %5, align 8
  %20 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %21 = call %struct.iser_device* @iser_device_find_by_ib_device(%struct.rdma_cm_id* %20)
  store %struct.iser_device* %21, %struct.iser_device** %3, align 8
  %22 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %23 = icmp ne %struct.iser_device* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %27 = call i32 @iser_connect_error(%struct.rdma_cm_id* %26)
  br label %72

28:                                               ; preds = %17
  %29 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %30 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %31 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %30, i32 0, i32 1
  store %struct.iser_device* %29, %struct.iser_device** %31, align 8
  %32 = load i64, i64* @iser_pi_enable, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %36 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IB_DEVICE_INTEGRITY_HANDOVER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %34
  %45 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %46 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %45, i32 0, i32 1
  %47 = load %struct.iser_device*, %struct.iser_device** %46, align 8
  %48 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @dev_name(i32* %50)
  %52 = call i32 @iser_warn(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %54 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %58

55:                                               ; preds = %34
  %56 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %57 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %44
  br label %59

59:                                               ; preds = %58, %28
  %60 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %61 = load i32, i32* @iser_max_sectors, align 4
  %62 = call i32 @iser_calc_scsi_params(%struct.iser_conn* %60, i32 %61)
  %63 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %64 = call i32 @rdma_resolve_route(%struct.rdma_cm_id* %63, i32 1000)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %71 = call i32 @iser_connect_error(%struct.rdma_cm_id* %70)
  br label %72

72:                                               ; preds = %16, %24, %67, %59
  ret void
}

declare dso_local %struct.iser_device* @iser_device_find_by_ib_device(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_err(i8*, ...) #1

declare dso_local i32 @iser_connect_error(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_warn(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @iser_calc_scsi_params(%struct.iser_conn*, i32) #1

declare dso_local i32 @rdma_resolve_route(%struct.rdma_cm_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
