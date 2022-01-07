; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_set_guid_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_set_guid_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_next_alias_guid_work = type { i32, i32, i32, %struct.mlx4_sriov_alias_guid_info_rec_det }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.ib_sa_guidinfo_rec = type { i64, i32, i32, i32 }
%struct.ib_port_attr = type { i64, i32, i32, i32 }
%struct.mlx4_alias_guid_work_context = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.mlx4_ib_dev* }

@.str = private unnamed_addr constant [47 x i8] c"mlx4_ib_query_port failed (err: %d), port: %d\0A\00", align 1
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"port %d not active...rescheduling\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GUID_REC_SIZE = common dso_local global i32 0, align 4
@NUM_ALIAS_GUID_IN_REC = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_LID = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_BLOCK_NUM = common dso_local global i32 0, align 4
@aliasguid_query_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"ib_sa_guid_info_rec_query failed, query_id: %d. will reschedule to the next 1 sec.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.mlx4_next_alias_guid_work*)* @set_guid_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_guid_rec(%struct.ib_device* %0, %struct.mlx4_next_alias_guid_work* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.mlx4_next_alias_guid_work*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.ib_sa_guidinfo_rec, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_port_attr, align 8
  %11 = alloca %struct.mlx4_alias_guid_work_context*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlx4_sriov_alias_guid_info_rec_det*, align 8
  %18 = alloca %struct.list_head*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.mlx4_next_alias_guid_work* %1, %struct.mlx4_next_alias_guid_work** %5, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %20 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %19)
  store %struct.mlx4_ib_dev* %20, %struct.mlx4_ib_dev** %7, align 8
  %21 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %15, align 4
  %25 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %28, i32 0, i32 3
  store %struct.mlx4_sriov_alias_guid_info_rec_det* %29, %struct.mlx4_sriov_alias_guid_info_rec_det** %17, align 8
  %30 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.list_head* %39, %struct.list_head** %18, align 8
  %40 = bitcast %struct.ib_port_attr* %10 to %struct.ib_sa_guidinfo_rec*
  %41 = call i32 @memset(%struct.ib_sa_guidinfo_rec* %40, i32 0, i32 24)
  %42 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %43 = load i32, i32* %15, align 4
  %44 = bitcast %struct.ib_port_attr* %10 to %struct.ib_sa_guidinfo_rec*
  %45 = call i32 @__mlx4_ib_query_port(%struct.ib_device* %42, i32 %43, %struct.ib_sa_guidinfo_rec* %44, i32 1)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %250

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32, i32* %15, align 4
  %60 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @HZ, align 4
  %62 = mul nsw i32 5, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %12, align 8
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %191

66:                                               ; preds = %53
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.mlx4_alias_guid_work_context* @kmalloc(i32 48, i32 %67)
  store %struct.mlx4_alias_guid_work_context* %68, %struct.mlx4_alias_guid_work_context** %11, align 8
  %69 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %70 = icmp ne %struct.mlx4_alias_guid_work_context* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @HZ, align 4
  %75 = mul nsw i32 %74, 5
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %12, align 8
  br label %191

77:                                               ; preds = %66
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %80 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %82 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %83 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %82, i32 0, i32 8
  store %struct.mlx4_ib_dev* %81, %struct.mlx4_ib_dev** %83, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %86 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %17, align 8
  %88 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %91 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %93 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %96 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 4
  %97 = call i32 @memset(%struct.ib_sa_guidinfo_rec* %8, i32 0, i32 24)
  %98 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ib_lid_be16(i32 %99)
  %101 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, %struct.ib_sa_guidinfo_rec* %8, i32 0, i32 3
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* %16, align 4
  %103 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, %struct.ib_sa_guidinfo_rec* %8, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, %struct.ib_sa_guidinfo_rec* %8, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %17, align 8
  %107 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GUID_REC_SIZE, align 4
  %110 = load i32, i32* @NUM_ALIAS_GUID_IN_REC, align 4
  %111 = mul nsw i32 %109, %110
  %112 = call i32 @memcpy(i32 %105, i32 %108, i32 %111)
  %113 = load i32, i32* @IB_SA_GUIDINFO_REC_LID, align 4
  %114 = load i32, i32* @IB_SA_GUIDINFO_REC_BLOCK_NUM, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %17, align 8
  %117 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %115, %118
  store i32 %119, i32* %9, align 4
  %120 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %121 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %120, i32 0, i32 6
  %122 = call i32 @init_completion(i32* %121)
  %123 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %124 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %14, align 8
  %128 = call i32 @spin_lock_irqsave(i32* %126, i64 %127)
  %129 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %130 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %129, i32 0, i32 4
  %131 = load %struct.list_head*, %struct.list_head** %18, align 8
  %132 = call i32 @list_add_tail(i32* %130, %struct.list_head* %131)
  %133 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %134 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %140 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %148 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = load i32, i32* @aliasguid_query_handler, align 4
  %152 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %153 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %154 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %153, i32 0, i32 5
  %155 = call i64 @ib_sa_guid_info_rec_query(i32 %143, %struct.ib_device* %144, i32 %145, %struct.ib_sa_guidinfo_rec* %8, i32 %146, i32 %149, i32 1000, i32 %150, i32 %151, %struct.mlx4_alias_guid_work_context* %152, i32* %154)
  %156 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %157 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %156, i32 0, i32 3
  store i64 %155, i64* %157, align 8
  %158 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %159 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %190

162:                                              ; preds = %77
  %163 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %164 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %169 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %14, align 8
  %173 = call i32 @spin_lock_irqsave(i32* %171, i64 %172)
  %174 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %175 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %174, i32 0, i32 4
  %176 = call i32 @list_del(i32* %175)
  %177 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %178 = call i32 @kfree(%struct.mlx4_alias_guid_work_context* %177)
  %179 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %180 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64, i64* %14, align 8
  %184 = call i32 @spin_unlock_irqrestore(i32* %182, i64 %183)
  %185 = load i32, i32* @HZ, align 4
  %186 = mul nsw i32 1, %185
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %12, align 8
  %188 = load i32, i32* @EAGAIN, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %6, align 4
  br label %191

190:                                              ; preds = %77
  store i32 0, i32* %6, align 4
  br label %248

191:                                              ; preds = %162, %71, %58
  %192 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %193 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %13, align 8
  %196 = call i32 @spin_lock_irqsave(i32* %194, i64 %195)
  %197 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %198 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i64, i64* %14, align 8
  %202 = call i32 @spin_lock_irqsave(i32* %200, i64 %201)
  %203 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %16, align 4
  %206 = call i32 @invalidate_guid_record(%struct.mlx4_ib_dev* %203, i32 %204, i32 %205)
  %207 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %208 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %236, label %212

212:                                              ; preds = %191
  %213 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %214 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %225 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i64, i64* %12, align 8
  %235 = call i32 @queue_delayed_work(i32 %223, i32* %233, i64 %234)
  br label %236

236:                                              ; preds = %212, %191
  %237 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %238 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i64, i64* %14, align 8
  %242 = call i32 @spin_unlock_irqrestore(i32* %240, i64 %241)
  %243 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %244 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i64, i64* %13, align 8
  %247 = call i32 @spin_unlock_irqrestore(i32* %245, i64 %246)
  br label %248

248:                                              ; preds = %236, %190
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %248, %48
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_sa_guidinfo_rec*, i32, i32) #1

declare dso_local i32 @__mlx4_ib_query_port(%struct.ib_device*, i32, %struct.ib_sa_guidinfo_rec*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.mlx4_alias_guid_work_context* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_lid_be16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ib_sa_guid_info_rec_query(i32, %struct.ib_device*, i32, %struct.ib_sa_guidinfo_rec*, i32, i32, i32, i32, i32, %struct.mlx4_alias_guid_work_context*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_alias_guid_work_context*) #1

declare dso_local i32 @invalidate_guid_record(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
