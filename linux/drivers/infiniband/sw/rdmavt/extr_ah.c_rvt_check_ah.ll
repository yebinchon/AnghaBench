; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_ah.c_rvt_check_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_ah.c_rvt_check_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_port_attr = type { i64 }
%struct.rvt_dev_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_device.0*, %struct.rdma_ah_attr.1*)* }
%struct.ib_device.0 = type opaque
%struct.rdma_ah_attr.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IB_RATE_PORT_CURRENT = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_check_ah(%struct.ib_device* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_port_attr, align 8
  %9 = alloca %struct.rvt_dev_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  %12 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %13 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = call %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device* %14)
  store %struct.rvt_dev_info* %15, %struct.rvt_dev_info** %9, align 8
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %17 = call i64 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %19 = call i64 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ib_query_port(%struct.ib_device* %20, i32 %21, %struct.ib_port_attr* %8)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %84

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %34 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %84

40:                                               ; preds = %31
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @IB_RATE_PORT_CURRENT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @ib_rate_to_mbps(i64 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %84

51:                                               ; preds = %44, %40
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @IB_AH_GRH, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %58 = call %struct.TYPE_4__* @rdma_ah_read_grh(%struct.rdma_ah_attr* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %84

67:                                               ; preds = %56, %51
  %68 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %69 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.ib_device.0*, %struct.rdma_ah_attr.1*)*, i32 (%struct.ib_device.0*, %struct.rdma_ah_attr.1*)** %70, align 8
  %72 = icmp ne i32 (%struct.ib_device.0*, %struct.rdma_ah_attr.1*)* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %75 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32 (%struct.ib_device.0*, %struct.rdma_ah_attr.1*)*, i32 (%struct.ib_device.0*, %struct.rdma_ah_attr.1*)** %76, align 8
  %78 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %79 = bitcast %struct.ib_device* %78 to %struct.ib_device.0*
  %80 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %81 = bitcast %struct.rdma_ah_attr* %80 to %struct.rdma_ah_attr.1*
  %82 = call i32 %77(%struct.ib_device.0* %79, %struct.rdma_ah_attr.1* %81)
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %73, %64, %48, %37, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device*) #1

declare dso_local i64 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rdma_ah_get_static_rate(%struct.rdma_ah_attr*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i64 @ib_rate_to_mbps(i64) #1

declare dso_local %struct.TYPE_4__* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
