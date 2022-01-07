; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_get_nodeinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_get_nodeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i64, i32 }
%struct.ib_node_info = type { i32, i64, i32, i32*, i32, i8*, i8*, i32, i32, i32, i32, i64 }
%struct.hfi1_devdata = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@HFI1_PORT_GUID_INDEX = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@OPA_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@OPA_SM_CLASS_VERSION = common dso_local global i32 0, align 4
@ib_hfi1_sys_image_guid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_nodeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_nodeinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_smp*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_node_info*, align 8
  %9 = alloca %struct.hfi1_devdata*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %12 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %11, i32 0, i32 2
  %13 = bitcast i32* %12 to %struct.ib_node_info*
  store %struct.ib_node_info* %13, %struct.ib_node_info** %8, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %14)
  store %struct.hfi1_devdata* %15, %struct.hfi1_devdata** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %19 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %25 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %30 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @to_iport(%struct.ib_device* %34, i32 %35)
  %37 = load i32, i32* @HFI1_PORT_GUID_INDEX, align 4
  %38 = call i64 @get_sguid(i32 %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33, %28, %22, %3
  %41 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %42 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %43 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %47 = bitcast %struct.ib_smp* %46 to %struct.ib_mad_hdr*
  %48 = call i32 @reply(%struct.ib_mad_hdr* %47)
  store i32 %48, i32* %4, align 4
  br label %124

49:                                               ; preds = %33
  %50 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @to_iport(%struct.ib_device* %50, i32 %51)
  %53 = load i32, i32* @HFI1_PORT_GUID_INDEX, align 4
  %54 = call i64 @get_sguid(i32 %52, i32 %53)
  %55 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %56 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %55, i32 0, i32 11
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @OPA_MGMT_BASE_VERSION, align 4
  %58 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %59 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @OPA_SM_CLASS_VERSION, align 4
  %61 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %62 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %64 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %66 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %69 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @ib_hfi1_sys_image_guid, align 4
  %71 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %72 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %74 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %77 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %79 = call i32 @hfi1_get_npkeys(%struct.hfi1_devdata* %78)
  %80 = call i8* @cpu_to_be16(i32 %79)
  %81 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %82 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %84 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_be16(i32 %87)
  %89 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %90 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %92 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @cpu_to_be32(i32 %93)
  %95 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %96 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %99 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %101 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %104 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %102, i32* %106, align 4
  %107 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %108 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %111 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %109, i32* %113, align 4
  %114 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %115 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ib_node_info*, %struct.ib_node_info** %8, align 8
  %118 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32 %116, i32* %120, align 4
  %121 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %122 = bitcast %struct.ib_smp* %121 to %struct.ib_mad_hdr*
  %123 = call i32 @reply(%struct.ib_mad_hdr* %122)
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %49, %40
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i64 @get_sguid(i32, i32) #1

declare dso_local i32 @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @hfi1_get_npkeys(%struct.hfi1_devdata*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
