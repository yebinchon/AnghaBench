; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_setup_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_setup_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { %struct.isert_np*, i32 }
%struct.isert_np = type { %struct.rdma_cm_id*, %struct.iscsi_np*, i32, i32, i32, i32 }
%struct.rdma_cm_id = type { i32 }
%struct.sockaddr_storage = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_np*, %struct.sockaddr_storage*)* @isert_setup_np to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_setup_np(%struct.iscsi_np* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_np*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.isert_np*, align 8
  %7 = alloca %struct.rdma_cm_id*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_np* %0, %struct.iscsi_np** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.isert_np* @kzalloc(i32 32, i32 %9)
  store %struct.isert_np* %10, %struct.isert_np** %6, align 8
  %11 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %12 = icmp ne %struct.isert_np* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %18 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %17, i32 0, i32 5
  %19 = call i32 @sema_init(i32* %18, i32 0)
  %20 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %21 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %20, i32 0, i32 4
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %24 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %27 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %26, i32 0, i32 2
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %30 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %31 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %30, i32 0, i32 1
  store %struct.iscsi_np* %29, %struct.iscsi_np** %31, align 8
  %32 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %32, i32 0, i32 1
  %34 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %35 = call i32 @memcpy(i32* %33, %struct.sockaddr_storage* %34, i32 4)
  %36 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %37 = call %struct.rdma_cm_id* @isert_setup_id(%struct.isert_np* %36)
  store %struct.rdma_cm_id* %37, %struct.rdma_cm_id** %7, align 8
  %38 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  %39 = call i64 @IS_ERR(%struct.rdma_cm_id* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %16
  %42 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  %43 = call i32 @PTR_ERR(%struct.rdma_cm_id* %42)
  store i32 %43, i32* %8, align 4
  br label %51

44:                                               ; preds = %16
  %45 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  %46 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %47 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %46, i32 0, i32 0
  store %struct.rdma_cm_id* %45, %struct.rdma_cm_id** %47, align 8
  %48 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %49 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %49, i32 0, i32 0
  store %struct.isert_np* %48, %struct.isert_np** %50, align 8
  store i32 0, i32* %3, align 4
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %53 = call i32 @kfree(%struct.isert_np* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %44, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.isert_np* @kzalloc(i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local %struct.rdma_cm_id* @isert_setup_id(%struct.isert_np*) #1

declare dso_local i64 @IS_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @kfree(%struct.isert_np*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
