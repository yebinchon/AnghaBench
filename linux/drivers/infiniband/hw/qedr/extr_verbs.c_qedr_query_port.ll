; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.qedr_dev = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.qed_rdma_port* (i32)* }
%struct.qed_rdma_port = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"rdma_ctx is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_RDMA_PORT_UP = common dso_local global i64 0, align 8
@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_LINK_UP = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@QEDR_MAX_SGID = common dso_local global i32 0, align 4
@QEDR_ROCE_PKEY_TABLE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.qedr_dev*, align 8
  %9 = alloca %struct.qed_rdma_port*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = call %struct.qedr_dev* @get_qedr_dev(%struct.ib_device* %10)
  store %struct.qedr_dev* %11, %struct.qedr_dev** %8, align 8
  %12 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %13 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %18 = call i32 @DP_ERR(%struct.qedr_dev* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %111

21:                                               ; preds = %3
  %22 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %23 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.qed_rdma_port* (i32)*, %struct.qed_rdma_port* (i32)** %25, align 8
  %27 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %28 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.qed_rdma_port* %26(i32 %29)
  store %struct.qed_rdma_port* %30, %struct.qed_rdma_port** %9, align 8
  %31 = load %struct.qed_rdma_port*, %struct.qed_rdma_port** %9, align 8
  %32 = getelementptr inbounds %struct.qed_rdma_port, %struct.qed_rdma_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @QED_RDMA_PORT_UP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %38 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %39 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %38, i32 0, i32 16
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @IB_PORT_PHYS_STATE_LINK_UP, align 4
  %41 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %42 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %41, i32 0, i32 15
  store i32 %40, i32* %42, align 8
  br label %50

43:                                               ; preds = %21
  %44 = load i32, i32* @IB_PORT_DOWN, align 4
  %45 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %46 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %45, i32 0, i32 16
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @IB_PORT_PHYS_STATE_DISABLED, align 4
  %48 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %49 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i32, i32* @IB_MTU_4096, align 4
  %52 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %53 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %52, i32 0, i32 14
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %55 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @iboe_get_mtu(i32 %58)
  %60 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %61 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %60, i32 0, i32 13
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %63 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %62, i32 0, i32 12
  store i64 0, i64* %63, align 8
  %64 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %65 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %64, i32 0, i32 11
  store i64 0, i64* %65, align 8
  %66 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %67 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %66, i32 0, i32 10
  store i64 0, i64* %67, align 8
  %68 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %69 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %68, i32 0, i32 9
  store i64 0, i64* %69, align 8
  %70 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %71 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %73 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %72, i32 0, i32 0
  %74 = call i64 @rdma_protocol_iwarp(i32* %73, i32 1)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %50
  %77 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %78 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %80 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  br label %88

81:                                               ; preds = %50
  %82 = load i32, i32* @QEDR_MAX_SGID, align 4
  %83 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %84 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @QEDR_ROCE_PKEY_TABLE_LEN, align 4
  %86 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %87 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %76
  %89 = load %struct.qed_rdma_port*, %struct.qed_rdma_port** %9, align 8
  %90 = getelementptr inbounds %struct.qed_rdma_port, %struct.qed_rdma_port* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %93 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %92, i32 0, i32 8
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %95 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  %96 = load %struct.qed_rdma_port*, %struct.qed_rdma_port** %9, align 8
  %97 = getelementptr inbounds %struct.qed_rdma_port, %struct.qed_rdma_port* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %100 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %99, i32 0, i32 6
  %101 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %102 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %101, i32 0, i32 5
  %103 = call i32 @get_link_speed_and_width(i32 %98, i32* %100, i32* %102)
  %104 = load %struct.qed_rdma_port*, %struct.qed_rdma_port** %9, align 8
  %105 = getelementptr inbounds %struct.qed_rdma_port, %struct.qed_rdma_port* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %108 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %110 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %109, i32 0, i32 3
  store i32 4, i32* %110, align 4
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %88, %16
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(%struct.ib_device*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i64 @rdma_protocol_iwarp(i32*, i32) #1

declare dso_local i32 @get_link_speed_and_width(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
