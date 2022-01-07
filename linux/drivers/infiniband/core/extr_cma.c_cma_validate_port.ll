; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_validate_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_validate_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i32 }
%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.rdma_id_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_INFINIBAND = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@IB_GID_TYPE_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_gid_attr* (%struct.ib_device*, i32, i32, %union.ib_gid*, %struct.rdma_id_private*)* @cma_validate_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_gid_attr* @cma_validate_port(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3, %struct.rdma_id_private* %4) #0 {
  %6 = alloca %struct.ib_gid_attr*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ib_gid*, align 8
  %11 = alloca %struct.rdma_id_private*, align 8
  %12 = alloca %struct.rdma_dev_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_gid_attr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ib_gid* %3, %union.ib_gid** %10, align 8
  store %struct.rdma_id_private* %4, %struct.rdma_id_private** %11, align 8
  %17 = load %struct.rdma_id_private*, %struct.rdma_id_private** %11, align 8
  %18 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.rdma_dev_addr* %21, %struct.rdma_dev_addr** %12, align 8
  %22 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %12, align 8
  %23 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %12, align 8
  %26 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  store %struct.net_device* null, %struct.net_device** %16, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %29 = load %struct.rdma_id_private*, %struct.rdma_id_private** %11, align 8
  %30 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rdma_dev_access_netns(%struct.ib_device* %28, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.ib_gid_attr* @ERR_PTR(i32 %40)
  store %struct.ib_gid_attr* %41, %struct.ib_gid_attr** %6, align 8
  br label %106

42:                                               ; preds = %5
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @ARPHRD_INFINIBAND, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @rdma_protocol_ib(%struct.ib_device* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.ib_gid_attr* @ERR_PTR(i32 %53)
  store %struct.ib_gid_attr* %54, %struct.ib_gid_attr** %6, align 8
  br label %106

55:                                               ; preds = %46, %42
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @ARPHRD_INFINIBAND, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @rdma_protocol_ib(%struct.ib_device* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.ib_gid_attr* @ERR_PTR(i32 %66)
  store %struct.ib_gid_attr* %67, %struct.ib_gid_attr** %6, align 8
  br label %106

68:                                               ; preds = %59, %55
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @ARPHRD_ETHER, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @rdma_protocol_roce(%struct.ib_device* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %12, align 8
  %79 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call %struct.net_device* @dev_get_by_index(i32 %80, i32 %81)
  store %struct.net_device* %82, %struct.net_device** %16, align 8
  %83 = load %struct.net_device*, %struct.net_device** %16, align 8
  %84 = icmp ne %struct.net_device* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  %88 = call %struct.ib_gid_attr* @ERR_PTR(i32 %87)
  store %struct.ib_gid_attr* %88, %struct.ib_gid_attr** %6, align 8
  br label %106

89:                                               ; preds = %77
  br label %92

90:                                               ; preds = %72, %68
  %91 = load i32, i32* @IB_GID_TYPE_IB, align 4
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %94 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.net_device*, %struct.net_device** %16, align 8
  %98 = call %struct.ib_gid_attr* @rdma_find_gid_by_port(%struct.ib_device* %93, %union.ib_gid* %94, i32 %95, i32 %96, %struct.net_device* %97)
  store %struct.ib_gid_attr* %98, %struct.ib_gid_attr** %14, align 8
  %99 = load %struct.net_device*, %struct.net_device** %16, align 8
  %100 = icmp ne %struct.net_device* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.net_device*, %struct.net_device** %16, align 8
  %103 = call i32 @dev_put(%struct.net_device* %102)
  br label %104

104:                                              ; preds = %101, %92
  %105 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %14, align 8
  store %struct.ib_gid_attr* %105, %struct.ib_gid_attr** %6, align 8
  br label %106

106:                                              ; preds = %104, %85, %64, %51, %38
  %107 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  ret %struct.ib_gid_attr* %107
}

declare dso_local i32 @rdma_dev_access_netns(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_gid_attr* @ERR_PTR(i32) #1

declare dso_local i64 @rdma_protocol_ib(%struct.ib_device*, i32) #1

declare dso_local i64 @rdma_protocol_roce(%struct.ib_device*, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local %struct.ib_gid_attr* @rdma_find_gid_by_port(%struct.ib_device*, %union.ib_gid*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
