; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_probe_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_probe_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_dev = type { i32 }
%struct.device = type { i32 }
%struct.virtio_iommu_req_probe = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.virtio_iommu_probe_property = type { i32, i32 }
%struct.iommu_fwspec = type { i32*, i32, %struct.viommu_endpoint* }
%struct.viommu_endpoint = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_IOMMU_T_PROBE = common dso_local global i32 0, align 4
@VIRTIO_IOMMU_PROBE_T_MASK = common dso_local global i32 0, align 4
@VIRTIO_IOMMU_PROBE_T_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unknown viommu prop 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to parse viommu prop 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_dev*, %struct.device*)* @viommu_probe_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viommu_probe_endpoint(%struct.viommu_dev* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.viommu_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.virtio_iommu_req_probe*, align 8
  %12 = alloca %struct.virtio_iommu_probe_property*, align 8
  %13 = alloca %struct.iommu_fwspec*, align 8
  %14 = alloca %struct.viommu_endpoint*, align 8
  store %struct.viommu_dev* %0, %struct.viommu_dev** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i64 0, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %15)
  store %struct.iommu_fwspec* %16, %struct.iommu_fwspec** %13, align 8
  %17 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %13, align 8
  %18 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %17, i32 0, i32 2
  %19 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %18, align 8
  store %struct.viommu_endpoint* %19, %struct.viommu_endpoint** %14, align 8
  %20 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %13, align 8
  %21 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %144

27:                                               ; preds = %2
  %28 = load %struct.viommu_dev*, %struct.viommu_dev** %4, align 8
  %29 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 16, %31
  %33 = add i64 %32, 4
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.virtio_iommu_req_probe* @kzalloc(i64 %34, i32 %35)
  store %struct.virtio_iommu_req_probe* %36, %struct.virtio_iommu_req_probe** %11, align 8
  %37 = load %struct.virtio_iommu_req_probe*, %struct.virtio_iommu_req_probe** %11, align 8
  %38 = icmp ne %struct.virtio_iommu_req_probe* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %144

42:                                               ; preds = %27
  %43 = load i32, i32* @VIRTIO_IOMMU_T_PROBE, align 4
  %44 = load %struct.virtio_iommu_req_probe*, %struct.virtio_iommu_req_probe** %11, align 8
  %45 = getelementptr inbounds %struct.virtio_iommu_req_probe, %struct.virtio_iommu_req_probe* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %13, align 8
  %48 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cpu_to_le32(i32 %51)
  %53 = load %struct.virtio_iommu_req_probe*, %struct.virtio_iommu_req_probe** %11, align 8
  %54 = getelementptr inbounds %struct.virtio_iommu_req_probe, %struct.virtio_iommu_req_probe* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.viommu_dev*, %struct.viommu_dev** %4, align 8
  %56 = load %struct.virtio_iommu_req_probe*, %struct.virtio_iommu_req_probe** %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @viommu_send_req_sync(%struct.viommu_dev* %55, %struct.virtio_iommu_req_probe* %56, i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %42
  br label %140

62:                                               ; preds = %42
  %63 = load %struct.virtio_iommu_req_probe*, %struct.virtio_iommu_req_probe** %11, align 8
  %64 = getelementptr inbounds %struct.virtio_iommu_req_probe, %struct.virtio_iommu_req_probe* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = bitcast i8* %66 to %struct.virtio_iommu_probe_property*
  store %struct.virtio_iommu_probe_property* %67, %struct.virtio_iommu_probe_property** %12, align 8
  %68 = load %struct.virtio_iommu_probe_property*, %struct.virtio_iommu_probe_property** %12, align 8
  %69 = getelementptr inbounds %struct.virtio_iommu_probe_property, %struct.virtio_iommu_probe_property* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load i32, i32* @VIRTIO_IOMMU_PROBE_T_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %125, %62
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @VIRTIO_IOMMU_PROBE_T_NONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.viommu_dev*, %struct.viommu_dev** %4, align 8
  %81 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %79, %83
  br label %85

85:                                               ; preds = %78, %74
  %86 = phi i1 [ false, %74 ], [ %84, %78 ]
  br i1 %86, label %87, label %139

87:                                               ; preds = %85
  %88 = load %struct.virtio_iommu_probe_property*, %struct.virtio_iommu_probe_property** %12, align 8
  %89 = getelementptr inbounds %struct.virtio_iommu_probe_property, %struct.virtio_iommu_probe_property* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  switch i32 %95, label %102 [
    i32 128, label %96
  ]

96:                                               ; preds = %87
  %97 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %14, align 8
  %98 = load %struct.virtio_iommu_probe_property*, %struct.virtio_iommu_probe_property** %12, align 8
  %99 = bitcast %struct.virtio_iommu_probe_property* %98 to i8*
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @viommu_add_resv_mem(%struct.viommu_endpoint* %97, i8* %99, i32 %100)
  store i32 %101, i32* %6, align 4
  br label %106

102:                                              ; preds = %87
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.viommu_dev*, %struct.viommu_dev** %4, align 8
  %120 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp uge i64 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %139

125:                                              ; preds = %113
  %126 = load %struct.virtio_iommu_req_probe*, %struct.virtio_iommu_req_probe** %11, align 8
  %127 = getelementptr inbounds %struct.virtio_iommu_req_probe, %struct.virtio_iommu_req_probe* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr i8, i8* %129, i64 %130
  %132 = bitcast i8* %131 to %struct.virtio_iommu_probe_property*
  store %struct.virtio_iommu_probe_property* %132, %struct.virtio_iommu_probe_property** %12, align 8
  %133 = load %struct.virtio_iommu_probe_property*, %struct.virtio_iommu_probe_property** %12, align 8
  %134 = getelementptr inbounds %struct.virtio_iommu_probe_property, %struct.virtio_iommu_probe_property* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = load i32, i32* @VIRTIO_IOMMU_PROBE_T_MASK, align 4
  %138 = and i32 %136, %137
  store i32 %138, i32* %7, align 4
  br label %74

139:                                              ; preds = %124, %85
  br label %140

140:                                              ; preds = %139, %61
  %141 = load %struct.virtio_iommu_req_probe*, %struct.virtio_iommu_req_probe** %11, align 8
  %142 = call i32 @kfree(%struct.virtio_iommu_req_probe* %141)
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %39, %24
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local %struct.virtio_iommu_req_probe* @kzalloc(i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @viommu_send_req_sync(%struct.viommu_dev*, %struct.virtio_iommu_req_probe*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @viommu_add_resv_mem(%struct.viommu_endpoint*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.virtio_iommu_req_probe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
