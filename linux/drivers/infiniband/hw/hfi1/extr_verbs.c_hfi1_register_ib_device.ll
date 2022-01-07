; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_register_ib_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_register_ib_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, %struct.hfi1_ibdev, %struct.hfi1_pportdata*, i32, i32, i32, %struct.TYPE_10__* }
%struct.hfi1_ibdev = type { %struct.TYPE_13__, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.ib_device, i32, i32, %struct.TYPE_12__, i64, %struct.TYPE_11__ }
%struct.ib_device = type { i32, i32, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hfi1_pportdata = type { i32, %struct.hfi1_ibport }
%struct.hfi1_ibport = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@mem_timer = common dso_local global i32 0, align 4
@HFI1_PORT_GUID_INDEX = common dso_local global i32 0, align 4
@ib_hfi1_sys_image_guid = common dso_local global i64 0, align 8
@hfi1_dev_ops = common dso_local global i32 0, align 4
@get_pci_dev = common dso_local global i32 0, align 4
@hfi1_check_ah = common dso_local global i32 0, align 4
@hfi1_notify_new_ah = common dso_local global i32 0, align 4
@hfi1_get_guid_be = common dso_local global i32 0, align 4
@query_port = common dso_local global i32 0, align 4
@shut_down_port = common dso_local global i32 0, align 4
@hfi1_cap_mask_chg = common dso_local global i32 0, align 4
@hfi1_qp_table_size = common dso_local global i32 0, align 4
@kdeth_qp = common dso_local global i32 0, align 4
@HFI1_MAX_RDMA_ATOMIC = common dso_local global i32 0, align 4
@PSN_MASK = common dso_local global i32 0, align 4
@PSN_SHIFT = common dso_local global i32 0, align 4
@PSN_MODIFY_MASK = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_INTEL_OPA = common dso_local global i32 0, align 4
@RDMA_CORE_CAP_OPA_AH = common dso_local global i32 0, align 4
@OPA_MGMT_MAD_SIZE = common dso_local global i32 0, align 4
@qp_priv_alloc = common dso_local global i32 0, align 4
@hfi1_qp_priv_init = common dso_local global i32 0, align 4
@qp_priv_free = common dso_local global i32 0, align 4
@free_all_qps = common dso_local global i32 0, align 4
@notify_qp_reset = common dso_local global i32 0, align 4
@hfi1_do_send_from_rvt = common dso_local global i32 0, align 4
@hfi1_schedule_send = common dso_local global i32 0, align 4
@_hfi1_schedule_send = common dso_local global i32 0, align 4
@get_pmtu_from_attr = common dso_local global i32 0, align 4
@notify_error_qp = common dso_local global i8* null, align 8
@flush_qp_waiters = common dso_local global i32 0, align 4
@stop_send_queue = common dso_local global i32 0, align 4
@quiesce_qp = common dso_local global i32 0, align 4
@mtu_from_qp = common dso_local global i32 0, align 4
@mtu_to_path_mtu = common dso_local global i32 0, align 4
@hfi1_check_modify_qp = common dso_local global i32 0, align 4
@hfi1_modify_qp = common dso_local global i32 0, align 4
@hfi1_restart_rc = common dso_local global i32 0, align 4
@hfi1_setup_wqe = common dso_local global i32 0, align 4
@hfi1_comp_vect_mappings_lookup = common dso_local global i32 0, align 4
@hfi1_lkey_table_size = common dso_local global i32 0, align 4
@sge_copy_mode = common dso_local global i32 0, align 4
@wss_threshold = common dso_local global i32 0, align 4
@wss_clean_period = common dso_local global i32 0, align 4
@HFI1_TID_RDMA_WRITE_CNT = common dso_local global i32 0, align 4
@hfi1_post_parms = common dso_local global i32 0, align 4
@ib_hfi1_wc_opcode = common dso_local global i32 0, align 4
@ib_hfi1_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot register verbs: %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_register_ib_device(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.hfi1_ibdev*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.hfi1_pportdata*, align 8
  %7 = alloca %struct.hfi1_ibport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 1
  store %struct.hfi1_ibdev* %11, %struct.hfi1_ibdev** %4, align 8
  %12 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %13 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store %struct.ib_device* %14, %struct.ib_device** %5, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 2
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %16, align 8
  store %struct.hfi1_pportdata* %17, %struct.hfi1_pportdata** %6, align 8
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %18, i32 0, i32 1
  store %struct.hfi1_ibport* %19, %struct.hfi1_ibport** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %27, i64 %29
  %31 = call i32 @init_ibport(%struct.hfi1_pportdata* %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %37 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %36, i32 0, i32 5
  %38 = load i32, i32* @mem_timer, align 4
  %39 = call i32 @timer_setup(i32* %37, i32 %38, i32 0)
  %40 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %41 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %40, i32 0, i32 4
  %42 = call i32 @seqlock_init(i32* %41)
  %43 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %44 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %43, i32 0, i32 3
  %45 = call i32 @seqlock_init(i32* %44)
  %46 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %47 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %46, i32 0, i32 2
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %50 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %49, i32 0, i32 1
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %53 = call i32 @verbs_txreq_init(%struct.hfi1_ibdev* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %474

57:                                               ; preds = %35
  %58 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %7, align 8
  %59 = load i32, i32* @HFI1_PORT_GUID_INDEX, align 4
  %60 = call i64 @get_sguid(%struct.hfi1_ibport* %58, i32 %59)
  %61 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %62 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* @ib_hfi1_sys_image_guid, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %67 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* @ib_hfi1_sys_image_guid, align 8
  br label %69

69:                                               ; preds = %65, %57
  %70 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %71 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %74 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %76 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %75, i32 0, i32 6
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %80 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32* %78, i32** %81, align 8
  %82 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %83 = call i32 @ib_set_device_ops(%struct.ib_device* %82, i32* @hfi1_dev_ops)
  %84 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %85 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.TYPE_14__* (...) @init_utsname()
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @strlcpy(i32 %86, i32 %89, i32 4)
  %91 = load i32, i32* @get_pci_dev, align 4
  %92 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %93 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 26
  store i32 %91, i32* %96, align 8
  %97 = load i32, i32* @hfi1_check_ah, align 4
  %98 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %99 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 25
  store i32 %97, i32* %102, align 4
  %103 = load i32, i32* @hfi1_notify_new_ah, align 4
  %104 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %105 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 24
  store i32 %103, i32* %108, align 8
  %109 = load i32, i32* @hfi1_get_guid_be, align 4
  %110 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %111 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 23
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* @query_port, align 4
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %117 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 22
  store i32 %115, i32* %120, align 8
  %121 = load i32, i32* @shut_down_port, align 4
  %122 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %123 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 21
  store i32 %121, i32* %126, align 4
  %127 = load i32, i32* @hfi1_cap_mask_chg, align 4
  %128 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %129 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 20
  store i32 %127, i32* %132, align 8
  %133 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %134 = call i32 @hfi1_fill_device_attr(%struct.hfi1_devdata* %133)
  %135 = load i32, i32* @hfi1_qp_table_size, align 4
  %136 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %137 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 20
  store i32 %135, i32* %140, align 8
  %141 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %142 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 19
  store i64 0, i64* %145, align 8
  %146 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %147 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %152 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %155 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 18
  store i32 %153, i32* %158, align 8
  %159 = load i32, i32* @kdeth_qp, align 4
  %160 = shl i32 %159, 16
  %161 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %162 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  store i32 %160, i32* %165, align 4
  %166 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %167 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 65535
  %173 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %174 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  store i32 %172, i32* %177, align 8
  %178 = load i32, i32* @HFI1_MAX_RDMA_ATOMIC, align 4
  %179 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %180 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 17
  store i32 %178, i32* %183, align 4
  %184 = load i32, i32* @PSN_MASK, align 4
  %185 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %186 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 16
  store i32 %184, i32* %189, align 8
  %190 = load i32, i32* @PSN_SHIFT, align 4
  %191 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %192 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 15
  store i32 %190, i32* %195, align 4
  %196 = load i32, i32* @PSN_MODIFY_MASK, align 4
  %197 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %198 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 14
  store i32 %196, i32* %201, align 8
  %202 = load i32, i32* @RDMA_CORE_PORT_INTEL_OPA, align 4
  %203 = load i32, i32* @RDMA_CORE_CAP_OPA_AH, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %206 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 3
  store i32 %204, i32* %209, align 4
  %210 = load i32, i32* @OPA_MGMT_MAD_SIZE, align 4
  %211 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %212 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 13
  store i32 %210, i32* %215, align 4
  %216 = load i32, i32* @qp_priv_alloc, align 4
  %217 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %218 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 19
  store i32 %216, i32* %221, align 4
  %222 = load i32, i32* @hfi1_qp_priv_init, align 4
  %223 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %224 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 18
  store i32 %222, i32* %227, align 8
  %228 = load i32, i32* @qp_priv_free, align 4
  %229 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %230 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 17
  store i32 %228, i32* %233, align 4
  %234 = load i32, i32* @free_all_qps, align 4
  %235 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %236 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 16
  store i32 %234, i32* %239, align 8
  %240 = load i32, i32* @notify_qp_reset, align 4
  %241 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %242 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 15
  store i32 %240, i32* %245, align 4
  %246 = load i32, i32* @hfi1_do_send_from_rvt, align 4
  %247 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %248 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 5
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 14
  store i32 %246, i32* %251, align 8
  %252 = load i32, i32* @hfi1_schedule_send, align 4
  %253 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %254 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 13
  store i32 %252, i32* %257, align 4
  %258 = load i32, i32* @_hfi1_schedule_send, align 4
  %259 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %260 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 12
  store i32 %258, i32* %263, align 8
  %264 = load i32, i32* @get_pmtu_from_attr, align 4
  %265 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %266 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 11
  store i32 %264, i32* %269, align 4
  %270 = load i8*, i8** @notify_error_qp, align 8
  %271 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %272 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 7
  store i8* %270, i8** %275, align 8
  %276 = load i32, i32* @flush_qp_waiters, align 4
  %277 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %278 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 10
  store i32 %276, i32* %281, align 8
  %282 = load i32, i32* @stop_send_queue, align 4
  %283 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %284 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 9
  store i32 %282, i32* %287, align 4
  %288 = load i32, i32* @quiesce_qp, align 4
  %289 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %290 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 8
  store i32 %288, i32* %293, align 8
  %294 = load i8*, i8** @notify_error_qp, align 8
  %295 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %296 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 5
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 7
  store i8* %294, i8** %299, align 8
  %300 = load i32, i32* @mtu_from_qp, align 4
  %301 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %302 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 6
  store i32 %300, i32* %305, align 8
  %306 = load i32, i32* @mtu_to_path_mtu, align 4
  %307 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %308 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 5
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 5
  store i32 %306, i32* %311, align 4
  %312 = load i32, i32* @hfi1_check_modify_qp, align 4
  %313 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %314 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 5
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 4
  store i32 %312, i32* %317, align 8
  %318 = load i32, i32* @hfi1_modify_qp, align 4
  %319 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %320 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 5
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 3
  store i32 %318, i32* %323, align 4
  %324 = load i32, i32* @hfi1_restart_rc, align 4
  %325 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %326 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 2
  store i32 %324, i32* %329, align 8
  %330 = load i32, i32* @hfi1_setup_wqe, align 4
  %331 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %332 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 5
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 1
  store i32 %330, i32* %335, align 4
  %336 = load i32, i32* @hfi1_comp_vect_mappings_lookup, align 4
  %337 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %338 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 5
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 0
  store i32 %336, i32* %341, align 8
  %342 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %343 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %346 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %348, i32 0, i32 1
  store i32 %344, i32* %349, align 4
  %350 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %351 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %354 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 12
  store i32 %352, i32* %357, align 8
  %358 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %359 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 4
  store i64 0, i64* %361, align 8
  %362 = load i32, i32* @hfi1_lkey_table_size, align 4
  %363 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %364 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 3
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 11
  store i32 %362, i32* %367, align 4
  %368 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %369 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %372 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 4
  store i32 %370, i32* %375, align 8
  %376 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %377 = call i32 @hfi1_get_npkeys(%struct.hfi1_devdata* %376)
  %378 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %379 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 10
  store i32 %377, i32* %382, align 8
  %383 = load i32, i32* @sge_copy_mode, align 4
  %384 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %385 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 9
  store i32 %383, i32* %388, align 4
  %389 = load i32, i32* @wss_threshold, align 4
  %390 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %391 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 8
  store i32 %389, i32* %394, align 8
  %395 = load i32, i32* @wss_clean_period, align 4
  %396 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %397 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 7
  store i32 %395, i32* %400, align 4
  %401 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %402 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 5
  store i32 1, i32* %405, align 4
  %406 = load i32, i32* @HFI1_TID_RDMA_WRITE_CNT, align 4
  %407 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %408 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 6
  store i32 %406, i32* %411, align 8
  %412 = load i32, i32* @hfi1_post_parms, align 4
  %413 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %414 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 2
  store i32 %412, i32* %416, align 4
  %417 = load i32, i32* @ib_hfi1_wc_opcode, align 4
  %418 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %419 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 1
  store i32 %417, i32* %421, align 8
  %422 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %423 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %422, i32 0, i32 2
  %424 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %423, align 8
  store %struct.hfi1_pportdata* %424, %struct.hfi1_pportdata** %6, align 8
  store i32 0, i32* %8, align 4
  br label %425

425:                                              ; preds = %443, %69
  %426 = load i32, i32* %8, align 4
  %427 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %428 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp ult i32 %426, %429
  br i1 %430, label %431, label %448

431:                                              ; preds = %425
  %432 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %433 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %433, i32 0, i32 0
  %435 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %436 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %436, i32 0, i32 0
  %438 = load i32, i32* %8, align 4
  %439 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %440 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @rvt_init_port(%struct.TYPE_13__* %434, i32* %437, i32 %438, i32 %441)
  br label %443

443:                                              ; preds = %431
  %444 = load i32, i32* %8, align 4
  %445 = add i32 %444, 1
  store i32 %445, i32* %8, align 4
  %446 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %447 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %446, i32 1
  store %struct.hfi1_pportdata* %447, %struct.hfi1_pportdata** %6, align 8
  br label %425

448:                                              ; preds = %425
  %449 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %450 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 0
  %453 = call i32 @rdma_set_device_sysfs_group(%struct.ib_device* %452, i32* @ib_hfi1_attr_group)
  %454 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %455 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %455, i32 0, i32 0
  %457 = call i32 @rvt_register_device(%struct.TYPE_13__* %456)
  store i32 %457, i32* %9, align 4
  %458 = load i32, i32* %9, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %448
  br label %474

461:                                              ; preds = %448
  %462 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %463 = call i32 @hfi1_verbs_register_sysfs(%struct.hfi1_devdata* %462)
  store i32 %463, i32* %9, align 4
  %464 = load i32, i32* %9, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %461
  br label %469

467:                                              ; preds = %461
  %468 = load i32, i32* %9, align 4
  store i32 %468, i32* %2, align 4
  br label %482

469:                                              ; preds = %466
  %470 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %471 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %471, i32 0, i32 0
  %473 = call i32 @rvt_unregister_device(%struct.TYPE_13__* %472)
  br label %474

474:                                              ; preds = %469, %460, %56
  %475 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %476 = call i32 @verbs_txreq_exit(%struct.hfi1_ibdev* %475)
  %477 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %478 = load i32, i32* %9, align 4
  %479 = sub nsw i32 0, %478
  %480 = call i32 @dd_dev_err(%struct.hfi1_devdata* %477, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %479)
  %481 = load i32, i32* %9, align 4
  store i32 %481, i32* %2, align 4
  br label %482

482:                                              ; preds = %474, %467
  %483 = load i32, i32* %2, align 4
  ret i32 %483
}

declare dso_local i32 @init_ibport(%struct.hfi1_pportdata*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @seqlock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @verbs_txreq_init(%struct.hfi1_ibdev*) #1

declare dso_local i64 @get_sguid(%struct.hfi1_ibport*, i32) #1

declare dso_local i32 @ib_set_device_ops(%struct.ib_device*, i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @init_utsname(...) #1

declare dso_local i32 @hfi1_fill_device_attr(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_get_npkeys(%struct.hfi1_devdata*) #1

declare dso_local i32 @rvt_init_port(%struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @rdma_set_device_sysfs_group(%struct.ib_device*, i32*) #1

declare dso_local i32 @rvt_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @hfi1_verbs_register_sysfs(%struct.hfi1_devdata*) #1

declare dso_local i32 @rvt_unregister_device(%struct.TYPE_13__*) #1

declare dso_local i32 @verbs_txreq_exit(%struct.hfi1_ibdev*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
