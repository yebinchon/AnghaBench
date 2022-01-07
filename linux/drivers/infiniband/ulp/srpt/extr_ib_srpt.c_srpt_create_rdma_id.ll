; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_create_rdma_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_create_rdma_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.sockaddr = type { i32 }

@init_net = common dso_local global i32 0, align 4
@srpt_rdma_cm_handler = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"RDMA/CM ID creation failed: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%pISp\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Binding RDMA/CM ID to address %s failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"rdma_listen() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdma_cm_id* (%struct.sockaddr*)* @srpt_create_rdma_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdma_cm_id* @srpt_create_rdma_id(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  %6 = load i32, i32* @srpt_rdma_cm_handler, align 4
  %7 = load i32, i32* @RDMA_PS_TCP, align 4
  %8 = load i32, i32* @IB_QPT_RC, align 4
  %9 = call %struct.rdma_cm_id* @rdma_create_id(i32* @init_net, i32 %6, i32* null, i32 %7, i32 %8)
  store %struct.rdma_cm_id* %9, %struct.rdma_cm_id** %3, align 8
  %10 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %11 = call i64 @IS_ERR(%struct.rdma_cm_id* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %15 = call i32 @PTR_ERR(%struct.rdma_cm_id* %14)
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %20 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %18, %struct.sockaddr* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %25 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %26 = call i32 @snprintf(i8* %24, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.sockaddr* %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %31 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.rdma_cm_id* @ERR_PTR(i32 %32)
  store %struct.rdma_cm_id* %33, %struct.rdma_cm_id** %3, align 8
  br label %47

34:                                               ; preds = %17
  %35 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %36 = call i32 @rdma_listen(%struct.rdma_cm_id* %35, i32 128)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %43 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %42)
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.rdma_cm_id* @ERR_PTR(i32 %44)
  store %struct.rdma_cm_id* %45, %struct.rdma_cm_id** %3, align 8
  br label %46

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %46, %23, %13
  %48 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  ret %struct.rdma_cm_id* %48
}

declare dso_local %struct.rdma_cm_id* @rdma_create_id(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, %struct.sockaddr*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, %struct.sockaddr*) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

declare dso_local %struct.rdma_cm_id* @ERR_PTR(i32) #1

declare dso_local i32 @rdma_listen(%struct.rdma_cm_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
