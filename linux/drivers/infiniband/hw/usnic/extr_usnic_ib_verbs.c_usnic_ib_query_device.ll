; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i64, i64 }
%struct.usnic_ib_dev = type { i32*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_10__*, %struct.ethtool_drvinfo*)* }
%struct.ethtool_drvinfo = type { i32* }
%union.ib_gid = type { i32* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USNIC_UIOM_MAX_MR_SIZE = common dso_local global i32 0, align 4
@USNIC_UIOM_PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_CISCO = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_CISCO_VIC_USPACE_NIC = common dso_local global i32 0, align 4
@USNIC_VNIC_RES_TYPE_WQ = common dso_local global i64 0, align 8
@USNIC_VNIC_RES_TYPE_RQ = common dso_local global i64 0, align 8
@IB_DEVICE_PORT_ACTIVE_EVENT = common dso_local global i32 0, align 4
@IB_DEVICE_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@USNIC_VNIC_RES_TYPE_CQ = common dso_local global i64 0, align 8
@USNIC_UIOM_MAX_PD_CNT = common dso_local global i32 0, align 4
@USNIC_UIOM_MAX_MR_CNT = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.usnic_ib_dev*, align 8
  %9 = alloca %union.ib_gid, align 8
  %10 = alloca %struct.ethtool_drvinfo, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = call %struct.usnic_ib_dev* @to_usdev(%struct.ib_device* %12)
  store %struct.usnic_ib_dev* %13, %struct.usnic_ib_dev** %8, align 8
  %14 = call i32 @usnic_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %16 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %21 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %170

27:                                               ; preds = %19
  %28 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %29 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %32 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %31, i32 0, i32 5
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_10__*, %struct.ethtool_drvinfo*)*, i32 (%struct.TYPE_10__*, %struct.ethtool_drvinfo*)** %36, align 8
  %38 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %39 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %38, i32 0, i32 5
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = call i32 %37(%struct.TYPE_10__* %40, %struct.ethtool_drvinfo* %10)
  %42 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %43 = call i32 @memset(%struct.ib_device_attr* %42, i32 0, i32 168)
  %44 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %45 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %44, i32 0, i32 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %50 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %49, i32 0, i32 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %union.ib_gid* %9 to i32**
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = call i32 @usnic_mac_ip_to_gid(i32 %48, i32 %53, i32* %56)
  %58 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %59 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %58, i32 0, i32 26
  %60 = bitcast %union.ib_gid* %9 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @memcpy(i32* %59, i32* %61, i32 4)
  %63 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %10, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %66, i32 0, i32 25
  %68 = call i32 @usnic_ib_fw_string_to_u64(i32* %65, i32* %67)
  %69 = load i32, i32* @USNIC_UIOM_MAX_MR_SIZE, align 4
  %70 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %71 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %70, i32 0, i32 24
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @USNIC_UIOM_PAGE_SIZE, align 4
  %73 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %74 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %73, i32 0, i32 23
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @PCI_VENDOR_ID_CISCO, align 4
  %76 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %77 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %76, i32 0, i32 22
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @PCI_DEVICE_ID_CISCO_VIC_USPACE_NIC, align 4
  %79 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %80 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %79, i32 0, i32 21
  store i32 %78, i32* %80, align 4
  %81 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %82 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %81, i32 0, i32 3
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %87 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %86, i32 0, i32 20
  store i32 %85, i32* %87, align 8
  %88 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %89 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @USNIC_VNIC_RES_TYPE_WQ, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %95 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @USNIC_VNIC_RES_TYPE_RQ, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @max(i32 %93, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %103 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %102, i32 0, i32 2
  %104 = call i32 @kref_read(i32* %103)
  %105 = mul nsw i32 %101, %104
  %106 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %107 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @IB_DEVICE_PORT_ACTIVE_EVENT, align 4
  %109 = load i32, i32* @IB_DEVICE_SYS_IMAGE_GUID, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @IB_DEVICE_BLOCK_MULTICAST_LOOPBACK, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %114 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %116 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @USNIC_VNIC_RES_TYPE_CQ, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %122 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %121, i32 0, i32 2
  %123 = call i32 @kref_read(i32* %122)
  %124 = mul nsw i32 %120, %123
  %125 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @USNIC_UIOM_MAX_PD_CNT, align 4
  %128 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %129 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %128, i32 0, i32 19
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @USNIC_UIOM_MAX_MR_CNT, align 4
  %131 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %131, i32 0, i32 18
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %134 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %133, i32 0, i32 17
  store i64 0, i64* %134, align 8
  %135 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %136 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %135, i32 0, i32 16
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* @IB_ATOMIC_NONE, align 4
  %138 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %139 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %138, i32 0, i32 14
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %141 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %140, i32 0, i32 14
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %144 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %143, i32 0, i32 15
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %146 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %145, i32 0, i32 13
  store i64 0, i64* %146, align 8
  %147 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %148 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %147, i32 0, i32 12
  store i64 0, i64* %148, align 8
  %149 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %149, i32 0, i32 11
  store i64 0, i64* %150, align 8
  %151 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %152 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %151, i32 0, i32 10
  store i64 0, i64* %152, align 8
  %153 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %154 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %153, i32 0, i32 9
  store i64 0, i64* %154, align 8
  %155 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %156 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %155, i32 0, i32 8
  store i64 0, i64* %156, align 8
  %157 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %158 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %157, i32 0, i32 7
  store i64 0, i64* %158, align 8
  %159 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %160 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %159, i32 0, i32 6
  store i64 0, i64* %160, align 8
  %161 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %162 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %161, i32 0, i32 5
  store i64 0, i64* %162, align 8
  %163 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %164 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %163, i32 0, i32 4
  store i64 0, i64* %164, align 8
  %165 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %166 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %165, i32 0, i32 3
  store i64 0, i64* %166, align 8
  %167 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %168 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %167, i32 0, i32 1
  %169 = call i32 @mutex_unlock(i32* %168)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %27, %24
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.usnic_ib_dev* @to_usdev(%struct.ib_device*) #1

declare dso_local i32 @usnic_dbg(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @usnic_mac_ip_to_gid(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usnic_ib_fw_string_to_u64(i32*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
