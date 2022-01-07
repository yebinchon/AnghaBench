; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_check_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_check_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.hfi1_ibport = type { i64* }
%struct.hfi1_pportdata = type { i32 }
%struct.hfi1_devdata = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@num_vls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_ah_attr*)* @hfi1_check_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_check_ah(%struct.ib_device* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.hfi1_ibport*, align 8
  %7 = alloca %struct.hfi1_pportdata*, align 8
  %8 = alloca %struct.hfi1_devdata*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  %11 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %12 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %11)
  %13 = call i64 @hfi1_check_mcast(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %17 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %16)
  %18 = load i32, i32* @IB_AH_GRH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %15, %2
  %25 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %26 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %27 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %26)
  %28 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %25, i32 %27)
  store %struct.hfi1_ibport* %28, %struct.hfi1_ibport** %6, align 8
  %29 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %30 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %29)
  store %struct.hfi1_pportdata* %30, %struct.hfi1_pportdata** %7, align 8
  %31 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %32 = call %struct.hfi1_devdata* @dd_from_ppd(%struct.hfi1_pportdata* %31)
  store %struct.hfi1_devdata* %32, %struct.hfi1_devdata** %8, align 8
  %33 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %34 = call i64 @rdma_ah_get_sl(%struct.rdma_ah_attr* %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %37 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = call i64 @ARRAY_SIZE(i64* %38)
  %40 = icmp uge i64 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %24
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %47 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = call i64 @ARRAY_SIZE(i64* %48)
  %50 = call i64 @array_index_nospec(i64 %45, i64 %49)
  store i64 %50, i64* %10, align 8
  %51 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %52 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %9, align 8
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @sc_to_vlt(%struct.hfi1_devdata* %57, i64 %58)
  %60 = load i32, i32* @num_vls, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %44
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @sc_to_vlt(%struct.hfi1_devdata* %63, i64 %64)
  %66 = icmp ne i32 %65, 15
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %62, %44
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67, %41, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @hfi1_check_mcast(i32) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ppd(%struct.hfi1_pportdata*) #1

declare dso_local i64 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @array_index_nospec(i64, i64) #1

declare dso_local i32 @sc_to_vlt(%struct.hfi1_devdata*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
