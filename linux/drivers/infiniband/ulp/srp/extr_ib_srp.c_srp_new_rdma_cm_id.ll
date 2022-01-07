; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_new_rdma_cm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_new_rdma_cm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { i32, %struct.TYPE_4__, i32, %struct.srp_target_port* }
%struct.TYPE_4__ = type { i32 }
%struct.srp_target_port = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.rdma_cm_id = type { i32 }
%struct.sockaddr = type { i32 }

@srp_rdma_cm_handler = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@SRP_PATH_REC_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No route available from %pIS to %pIS (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Resolving address %pIS failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rdma_ch*)* @srp_new_rdma_cm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_new_rdma_cm_id(%struct.srp_rdma_ch* %0) #0 {
  %2 = alloca %struct.srp_rdma_ch*, align 8
  %3 = alloca %struct.srp_target_port*, align 8
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca i32, align 4
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %2, align 8
  %6 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %7 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %6, i32 0, i32 3
  %8 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  store %struct.srp_target_port* %8, %struct.srp_target_port** %3, align 8
  %9 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %10 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @srp_rdma_cm_handler, align 4
  %13 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %14 = load i32, i32* @RDMA_PS_TCP, align 4
  %15 = load i32, i32* @IB_QPT_RC, align 4
  %16 = call %struct.rdma_cm_id* @rdma_create_id(i32 %11, i32 %12, %struct.srp_rdma_ch* %13, i32 %14, i32 %15)
  store %struct.rdma_cm_id* %16, %struct.rdma_cm_id** %4, align 8
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %18 = call i64 @IS_ERR(%struct.rdma_cm_id* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %22 = call i32 @PTR_ERR(%struct.rdma_cm_id* %21)
  store i32 %22, i32* %5, align 4
  store %struct.rdma_cm_id* null, %struct.rdma_cm_id** %4, align 8
  br label %85

23:                                               ; preds = %1
  %24 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %25 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %24, i32 0, i32 2
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %28 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %29 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %35 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to %struct.sockaddr*
  br label %39

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi %struct.sockaddr* [ %37, %33 ], [ null, %38 ]
  %41 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %42 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = bitcast i32* %43 to %struct.sockaddr*
  %45 = load i32, i32* @SRP_PATH_REC_TIMEOUT_MS, align 4
  %46 = call i32 @rdma_resolve_addr(%struct.rdma_cm_id* %27, %struct.sockaddr* %40, %struct.sockaddr* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %51 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %54 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = ptrtoint i32* %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i8*, i32*, i32, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %52, i32 %56, i32 %57)
  br label %85

59:                                               ; preds = %39
  %60 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %61 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %60, i32 0, i32 2
  %62 = call i32 @wait_for_completion_interruptible(i32* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %85

66:                                               ; preds = %59
  %67 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %68 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %74 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i8*, i32*, i32, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %75, i32 %76)
  br label %85

78:                                               ; preds = %66
  %79 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %80 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %84 = call i32 @swap(i32 %82, %struct.rdma_cm_id* %83)
  br label %85

85:                                               ; preds = %78, %72, %65, %49, %20
  %86 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %87 = icmp ne %struct.rdma_cm_id* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %90 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.rdma_cm_id* @rdma_create_id(i32, i32, %struct.srp_rdma_ch*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rdma_resolve_addr(%struct.rdma_cm_id*, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @pr_err(i8*, i32*, i32, ...) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @swap(i32, %struct.rdma_cm_id*) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
