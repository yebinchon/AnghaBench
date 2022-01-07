; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_fill_device_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_fill_device_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.rvt_dev_info }
%struct.rvt_dev_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32 }

@IB_DEVICE_BAD_PKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_BAD_QKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_SHUTDOWN_PORT = common dso_local global i32 0, align 4
@IB_DEVICE_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@IB_DEVICE_PORT_ACTIVE_EVENT = common dso_local global i32 0, align 4
@IB_DEVICE_SRQ_RESIZE = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@IB_DEVICE_RDMA_NETDEV_OPA_VNIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ib_hfi1_sys_image_guid = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@hfi1_max_qps = common dso_local global i32 0, align 4
@hfi1_max_qp_wrs = common dso_local global i64 0, align 8
@HFI1_QP_WQE_INVALID = common dso_local global i64 0, align 8
@hfi1_max_sges = common dso_local global i8* null, align 8
@hfi1_max_cqs = common dso_local global i32 0, align 4
@hfi1_max_ahs = common dso_local global i32 0, align 4
@hfi1_max_cqes = common dso_local global i32 0, align 4
@hfi1_max_pds = common dso_local global i32 0, align 4
@HFI1_MAX_RDMA_ATOMIC = common dso_local global i32 0, align 4
@hfi1_max_srqs = common dso_local global i32 0, align 4
@hfi1_max_srq_wrs = common dso_local global i32 0, align 4
@hfi1_max_srq_sges = common dso_local global i32 0, align 4
@IB_ATOMIC_GLOB = common dso_local global i32 0, align 4
@hfi1_max_mcast_grps = common dso_local global i32 0, align 4
@hfi1_max_mcast_qp_attached = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @hfi1_fill_device_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_fill_device_attr(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.rvt_dev_info*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store %struct.rvt_dev_info* %7, %struct.rvt_dev_info** %3, align 8
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %12 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 136)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @dc8051_ver_maj(i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 32
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @dc8051_ver_min(i32 %19)
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 16
  %23 = or i32 %18, %22
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @dc8051_ver_patch(i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = or i32 %23, %26
  %28 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %29 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* @IB_DEVICE_BAD_PKEY_CNTR, align 4
  %33 = load i32, i32* @IB_DEVICE_BAD_QKEY_CNTR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IB_DEVICE_SHUTDOWN_PORT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IB_DEVICE_SYS_IMAGE_GUID, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IB_DEVICE_PORT_ACTIVE_EVENT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IB_DEVICE_SRQ_RESIZE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IB_DEVICE_RDMA_NETDEV_OPA_VNIC, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %50 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %55 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 28
  store i32 %53, i32* %57, align 8
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %59 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 16
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %63 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %61, %65
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %68 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %66, %69
  %71 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %72 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 8
  %75 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %76 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %75, i32 0, i32 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %81 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 27
  store i32 %79, i32* %83, align 4
  %84 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %85 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %88 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 26
  store i32 %86, i32* %90, align 8
  %91 = load i32, i32* @ib_hfi1_sys_image_guid, align 4
  %92 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %93 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 25
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* @U64_MAX, align 4
  %97 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %98 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 24
  store i32 %96, i32* %100, align 8
  %101 = load i32, i32* @UINT_MAX, align 4
  %102 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %103 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 23
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* @hfi1_max_qps, align 4
  %107 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %108 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 22
  store i32 %106, i32* %110, align 8
  %111 = load i64, i64* @hfi1_max_qp_wrs, align 8
  %112 = load i64, i64* @HFI1_QP_WQE_INVALID, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %1
  %115 = load i64, i64* @HFI1_QP_WQE_INVALID, align 8
  %116 = sub nsw i64 %115, 1
  br label %119

117:                                              ; preds = %1
  %118 = load i64, i64* @hfi1_max_qp_wrs, align 8
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i64 [ %116, %114 ], [ %118, %117 ]
  %121 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %122 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 21
  store i64 %120, i64* %124, align 8
  %125 = load i8*, i8** @hfi1_max_sges, align 8
  %126 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %127 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 20
  store i8* %125, i8** %129, align 8
  %130 = load i8*, i8** @hfi1_max_sges, align 8
  %131 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %132 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 19
  store i8* %130, i8** %134, align 8
  %135 = load i8*, i8** @hfi1_max_sges, align 8
  %136 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %137 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 18
  store i8* %135, i8** %139, align 8
  %140 = load i32, i32* @hfi1_max_cqs, align 4
  %141 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %142 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 17
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* @hfi1_max_ahs, align 4
  %146 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %147 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 16
  store i32 %145, i32* %149, align 8
  %150 = load i32, i32* @hfi1_max_cqes, align 4
  %151 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %152 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 15
  store i32 %150, i32* %154, align 4
  %155 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %156 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  store i32 32767, i32* %158, align 4
  %159 = load i32, i32* @hfi1_max_pds, align 4
  %160 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %161 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 14
  store i32 %159, i32* %163, align 8
  %164 = load i32, i32* @HFI1_MAX_RDMA_ATOMIC, align 4
  %165 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %166 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 13
  store i32 %164, i32* %168, align 4
  %169 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %170 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 4
  store i32 255, i32* %172, align 8
  %173 = load i32, i32* @hfi1_max_srqs, align 4
  %174 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %175 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 12
  store i32 %173, i32* %177, align 8
  %178 = load i32, i32* @hfi1_max_srq_wrs, align 4
  %179 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %180 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 11
  store i32 %178, i32* %182, align 4
  %183 = load i32, i32* @hfi1_max_srq_sges, align 4
  %184 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %185 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 10
  store i32 %183, i32* %187, align 8
  %188 = load i32, i32* @IB_ATOMIC_GLOB, align 4
  %189 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %190 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 9
  store i32 %188, i32* %192, align 4
  %193 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %194 = call i32 @hfi1_get_npkeys(%struct.hfi1_devdata* %193)
  %195 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %196 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 8
  store i32 %194, i32* %198, align 8
  %199 = load i32, i32* @hfi1_max_mcast_grps, align 4
  %200 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %201 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 5
  store i32 %199, i32* %203, align 4
  %204 = load i32, i32* @hfi1_max_mcast_qp_attached, align 4
  %205 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %206 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 6
  store i32 %204, i32* %208, align 8
  %209 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %210 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %215 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %213, %218
  %220 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %221 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 7
  store i32 %219, i32* %223, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @dc8051_ver_maj(i32) #1

declare dso_local i64 @dc8051_ver_min(i32) #1

declare dso_local i64 @dc8051_ver_patch(i32) #1

declare dso_local i32 @hfi1_get_npkeys(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
