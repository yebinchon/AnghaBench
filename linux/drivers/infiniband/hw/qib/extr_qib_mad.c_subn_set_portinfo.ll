; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_portinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i32, i32, i64 }
%struct.ib_device = type { i32 }
%struct.ib_port_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_event = type { i32, %struct.TYPE_5__, %struct.ib_device* }
%struct.TYPE_5__ = type { i32 }
%struct.qib_devdata = type { i32 (%struct.qib_pportdata*, i32, i32)*, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qib_ibport }
%struct.qib_ibport = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@_QIB_EVENT_LID_CHANGE_BIT = common dso_local global i32 0, align 4
@_QIB_EVENT_LMC_CHANGE_BIT = common dso_local global i32 0, align 4
@IB_EVENT_LID_CHANGE = common dso_local global i32 0, align 4
@IB_EVENT_SM_CHANGE = common dso_local global i32 0, align 4
@QIB_IB_CFG_LINKDEFAULT = common dso_local global i32 0, align 4
@IB_LINKINITCMD_SLEEP = common dso_local global i32 0, align 4
@IB_LINKINITCMD_POLL = common dso_local global i32 0, align 4
@QIB_IB_CFG_VL_HIGH_LIMIT = common dso_local global i32 0, align 4
@QIB_IB_CFG_OP_VLS = common dso_local global i32 0, align 4
@QIB_IB_LINKDOWN_ONLY = common dso_local global i64 0, align 8
@QIB_IB_LINKDOWN_SLEEP = common dso_local global i64 0, align 8
@QIB_IB_LINKDOWN = common dso_local global i64 0, align 8
@QIB_IB_LINKDOWN_DISABLE = common dso_local global i64 0, align 8
@QIBL_LINKV = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@QIB_IB_LINKARM = common dso_local global i64 0, align 8
@QIB_IB_LINKACTIVE = common dso_local global i64 0, align 8
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_set_portinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_set_portinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_info*, align 8
  %8 = alloca %struct.ib_event, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca %struct.qib_ibport*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %26 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %27 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ib_port_info*
  store %struct.ib_port_info* %29, %struct.ib_port_info** %7, align 8
  %30 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %31 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 128
  store i32 %33, i32* %12, align 4
  %34 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %35 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @be32_to_cpu(i32 %36)
  store i32 %37, i32* %25, align 4
  %38 = load i32, i32* %25, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %25, align 4
  br label %55

42:                                               ; preds = %3
  %43 = load i32, i32* %25, align 4
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %644

49:                                               ; preds = %42
  %50 = load i32, i32* %25, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %650

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %57 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %56)
  store %struct.qib_devdata* %57, %struct.qib_devdata** %9, align 8
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 1
  %60 = load %struct.qib_pportdata*, %struct.qib_pportdata** %59, align 8
  %61 = load i32, i32* %25, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %60, i64 %63
  store %struct.qib_pportdata* %64, %struct.qib_pportdata** %10, align 8
  %65 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %66 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %65, i32 0, i32 9
  store %struct.qib_ibport* %66, %struct.qib_ibport** %11, align 8
  %67 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %68 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 2
  store %struct.ib_device* %67, %struct.ib_device** %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %73 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %72, i32 0, i32 17
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %76 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 12
  store i32 %74, i32* %77, align 4
  %78 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %79 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %78, i32 0, i32 16
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %82 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 11
  store i32 %80, i32* %83, align 8
  %84 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %85 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %84, i32 0, i32 15
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @be16_to_cpu(i32 %86)
  %88 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %89 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 10
  store i64 %87, i64* %90, align 8
  %91 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %92 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %91, i32 0, i32 14
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @be16_to_cpu(i32 %93)
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %55
  %98 = load i64, i64* %14, align 8
  %99 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %100 = call i64 @be16_to_cpu(i32 %99)
  %101 = icmp sge i64 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %97, %55
  %103 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %104 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %105 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %158

108:                                              ; preds = %97
  %109 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %110 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %108
  %115 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %116 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %119 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 7
  %122 = icmp ne i32 %117, %121
  br i1 %122, label %123, label %157

123:                                              ; preds = %114, %108
  %124 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %125 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %131 = load i32, i32* @_QIB_EVENT_LID_CHANGE_BIT, align 4
  %132 = call i32 @qib_set_uevent_bits(%struct.qib_pportdata* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %123
  %134 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %135 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %138 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 7
  %141 = icmp ne i32 %136, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %144 = load i32, i32* @_QIB_EVENT_LMC_CHANGE_BIT, align 4
  %145 = call i32 @qib_set_uevent_bits(%struct.qib_pportdata* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %133
  %147 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %148 = load i64, i64* %14, align 8
  %149 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %150 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 7
  %153 = call i32 @qib_set_lid(%struct.qib_pportdata* %147, i64 %148, i32 %152)
  %154 = load i32, i32* @IB_EVENT_LID_CHANGE, align 4
  %155 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  store i32 %154, i32* %155, align 8
  %156 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %157

157:                                              ; preds = %146, %114
  br label %158

158:                                              ; preds = %157, %102
  %159 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %160 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %159, i32 0, i32 13
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @be16_to_cpu(i32 %161)
  store i64 %162, i64* %15, align 8
  %163 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %164 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 15
  store i32 %166, i32* %20, align 4
  %167 = load i64, i64* %15, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %158
  %170 = load i64, i64* %15, align 8
  %171 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %172 = call i64 @be16_to_cpu(i32 %171)
  %173 = icmp sge i64 %170, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %169, %158
  %175 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %176 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %177 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %270

180:                                              ; preds = %169
  %181 = load i64, i64* %15, align 8
  %182 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %183 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %181, %185
  br i1 %186, label %194, label %187

187:                                              ; preds = %180
  %188 = load i32, i32* %20, align 4
  %189 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %190 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %188, %192
  br i1 %193, label %194, label %269

194:                                              ; preds = %187, %180
  %195 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %196 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 8
  %198 = load i64, i64* %13, align 8
  %199 = call i32 @spin_lock_irqsave(i32* %197, i64 %198)
  %200 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %201 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 9
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = icmp ne %struct.TYPE_4__* %203, null
  br i1 %204, label %205, label %236

205:                                              ; preds = %194
  %206 = load i64, i64* %15, align 8
  %207 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %208 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %206, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %205
  %213 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %214 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 9
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i64, i64* %15, align 8
  %219 = call i32 @rdma_ah_set_dlid(i32* %217, i64 %218)
  br label %220

220:                                              ; preds = %212, %205
  %221 = load i32, i32* %20, align 4
  %222 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %223 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %221, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %220
  %228 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %229 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 9
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32, i32* %20, align 4
  %234 = call i32 @rdma_ah_set_sl(i32* %232, i32 %233)
  br label %235

235:                                              ; preds = %227, %220
  br label %236

236:                                              ; preds = %235, %194
  %237 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %238 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 8
  %240 = load i64, i64* %13, align 8
  %241 = call i32 @spin_unlock_irqrestore(i32* %239, i64 %240)
  %242 = load i64, i64* %15, align 8
  %243 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %244 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %242, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %236
  %249 = load i64, i64* %15, align 8
  %250 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %251 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  store i64 %249, i64* %252, align 8
  br label %253

253:                                              ; preds = %248, %236
  %254 = load i32, i32* %20, align 4
  %255 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %256 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %254, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load i32, i32* %20, align 4
  %262 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %263 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  store i32 %261, i32* %264, align 8
  br label %265

265:                                              ; preds = %260, %253
  %266 = load i32, i32* @IB_EVENT_SM_CHANGE, align 4
  %267 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  store i32 %266, i32* %267, align 8
  %268 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %269

269:                                              ; preds = %265, %187
  br label %270

270:                                              ; preds = %269, %174
  %271 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %272 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %16, align 4
  %274 = load i32, i32* %16, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %315

276:                                              ; preds = %270
  %277 = load i32, i32* %16, align 4
  %278 = icmp eq i32 %277, 255
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %281 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %282 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @set_link_width_enabled(%struct.qib_pportdata* %280, i32 %283)
  br label %314

285:                                              ; preds = %276
  %286 = load i32, i32* %16, align 4
  %287 = icmp sge i32 %286, 16
  br i1 %287, label %296, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %16, align 4
  %290 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %291 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = xor i32 %292, -1
  %294 = and i32 %289, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %288, %285
  %297 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %298 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %299 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %313

302:                                              ; preds = %288
  %303 = load i32, i32* %16, align 4
  %304 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %305 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %303, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %302
  %309 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %310 = load i32, i32* %16, align 4
  %311 = call i32 @set_link_width_enabled(%struct.qib_pportdata* %309, i32 %310)
  br label %312

312:                                              ; preds = %308, %302
  br label %313

313:                                              ; preds = %312, %296
  br label %314

314:                                              ; preds = %313, %279
  br label %315

315:                                              ; preds = %314, %270
  %316 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %317 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = and i32 %318, 15
  store i32 %319, i32* %17, align 4
  %320 = load i32, i32* %17, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %361

322:                                              ; preds = %315
  %323 = load i32, i32* %17, align 4
  %324 = icmp eq i32 %323, 15
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %327 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %328 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @set_link_speed_enabled(%struct.qib_pportdata* %326, i32 %329)
  br label %360

331:                                              ; preds = %322
  %332 = load i32, i32* %17, align 4
  %333 = icmp sge i32 %332, 8
  br i1 %333, label %342, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* %17, align 4
  %336 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %337 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 4
  %339 = xor i32 %338, -1
  %340 = and i32 %335, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %334, %331
  %343 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %344 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %345 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 8
  br label %359

348:                                              ; preds = %334
  %349 = load i32, i32* %17, align 4
  %350 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %351 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %349, %352
  br i1 %353, label %354, label %358

354:                                              ; preds = %348
  %355 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %356 = load i32, i32* %17, align 4
  %357 = call i32 @set_link_speed_enabled(%struct.qib_pportdata* %355, i32 %356)
  br label %358

358:                                              ; preds = %354, %348
  br label %359

359:                                              ; preds = %358, %342
  br label %360

360:                                              ; preds = %359, %325
  br label %361

361:                                              ; preds = %360, %315
  %362 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %363 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, 15
  switch i32 %365, label %383 [
    i32 0, label %366
    i32 1, label %367
    i32 2, label %375
  ]

366:                                              ; preds = %361
  br label %389

367:                                              ; preds = %361
  %368 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %369 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %368, i32 0, i32 0
  %370 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %369, align 8
  %371 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %372 = load i32, i32* @QIB_IB_CFG_LINKDEFAULT, align 4
  %373 = load i32, i32* @IB_LINKINITCMD_SLEEP, align 4
  %374 = call i32 %370(%struct.qib_pportdata* %371, i32 %372, i32 %373)
  br label %389

375:                                              ; preds = %361
  %376 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %377 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %376, i32 0, i32 0
  %378 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %377, align 8
  %379 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %380 = load i32, i32* @QIB_IB_CFG_LINKDEFAULT, align 4
  %381 = load i32, i32* @IB_LINKINITCMD_POLL, align 4
  %382 = call i32 %378(%struct.qib_pportdata* %379, i32 %380, i32 %381)
  br label %389

383:                                              ; preds = %361
  %384 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %385 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %386 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = or i32 %387, %384
  store i32 %388, i32* %386, align 8
  br label %389

389:                                              ; preds = %383, %375, %367, %366
  %390 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %391 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = ashr i32 %392, 6
  %394 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %395 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 2
  store i32 %393, i32* %396, align 4
  %397 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %398 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %397, i32 0, i32 6
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %401 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 3
  store i32 %399, i32* %402, align 8
  %403 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %404 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %403, i32 0, i32 0
  %405 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %404, align 8
  %406 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %407 = load i32, i32* @QIB_IB_CFG_VL_HIGH_LIMIT, align 4
  %408 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %409 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = call i32 %405(%struct.qib_pportdata* %406, i32 %407, i32 %411)
  %413 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %414 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = ashr i32 %415, 4
  %417 = and i32 %416, 15
  %418 = call i32 @ib_mtu_enum_to_int(i32 %417)
  store i32 %418, i32* %24, align 4
  %419 = load i32, i32* %24, align 4
  %420 = icmp eq i32 %419, -1
  br i1 %420, label %421, label %427

421:                                              ; preds = %389
  %422 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %423 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %424 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = or i32 %425, %422
  store i32 %426, i32* %424, align 8
  br label %431

427:                                              ; preds = %389
  %428 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %429 = load i32, i32* %24, align 4
  %430 = call i32 @qib_set_mtu(%struct.qib_pportdata* %428, i32 %429)
  br label %431

431:                                              ; preds = %427, %421
  %432 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %433 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 4
  %435 = ashr i32 %434, 4
  %436 = and i32 %435, 15
  store i32 %436, i32* %19, align 4
  %437 = load i32, i32* %19, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %460

439:                                              ; preds = %431
  %440 = load i32, i32* %19, align 4
  %441 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %442 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %441, i32 0, i32 6
  %443 = load i32, i32* %442, align 4
  %444 = icmp sgt i32 %440, %443
  br i1 %444, label %445, label %451

445:                                              ; preds = %439
  %446 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %447 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %448 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = or i32 %449, %446
  store i32 %450, i32* %448, align 8
  br label %459

451:                                              ; preds = %439
  %452 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %453 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %452, i32 0, i32 0
  %454 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %453, align 8
  %455 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %456 = load i32, i32* @QIB_IB_CFG_OP_VLS, align 4
  %457 = load i32, i32* %19, align 4
  %458 = call i32 %454(%struct.qib_pportdata* %455, i32 %456, i32 %457)
  br label %459

459:                                              ; preds = %451, %445
  br label %460

460:                                              ; preds = %459, %431
  %461 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %462 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %461, i32 0, i32 8
  %463 = load i64, i64* %462, align 8
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %469

465:                                              ; preds = %460
  %466 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %467 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 7
  store i64 0, i64* %468, align 8
  br label %469

469:                                              ; preds = %465, %460
  %470 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %471 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %470, i32 0, i32 9
  %472 = load i64, i64* %471, align 8
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %469
  %475 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %476 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %476, i32 0, i32 6
  store i64 0, i64* %477, align 8
  br label %478

478:                                              ; preds = %474, %469
  %479 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %480 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %479, i32 0, i32 10
  %481 = load i64, i64* %480, align 8
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %478
  %484 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %485 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 5
  store i64 0, i64* %486, align 8
  br label %487

487:                                              ; preds = %483, %478
  %488 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %489 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %488, i32 0, i32 11
  %490 = load i32, i32* %489, align 8
  store i32 %490, i32* %23, align 4
  %491 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %492 = load i32, i32* %23, align 4
  %493 = ashr i32 %492, 4
  %494 = and i32 %493, 15
  %495 = call i64 @set_phyerrthreshold(%struct.qib_pportdata* %491, i32 %494)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %487
  %498 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %499 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %500 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = or i32 %501, %498
  store i32 %502, i32* %500, align 8
  br label %503

503:                                              ; preds = %497, %487
  %504 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %505 = load i32, i32* %23, align 4
  %506 = and i32 %505, 15
  %507 = call i64 @set_overrunthreshold(%struct.qib_pportdata* %504, i32 %506)
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %515

509:                                              ; preds = %503
  %510 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %511 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %512 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = or i32 %513, %510
  store i32 %514, i32* %512, align 8
  br label %515

515:                                              ; preds = %509, %503
  %516 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %517 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = and i32 %518, 31
  %520 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %521 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %521, i32 0, i32 4
  store i32 %519, i32* %522, align 4
  %523 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %524 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %523, i32 0, i32 12
  %525 = load i32, i32* %524, align 4
  %526 = and i32 %525, 15
  store i32 %526, i32* %18, align 4
  %527 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %528 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %527, i32 0, i32 5
  %529 = load i32, i32* %528, align 4
  %530 = ashr i32 %529, 4
  %531 = and i32 %530, 15
  %532 = sext i32 %531 to i64
  store i64 %532, i64* %21, align 8
  %533 = load i64, i64* %21, align 8
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %547

535:                                              ; preds = %515
  %536 = load i32, i32* %18, align 4
  %537 = icmp eq i32 %536, 129
  br i1 %537, label %547, label %538

538:                                              ; preds = %535
  %539 = load i32, i32* %18, align 4
  %540 = icmp eq i32 %539, 128
  br i1 %540, label %547, label %541

541:                                              ; preds = %538
  %542 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %543 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %544 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = or i32 %545, %542
  store i32 %546, i32* %544, align 8
  br label %547

547:                                              ; preds = %541, %538, %535, %515
  %548 = load i32, i32* %18, align 4
  switch i32 %548, label %625 [
    i32 128, label %549
    i32 129, label %554
    i32 130, label %617
    i32 131, label %621
  ]

549:                                              ; preds = %547
  %550 = load i64, i64* %21, align 8
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %552, label %553

552:                                              ; preds = %549
  br label %631

553:                                              ; preds = %549
  br label %554

554:                                              ; preds = %547, %553
  %555 = load i64, i64* %21, align 8
  %556 = icmp eq i64 %555, 0
  br i1 %556, label %557, label %559

557:                                              ; preds = %554
  %558 = load i64, i64* @QIB_IB_LINKDOWN_ONLY, align 8
  store i64 %558, i64* %21, align 8
  br label %583

559:                                              ; preds = %554
  %560 = load i64, i64* %21, align 8
  %561 = icmp eq i64 %560, 1
  br i1 %561, label %562, label %564

562:                                              ; preds = %559
  %563 = load i64, i64* @QIB_IB_LINKDOWN_SLEEP, align 8
  store i64 %563, i64* %21, align 8
  br label %582

564:                                              ; preds = %559
  %565 = load i64, i64* %21, align 8
  %566 = icmp eq i64 %565, 2
  br i1 %566, label %567, label %569

567:                                              ; preds = %564
  %568 = load i64, i64* @QIB_IB_LINKDOWN, align 8
  store i64 %568, i64* %21, align 8
  br label %581

569:                                              ; preds = %564
  %570 = load i64, i64* %21, align 8
  %571 = icmp eq i64 %570, 3
  br i1 %571, label %572, label %574

572:                                              ; preds = %569
  %573 = load i64, i64* @QIB_IB_LINKDOWN_DISABLE, align 8
  store i64 %573, i64* %21, align 8
  br label %580

574:                                              ; preds = %569
  %575 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %576 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %577 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = or i32 %578, %575
  store i32 %579, i32* %577, align 8
  br label %631

580:                                              ; preds = %572
  br label %581

581:                                              ; preds = %580, %567
  br label %582

582:                                              ; preds = %581, %562
  br label %583

583:                                              ; preds = %582, %557
  %584 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %585 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %584, i32 0, i32 7
  %586 = load i64, i64* %13, align 8
  %587 = call i32 @spin_lock_irqsave(i32* %585, i64 %586)
  %588 = load i32, i32* @QIBL_LINKV, align 4
  %589 = xor i32 %588, -1
  %590 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %591 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %590, i32 0, i32 8
  %592 = load i32, i32* %591, align 4
  %593 = and i32 %592, %589
  store i32 %593, i32* %591, align 4
  %594 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %595 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %594, i32 0, i32 7
  %596 = load i64, i64* %13, align 8
  %597 = call i32 @spin_unlock_irqrestore(i32* %595, i64 %596)
  %598 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %599 = load i64, i64* %21, align 8
  %600 = call i32 @qib_set_linkstate(%struct.qib_pportdata* %598, i64 %599)
  %601 = load i64, i64* %21, align 8
  %602 = load i64, i64* @QIB_IB_LINKDOWN_DISABLE, align 8
  %603 = icmp eq i64 %601, %602
  br i1 %603, label %604, label %613

604:                                              ; preds = %583
  %605 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %606 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %613

609:                                              ; preds = %604
  %610 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %611 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %612 = or i32 %610, %611
  store i32 %612, i32* %22, align 4
  br label %655

613:                                              ; preds = %604, %583
  %614 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %615 = load i32, i32* @QIBL_LINKV, align 4
  %616 = call i32 @qib_wait_linkstate(%struct.qib_pportdata* %614, i32 %615, i32 10)
  br label %631

617:                                              ; preds = %547
  %618 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %619 = load i64, i64* @QIB_IB_LINKARM, align 8
  %620 = call i32 @qib_set_linkstate(%struct.qib_pportdata* %618, i64 %619)
  br label %631

621:                                              ; preds = %547
  %622 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %623 = load i64, i64* @QIB_IB_LINKACTIVE, align 8
  %624 = call i32 @qib_set_linkstate(%struct.qib_pportdata* %622, i64 %623)
  br label %631

625:                                              ; preds = %547
  %626 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %627 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %628 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = or i32 %629, %626
  store i32 %630, i32* %628, align 8
  br label %631

631:                                              ; preds = %625, %621, %617, %613, %574, %552
  %632 = load i32, i32* %12, align 4
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %638

634:                                              ; preds = %631
  %635 = load i32, i32* @IB_EVENT_CLIENT_REREGISTER, align 4
  %636 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  store i32 %635, i32* %636, align 8
  %637 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %638

638:                                              ; preds = %634, %631
  %639 = load i32, i32* %12, align 4
  %640 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %641 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = or i32 %642, %639
  store i32 %643, i32* %641, align 8
  br label %650

644:                                              ; preds = %48
  %645 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %646 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %647 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = or i32 %648, %645
  store i32 %649, i32* %647, align 8
  br label %650

650:                                              ; preds = %644, %638, %53
  %651 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %652 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %653 = load i32, i32* %6, align 4
  %654 = call i32 @subn_get_portinfo(%struct.ib_smp* %651, %struct.ib_device* %652, i32 %653)
  store i32 %654, i32* %22, align 4
  br label %655

655:                                              ; preds = %650, %609
  %656 = load i32, i32* %22, align 4
  ret i32 %656
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @qib_set_uevent_bits(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_set_lid(%struct.qib_pportdata*, i64, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rdma_ah_set_dlid(i32*, i64) #1

declare dso_local i32 @rdma_ah_set_sl(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_link_width_enabled(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @set_link_speed_enabled(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @ib_mtu_enum_to_int(i32) #1

declare dso_local i32 @qib_set_mtu(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @set_phyerrthreshold(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @set_overrunthreshold(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_set_linkstate(%struct.qib_pportdata*, i64) #1

declare dso_local i32 @qib_wait_linkstate(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @subn_get_portinfo(%struct.ib_smp*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
