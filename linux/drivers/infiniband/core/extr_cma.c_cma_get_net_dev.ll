; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_get_net_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_get_net_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_cm_event = type { i32 }
%struct.cma_req_info = type { i32, i32, i32, i32, %union.ib_gid, i64, i32, i32 }
%union.ib_gid = type { i32 }
%struct.sockaddr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ib_cm_event*, %struct.cma_req_info*)* @cma_get_net_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @cma_get_net_dev(%struct.ib_cm_event* %0, %struct.cma_req_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_cm_event*, align 8
  %5 = alloca %struct.cma_req_info*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_cm_event* %0, %struct.ib_cm_event** %4, align 8
  store %struct.cma_req_info* %1, %struct.cma_req_info** %5, align 8
  %11 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %12 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %11, i32 0, i32 7
  %13 = bitcast i32* %12 to %struct.sockaddr*
  store %struct.sockaddr* %13, %struct.sockaddr** %6, align 8
  %14 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %15 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %14, i32 0, i32 6
  %16 = bitcast i32* %15 to %struct.sockaddr*
  store %struct.sockaddr* %16, %struct.sockaddr** %7, align 8
  %17 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %18 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %23 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %22, i32 0, i32 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi %union.ib_gid* [ %23, %21 ], [ null, %24 ]
  store %union.ib_gid* %26, %union.ib_gid** %9, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %29 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %30 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %31 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cma_save_ip_info(%struct.sockaddr* %27, %struct.sockaddr* %28, %struct.ib_cm_event* %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.net_device* @ERR_PTR(i32 %37)
  store %struct.net_device* %38, %struct.net_device** %3, align 8
  br label %73

39:                                               ; preds = %25
  %40 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %41 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %44 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @rdma_protocol_roce(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %50 = call %struct.net_device* @roce_get_net_dev_by_cm_event(%struct.ib_cm_event* %49)
  store %struct.net_device* %50, %struct.net_device** %8, align 8
  br label %64

51:                                               ; preds = %39
  %52 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %53 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %56 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %59 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %62 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %63 = call %struct.net_device* @ib_get_net_dev_by_params(i32 %54, i32 %57, i32 %60, %union.ib_gid* %61, %struct.sockaddr* %62)
  store %struct.net_device* %63, %struct.net_device** %8, align 8
  br label %64

64:                                               ; preds = %51, %48
  %65 = load %struct.net_device*, %struct.net_device** %8, align 8
  %66 = icmp ne %struct.net_device* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.net_device* @ERR_PTR(i32 %69)
  store %struct.net_device* %70, %struct.net_device** %3, align 8
  br label %73

71:                                               ; preds = %64
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %72, %struct.net_device** %3, align 8
  br label %73

73:                                               ; preds = %71, %67, %36
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %74
}

declare dso_local i32 @cma_save_ip_info(%struct.sockaddr*, %struct.sockaddr*, %struct.ib_cm_event*, i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i64 @rdma_protocol_roce(i32, i32) #1

declare dso_local %struct.net_device* @roce_get_net_dev_by_cm_event(%struct.ib_cm_event*) #1

declare dso_local %struct.net_device* @ib_get_net_dev_by_params(i32, i32, i32, %union.ib_gid*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
