; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_connect_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_connect_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32, %struct.isert_np* }
%struct.isert_np = type { i32, i32, %struct.iscsi_np* }
%struct.iscsi_np = type { i32, i32 }
%struct.rdma_cm_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isert_conn = type { i32, %struct.isert_device*, %struct.rdma_cm_id* }
%struct.isert_device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"iscsi_np is not enabled, reject connect request\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cma_id: %p, portal: %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @isert_connect_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_connect_request(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_cm_event*, align 8
  %6 = alloca %struct.isert_np*, align 8
  %7 = alloca %struct.iscsi_np*, align 8
  %8 = alloca %struct.isert_conn*, align 8
  %9 = alloca %struct.isert_device*, align 8
  %10 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %5, align 8
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %12 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %11, i32 0, i32 1
  %13 = load %struct.isert_np*, %struct.isert_np** %12, align 8
  store %struct.isert_np* %13, %struct.isert_np** %6, align 8
  %14 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %15 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %14, i32 0, i32 2
  %16 = load %struct.iscsi_np*, %struct.iscsi_np** %15, align 8
  store %struct.iscsi_np* %16, %struct.iscsi_np** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.iscsi_np*, %struct.iscsi_np** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.iscsi_np*, %struct.iscsi_np** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.iscsi_np*, %struct.iscsi_np** %7, align 8
  %26 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = call i32 (i8*, ...) @isert_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %30 = call i32 @rdma_reject(%struct.rdma_cm_id* %29, i32* null, i32 0)
  store i32 %30, i32* %3, align 4
  br label %121

31:                                               ; preds = %2
  %32 = load %struct.iscsi_np*, %struct.iscsi_np** %7, align 8
  %33 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %36 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %37 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %36, i32 0, i32 1
  %38 = load %struct.isert_np*, %struct.isert_np** %37, align 8
  %39 = call i32 (i8*, ...) @isert_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.rdma_cm_id* %35, %struct.isert_np* %38)
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.isert_conn* @kzalloc(i32 24, i32 %40)
  store %struct.isert_conn* %41, %struct.isert_conn** %8, align 8
  %42 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %43 = icmp ne %struct.isert_conn* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %121

47:                                               ; preds = %31
  %48 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %49 = call i32 @isert_init_conn(%struct.isert_conn* %48)
  %50 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %51 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %52 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %51, i32 0, i32 2
  store %struct.rdma_cm_id* %50, %struct.rdma_cm_id** %52, align 8
  %53 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %54 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %55 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @isert_alloc_login_buf(%struct.isert_conn* %53, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %115

61:                                               ; preds = %47
  %62 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %63 = call %struct.isert_device* @isert_device_get(%struct.rdma_cm_id* %62)
  store %struct.isert_device* %63, %struct.isert_device** %9, align 8
  %64 = load %struct.isert_device*, %struct.isert_device** %9, align 8
  %65 = call i64 @IS_ERR(%struct.isert_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.isert_device*, %struct.isert_device** %9, align 8
  %69 = call i32 @PTR_ERR(%struct.isert_device* %68)
  store i32 %69, i32* %10, align 4
  br label %112

70:                                               ; preds = %61
  %71 = load %struct.isert_device*, %struct.isert_device** %9, align 8
  %72 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %73 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %72, i32 0, i32 1
  store %struct.isert_device* %71, %struct.isert_device** %73, align 8
  %74 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %75 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %76 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @isert_set_nego_params(%struct.isert_conn* %74, i32* %77)
  %79 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %80 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %81 = call i32 @isert_conn_setup_qp(%struct.isert_conn* %79, %struct.rdma_cm_id* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %109

85:                                               ; preds = %70
  %86 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %87 = call i32 @isert_login_post_recv(%struct.isert_conn* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %109

91:                                               ; preds = %85
  %92 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %93 = call i32 @isert_rdma_accept(%struct.isert_conn* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %109

97:                                               ; preds = %91
  %98 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %99 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %98, i32 0, i32 0
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %102 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %101, i32 0, i32 0
  %103 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %104 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %103, i32 0, i32 1
  %105 = call i32 @list_add_tail(i32* %102, i32* %104)
  %106 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %107 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  store i32 0, i32* %3, align 4
  br label %121

109:                                              ; preds = %96, %90, %84
  %110 = load %struct.isert_device*, %struct.isert_device** %9, align 8
  %111 = call i32 @isert_device_put(%struct.isert_device* %110)
  br label %112

112:                                              ; preds = %109, %67
  %113 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %114 = call i32 @isert_free_login_buf(%struct.isert_conn* %113)
  br label %115

115:                                              ; preds = %112, %60
  %116 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %117 = call i32 @kfree(%struct.isert_conn* %116)
  %118 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %119 = call i32 @rdma_reject(%struct.rdma_cm_id* %118, i32* null, i32 0)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %97, %44, %24
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @isert_dbg(i8*, ...) #1

declare dso_local i32 @rdma_reject(%struct.rdma_cm_id*, i32*, i32) #1

declare dso_local %struct.isert_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @isert_init_conn(%struct.isert_conn*) #1

declare dso_local i32 @isert_alloc_login_buf(%struct.isert_conn*, i32) #1

declare dso_local %struct.isert_device* @isert_device_get(%struct.rdma_cm_id*) #1

declare dso_local i64 @IS_ERR(%struct.isert_device*) #1

declare dso_local i32 @PTR_ERR(%struct.isert_device*) #1

declare dso_local i32 @isert_set_nego_params(%struct.isert_conn*, i32*) #1

declare dso_local i32 @isert_conn_setup_qp(%struct.isert_conn*, %struct.rdma_cm_id*) #1

declare dso_local i32 @isert_login_post_recv(%struct.isert_conn*) #1

declare dso_local i32 @isert_rdma_accept(%struct.isert_conn*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @isert_device_put(%struct.isert_device*) #1

declare dso_local i32 @isert_free_login_buf(%struct.isert_conn*) #1

declare dso_local i32 @kfree(%struct.isert_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
