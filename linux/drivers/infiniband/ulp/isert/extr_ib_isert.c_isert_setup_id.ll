; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_setup_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_setup_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.isert_np = type { %struct.iscsi_np* }
%struct.iscsi_np = type { %struct.rdma_cm_id }

@.str = private unnamed_addr constant [23 x i8] c"ksockaddr: %p, sa: %p\0A\00", align 1
@init_net = common dso_local global i32 0, align 4
@isert_cma_handler = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"rdma_create_id() failed: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"id %p context %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"rdma_bind_addr() failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"rdma_listen() failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rdma_cm_id* @isert_setup_id(%struct.isert_np* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.isert_np*, align 8
  %4 = alloca %struct.iscsi_np*, align 8
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.isert_np* %0, %struct.isert_np** %3, align 8
  %8 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %9 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %8, i32 0, i32 0
  %10 = load %struct.iscsi_np*, %struct.iscsi_np** %9, align 8
  store %struct.iscsi_np* %10, %struct.iscsi_np** %4, align 8
  %11 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %11, i32 0, i32 0
  %13 = bitcast %struct.rdma_cm_id* %12 to %struct.sockaddr*
  store %struct.sockaddr* %13, %struct.sockaddr** %6, align 8
  %14 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %14, i32 0, i32 0
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = call i32 @isert_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.rdma_cm_id* %15, %struct.sockaddr* %16)
  %18 = load i32, i32* @isert_cma_handler, align 4
  %19 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %20 = load i32, i32* @RDMA_PS_TCP, align 4
  %21 = load i32, i32* @IB_QPT_RC, align 4
  %22 = call %struct.rdma_cm_id* @rdma_create_id(i32* @init_net, i32 %18, %struct.isert_np* %19, i32 %20, i32 %21)
  store %struct.rdma_cm_id* %22, %struct.rdma_cm_id** %5, align 8
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %24 = call i64 @IS_ERR(%struct.rdma_cm_id* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %28 = call i32 @PTR_ERR(%struct.rdma_cm_id* %27)
  %29 = call i32 @isert_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %31 = call i32 @PTR_ERR(%struct.rdma_cm_id* %30)
  store i32 %31, i32* %7, align 4
  br label %59

32:                                               ; preds = %1
  %33 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %34 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %35 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %34, i32 0, i32 0
  %36 = load %struct.sockaddr*, %struct.sockaddr** %35, align 8
  %37 = call i32 @isert_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.rdma_cm_id* %33, %struct.sockaddr* %36)
  %38 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %40 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %38, %struct.sockaddr* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @isert_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  br label %56

46:                                               ; preds = %32
  %47 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %48 = call i32 @rdma_listen(%struct.rdma_cm_id* %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @isert_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %56

54:                                               ; preds = %46
  %55 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  store %struct.rdma_cm_id* %55, %struct.rdma_cm_id** %2, align 8
  br label %62

56:                                               ; preds = %51, %43
  %57 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %58 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %57)
  br label %59

59:                                               ; preds = %56, %26
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.rdma_cm_id* @ERR_PTR(i32 %60)
  store %struct.rdma_cm_id* %61, %struct.rdma_cm_id** %2, align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  ret %struct.rdma_cm_id* %63
}

declare dso_local i32 @isert_dbg(i8*, %struct.rdma_cm_id*, %struct.sockaddr*) #1

declare dso_local %struct.rdma_cm_id* @rdma_create_id(i32*, i32, %struct.isert_np*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, %struct.sockaddr*) #1

declare dso_local i32 @rdma_listen(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

declare dso_local %struct.rdma_cm_id* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
