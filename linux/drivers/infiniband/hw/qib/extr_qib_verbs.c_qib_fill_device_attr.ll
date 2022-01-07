; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_fill_device_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_fill_device_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.rvt_dev_info }
%struct.rvt_dev_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@ib_qib_max_pds = common dso_local global i32 0, align 4
@ib_qib_max_ahs = common dso_local global i8* null, align 8
@IB_DEVICE_BAD_PKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_BAD_QKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_SHUTDOWN_PORT = common dso_local global i32 0, align 4
@IB_DEVICE_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@IB_DEVICE_PORT_ACTIVE_EVENT = common dso_local global i32 0, align 4
@IB_DEVICE_SRQ_RESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@QIB_SRC_OUI_1 = common dso_local global i32 0, align 4
@QIB_SRC_OUI_2 = common dso_local global i32 0, align 4
@QIB_SRC_OUI_3 = common dso_local global i32 0, align 4
@ib_qib_sys_image_guid = common dso_local global i32 0, align 4
@ib_qib_max_qps = common dso_local global i32 0, align 4
@ib_qib_max_qp_wrs = common dso_local global i32 0, align 4
@ib_qib_max_sges = common dso_local global i8* null, align 8
@ib_qib_max_cqs = common dso_local global i32 0, align 4
@ib_qib_max_cqes = common dso_local global i32 0, align 4
@QIB_MAX_RDMA_ATOMIC = common dso_local global i32 0, align 4
@ib_qib_max_srqs = common dso_local global i32 0, align 4
@ib_qib_max_srq_wrs = common dso_local global i32 0, align 4
@ib_qib_max_srq_sges = common dso_local global i32 0, align 4
@IB_ATOMIC_GLOB = common dso_local global i32 0, align 4
@ib_qib_max_mcast_grps = common dso_local global i32 0, align 4
@ib_qib_max_mcast_qp_attached = common dso_local global i32 0, align 4
@qib_post_parms = common dso_local global i32 0, align 4
@ib_qib_wc_opcode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_fill_device_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_fill_device_attr(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.rvt_dev_info*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %4 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store %struct.rvt_dev_info* %6, %struct.rvt_dev_info** %3, align 8
  %7 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %8 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 136)
  %11 = load i32, i32* @ib_qib_max_pds, align 4
  %12 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %13 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 26
  store i32 %11, i32* %15, align 8
  %16 = load i8*, i8** @ib_qib_max_ahs, align 8
  %17 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %18 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 14
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* @IB_DEVICE_BAD_PKEY_CNTR, align 4
  %22 = load i32, i32* @IB_DEVICE_BAD_QKEY_CNTR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IB_DEVICE_SHUTDOWN_PORT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IB_DEVICE_SYS_IMAGE_GUID, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IB_DEVICE_PORT_ACTIVE_EVENT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IB_DEVICE_SRQ_RESIZE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %35 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %40 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 25
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @QIB_SRC_OUI_1, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* @QIB_SRC_OUI_2, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 %44, %46
  %48 = load i32, i32* @QIB_SRC_OUI_3, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %51 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %58 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 24
  store i32 %56, i32* %60, align 8
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %65 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 23
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* @ib_qib_sys_image_guid, align 4
  %69 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %70 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 22
  store i32 %68, i32* %72, align 8
  %73 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %74 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i64 -1, i64* %76, align 8
  %77 = load i32, i32* @ib_qib_max_qps, align 4
  %78 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %79 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 21
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @ib_qib_max_qp_wrs, align 4
  %83 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %84 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 20
  store i32 %82, i32* %86, align 8
  %87 = load i8*, i8** @ib_qib_max_sges, align 8
  %88 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %89 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 19
  store i8* %87, i8** %91, align 8
  %92 = load i8*, i8** @ib_qib_max_sges, align 8
  %93 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %94 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 18
  store i8* %92, i8** %96, align 8
  %97 = load i8*, i8** @ib_qib_max_sges, align 8
  %98 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %99 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 17
  store i8* %97, i8** %101, align 8
  %102 = load i32, i32* @ib_qib_max_cqs, align 4
  %103 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %104 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 16
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* @ib_qib_max_cqes, align 4
  %108 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %109 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 15
  store i32 %107, i32* %111, align 8
  %112 = load i8*, i8** @ib_qib_max_ahs, align 8
  %113 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %114 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 14
  store i8* %112, i8** %116, align 8
  %117 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %118 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  store i32 32767, i32* %120, align 8
  %121 = load i32, i32* @QIB_MAX_RDMA_ATOMIC, align 4
  %122 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %123 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 13
  store i32 %121, i32* %125, align 8
  %126 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %127 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  store i32 255, i32* %129, align 4
  %130 = load i32, i32* @ib_qib_max_srqs, align 4
  %131 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %132 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 12
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* @ib_qib_max_srq_wrs, align 4
  %136 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %137 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 11
  store i32 %135, i32* %139, align 8
  %140 = load i32, i32* @ib_qib_max_srq_sges, align 4
  %141 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %142 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 10
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* @IB_ATOMIC_GLOB, align 4
  %146 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %147 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 9
  store i32 %145, i32* %149, align 8
  %150 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %151 = call i32 @qib_get_npkeys(%struct.qib_devdata* %150)
  %152 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %153 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 8
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* @ib_qib_max_mcast_grps, align 4
  %157 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %158 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 5
  store i32 %156, i32* %160, align 8
  %161 = load i32, i32* @ib_qib_max_mcast_qp_attached, align 4
  %162 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %163 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 6
  store i32 %161, i32* %165, align 4
  %166 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %167 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %172 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %170, %175
  %177 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %178 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 7
  store i32 %176, i32* %180, align 8
  %181 = load i32, i32* @qib_post_parms, align 4
  %182 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %183 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %184, i32 0, i32 1
  store i32 %181, i32* %185, align 4
  %186 = load i32, i32* @ib_qib_wc_opcode, align 4
  %187 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %188 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %189, i32 0, i32 0
  store i32 %186, i32* %190, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @qib_get_npkeys(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
