; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_nodeinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_nodeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i64, i32 }
%struct.opa_node_info = type { i32, i64, i32, i32*, i32, i8*, i8*, i32, i32, i32, i32, i64 }
%struct.hfi1_devdata = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@HFI1_PORT_GUID_INDEX = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@OPA_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@OPA_SM_CLASS_VERSION = common dso_local global i32 0, align 4
@ib_hfi1_sys_image_guid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_nodeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_nodeinfo(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.opa_node_info*, align 8
  %17 = alloca %struct.hfi1_devdata*, align 8
  %18 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %20 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %19)
  store %struct.hfi1_devdata* %20, %struct.hfi1_devdata** %17, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %18, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = bitcast i32* %23 to %struct.opa_node_info*
  store %struct.opa_node_info* %24, %struct.opa_node_info** %16, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* %18, align 4
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %30 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp uge i32 %28, %31
  br i1 %32, label %49, label %33

33:                                               ; preds = %27
  %34 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %35 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @smp_length_check(i32 80, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @to_iport(%struct.ib_device* %43, i32 %44)
  %46 = load i32, i32* @HFI1_PORT_GUID_INDEX, align 4
  %47 = call i64 @get_sguid(i32 %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42, %38, %33, %27, %7
  %50 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %51 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %52 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %56 = bitcast %struct.opa_smp* %55 to %struct.ib_mad_hdr*
  %57 = call i32 @reply(%struct.ib_mad_hdr* %56)
  store i32 %57, i32* %8, align 4
  br label %142

58:                                               ; preds = %42
  %59 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @to_iport(%struct.ib_device* %59, i32 %60)
  %62 = load i32, i32* @HFI1_PORT_GUID_INDEX, align 4
  %63 = call i64 @get_sguid(i32 %61, i32 %62)
  %64 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %65 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %64, i32 0, i32 11
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @OPA_MGMT_BASE_VERSION, align 4
  %67 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %68 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @OPA_SM_CLASS_VERSION, align 4
  %70 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %71 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 8
  %72 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %73 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %75 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %78 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @ib_hfi1_sys_image_guid, align 4
  %80 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %81 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %83 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %86 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %88 = call i32 @hfi1_get_npkeys(%struct.hfi1_devdata* %87)
  %89 = call i8* @cpu_to_be16(i32 %88)
  %90 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %91 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %93 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %92, i32 0, i32 5
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @cpu_to_be16(i32 %96)
  %98 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %99 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %101 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @cpu_to_be32(i32 %102)
  %104 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %105 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %108 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %110 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %113 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %111, i32* %115, align 4
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %117 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %120 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %124 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.opa_node_info*, %struct.opa_node_info** %16, align 8
  %127 = getelementptr inbounds %struct.opa_node_info, %struct.opa_node_info* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32 %125, i32* %129, align 4
  %130 = load i32*, i32** %14, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %58
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, 80
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  br label %138

138:                                              ; preds = %132, %58
  %139 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %140 = bitcast %struct.opa_smp* %139 to %struct.ib_mad_hdr*
  %141 = call i32 @reply(%struct.ib_mad_hdr* %140)
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %138, %49
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

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
