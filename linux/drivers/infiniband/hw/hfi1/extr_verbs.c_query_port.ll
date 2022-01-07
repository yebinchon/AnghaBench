; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { i32 }
%struct.ib_port_attr = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i64 }
%struct.hfi1_ibdev = type { i32 }
%struct.hfi1_devdata = type { %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i32, i32, i32, i32, i32, i64 }

@HFI1_GUIDS_PER_PORT = common dso_local global i32 0, align 4
@hfi1_max_mtu = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_dev_info*, i32, %struct.ib_port_attr*)* @query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_port(%struct.rvt_dev_info* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.rvt_dev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.hfi1_ibdev*, align 8
  %8 = alloca %struct.hfi1_devdata*, align 8
  %9 = alloca %struct.hfi1_pportdata*, align 8
  %10 = alloca i64, align 8
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %11 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %12 = call %struct.hfi1_ibdev* @dev_from_rdi(%struct.rvt_dev_info* %11)
  store %struct.hfi1_ibdev* %12, %struct.hfi1_ibdev** %7, align 8
  %13 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %7, align 8
  %14 = call %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev* %13)
  store %struct.hfi1_devdata* %14, %struct.hfi1_devdata** %8, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 0
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %17, i64 %20
  store %struct.hfi1_pportdata* %21, %struct.hfi1_pportdata** %9, align 8
  %22 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %23 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* %10, align 8
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i64 [ %28, %27 ], [ 0, %29 ]
  %32 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %32, i32 0, i32 9
  store i64 %31, i64* %33, align 8
  %34 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %35 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %40 = call i32 @driver_lstate(%struct.hfi1_pportdata* %39)
  %41 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %44 = call i32 @driver_pstate(%struct.hfi1_pportdata* %43)
  %45 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @HFI1_GUIDS_PER_PORT, align 4
  %48 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %51 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @opa_width_to_ib(i32 %52)
  %54 = trunc i64 %53 to i32
  %55 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %58 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @opa_speed_to_ib(i32 %59)
  %61 = trunc i64 %60 to i32
  %62 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %65 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @hfi1_max_mtu, align 4
  %70 = call i32 @valid_ib_mtu(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %30
  br label %75

73:                                               ; preds = %30
  %74 = load i32, i32* @hfi1_max_mtu, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i32 [ 4096, %72 ], [ %74, %73 ]
  %77 = load i32, i32* @IB_MTU_4096, align 4
  %78 = call i8* @mtu_to_enum(i32 %76, i32 %77)
  %79 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %80 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %82 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @valid_ib_mtu(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %75
  %87 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %88 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  br label %96

90:                                               ; preds = %75
  %91 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %92 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IB_MTU_4096, align 4
  %95 = call i8* @mtu_to_enum(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %86
  %97 = phi i8* [ %89, %86 ], [ %95, %90 ]
  %98 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %99 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  ret i32 0
}

declare dso_local %struct.hfi1_ibdev* @dev_from_rdi(%struct.rvt_dev_info*) #1

declare dso_local %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev*) #1

declare dso_local i32 @driver_lstate(%struct.hfi1_pportdata*) #1

declare dso_local i32 @driver_pstate(%struct.hfi1_pportdata*) #1

declare dso_local i64 @opa_width_to_ib(i32) #1

declare dso_local i64 @opa_speed_to_ib(i32) #1

declare dso_local i8* @mtu_to_enum(i32, i32) #1

declare dso_local i32 @valid_ib_mtu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
