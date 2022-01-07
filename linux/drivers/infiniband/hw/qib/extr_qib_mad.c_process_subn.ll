; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_process_subn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_process_subn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64 }
%struct.ib_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ib_smp = type { i32, i32, i32, i32*, i32, i32 }
%struct.qib_ibport = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.qib_pportdata = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.qib_pportdata*, i32, i32)* }

@IB_SMP_UNSUP_VERSION = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_PORT_SM_DISABLED = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_PORT_SM = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NOTICE = common dso_local global i32 0, align 4
@QIB_VENDOR_IPG = common dso_local global i32 0, align 4
@QIB_IB_CFG_PORT = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i64, %struct.ib_mad*, %struct.ib_mad*)* @process_subn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_subn(%struct.ib_device* %0, i32 %1, i64 %2, %struct.ib_mad* %3, %struct.ib_mad* %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ib_mad*, align 8
  %10 = alloca %struct.ib_mad*, align 8
  %11 = alloca %struct.ib_smp*, align 8
  %12 = alloca %struct.qib_ibport*, align 8
  %13 = alloca %struct.qib_pportdata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %9, align 8
  store %struct.ib_mad* %4, %struct.ib_mad** %10, align 8
  %16 = load %struct.ib_mad*, %struct.ib_mad** %10, align 8
  %17 = bitcast %struct.ib_mad* %16 to %struct.ib_smp*
  store %struct.ib_smp* %17, %struct.ib_smp** %11, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %18, i64 %19)
  store %struct.qib_ibport* %20, %struct.qib_ibport** %12, align 8
  %21 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %22 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %21)
  store %struct.qib_pportdata* %22, %struct.qib_pportdata** %13, align 8
  %23 = load %struct.ib_mad*, %struct.ib_mad** %10, align 8
  %24 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %25 = bitcast %struct.ib_mad* %23 to i8*
  %26 = bitcast %struct.ib_mad* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %28 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load i32, i32* @IB_SMP_UNSUP_VERSION, align 4
  %33 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %34 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %38 = call i32 @reply(%struct.ib_smp* %37)
  store i32 %38, i32* %14, align 4
  br label %281

39:                                               ; preds = %5
  %40 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %41 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @check_mkey(%struct.qib_ibport* %40, %struct.ib_smp* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %39
  %47 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %48 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be32_to_cpu(i32 %49)
  store i64 %50, i64* %15, align 8
  %51 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %52 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 131
  br i1 %55, label %56, label %85

56:                                               ; preds = %46
  %57 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %58 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 143
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %63 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 138
  br i1 %65, label %66, label %85

66:                                               ; preds = %61, %56
  %67 = load i64, i64* %15, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i64, i64* %15, align 8
  %71 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %72 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %80, i64 %81)
  %83 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %84 = call i32 @check_mkey(%struct.qib_ibport* %82, %struct.ib_smp* %83, i32 0)
  br label %85

85:                                               ; preds = %79, %75, %69, %66, %61, %46
  %86 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %86, i32* %14, align 4
  br label %281

87:                                               ; preds = %39
  %88 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %89 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %272 [
    i32 143, label %91
    i32 138, label %160
    i32 136, label %220
    i32 137, label %240
    i32 141, label %240
    i32 140, label %240
    i32 142, label %240
    i32 139, label %242
  ]

91:                                               ; preds = %87
  %92 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %93 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %152 [
    i32 134, label %95
    i32 133, label %99
    i32 135, label %104
    i32 131, label %109
    i32 132, label %114
    i32 130, label %119
    i32 128, label %124
    i32 129, label %129
  ]

95:                                               ; preds = %91
  %96 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %97 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %98 = call i32 @subn_get_nodedescription(%struct.ib_smp* %96, %struct.ib_device* %97)
  store i32 %98, i32* %14, align 4
  br label %281

99:                                               ; preds = %91
  %100 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %101 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @subn_get_nodeinfo(%struct.ib_smp* %100, %struct.ib_device* %101, i64 %102)
  store i32 %103, i32* %14, align 4
  br label %281

104:                                              ; preds = %91
  %105 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %106 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @subn_get_guidinfo(%struct.ib_smp* %105, %struct.ib_device* %106, i64 %107)
  store i32 %108, i32* %14, align 4
  br label %281

109:                                              ; preds = %91
  %110 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %111 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @subn_get_portinfo(%struct.ib_smp* %110, %struct.ib_device* %111, i64 %112)
  store i32 %113, i32* %14, align 4
  br label %281

114:                                              ; preds = %91
  %115 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %116 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @subn_get_pkeytable(%struct.ib_smp* %115, %struct.ib_device* %116, i64 %117)
  store i32 %118, i32* %14, align 4
  br label %281

119:                                              ; preds = %91
  %120 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %121 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @subn_get_sl_to_vl(%struct.ib_smp* %120, %struct.ib_device* %121, i64 %122)
  store i32 %123, i32* %14, align 4
  br label %281

124:                                              ; preds = %91
  %125 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %126 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @subn_get_vl_arb(%struct.ib_smp* %125, %struct.ib_device* %126, i64 %127)
  store i32 %128, i32* %14, align 4
  br label %281

129:                                              ; preds = %91
  %130 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %131 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IB_PORT_SM_DISABLED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %139 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %14, align 4
  br label %281

141:                                              ; preds = %129
  %142 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %143 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IB_PORT_SM, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %150, i32* %14, align 4
  br label %281

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %91, %151
  %153 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %154 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %155 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %159 = call i32 @reply(%struct.ib_smp* %158)
  store i32 %159, i32* %14, align 4
  br label %281

160:                                              ; preds = %87
  %161 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %162 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  switch i32 %163, label %212 [
    i32 135, label %164
    i32 131, label %169
    i32 132, label %174
    i32 130, label %179
    i32 128, label %184
    i32 129, label %189
  ]

164:                                              ; preds = %160
  %165 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %166 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @subn_set_guidinfo(%struct.ib_smp* %165, %struct.ib_device* %166, i64 %167)
  store i32 %168, i32* %14, align 4
  br label %281

169:                                              ; preds = %160
  %170 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %171 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @subn_set_portinfo(%struct.ib_smp* %170, %struct.ib_device* %171, i64 %172)
  store i32 %173, i32* %14, align 4
  br label %281

174:                                              ; preds = %160
  %175 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %176 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @subn_set_pkeytable(%struct.ib_smp* %175, %struct.ib_device* %176, i64 %177)
  store i32 %178, i32* %14, align 4
  br label %281

179:                                              ; preds = %160
  %180 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %181 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %182 = load i64, i64* %8, align 8
  %183 = call i32 @subn_set_sl_to_vl(%struct.ib_smp* %180, %struct.ib_device* %181, i64 %182)
  store i32 %183, i32* %14, align 4
  br label %281

184:                                              ; preds = %160
  %185 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %186 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %187 = load i64, i64* %8, align 8
  %188 = call i32 @subn_set_vl_arb(%struct.ib_smp* %185, %struct.ib_device* %186, i64 %187)
  store i32 %188, i32* %14, align 4
  br label %281

189:                                              ; preds = %160
  %190 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %191 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @IB_PORT_SM_DISABLED, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %199 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %200 = or i32 %198, %199
  store i32 %200, i32* %14, align 4
  br label %281

201:                                              ; preds = %189
  %202 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %203 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @IB_PORT_SM, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %201
  %210 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %210, i32* %14, align 4
  br label %281

211:                                              ; preds = %201
  br label %212

212:                                              ; preds = %160, %211
  %213 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %214 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %215 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %219 = call i32 @reply(%struct.ib_smp* %218)
  store i32 %219, i32* %14, align 4
  br label %281

220:                                              ; preds = %87
  %221 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %222 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @IB_SMP_ATTR_NOTICE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %220
  %227 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %228 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %229 = load i64, i64* %8, align 8
  %230 = call i32 @subn_trap_repress(%struct.ib_smp* %227, %struct.ib_device* %228, i64 %229)
  store i32 %230, i32* %14, align 4
  br label %239

231:                                              ; preds = %220
  %232 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %233 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %234 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %238 = call i32 @reply(%struct.ib_smp* %237)
  store i32 %238, i32* %14, align 4
  br label %239

239:                                              ; preds = %231, %226
  br label %281

240:                                              ; preds = %87, %87, %87, %87
  %241 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %241, i32* %14, align 4
  br label %281

242:                                              ; preds = %87
  %243 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %244 = call i32 @ib_get_smp_direction(%struct.ib_smp* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %269

246:                                              ; preds = %242
  %247 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %248 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @QIB_VENDOR_IPG, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %269

252:                                              ; preds = %246
  %253 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  %254 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %253, i32 0, i32 0
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %256, align 8
  %258 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  %259 = load i32, i32* @QIB_IB_CFG_PORT, align 4
  %260 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %261 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 %257(%struct.qib_pportdata* %258, i32 %259, i32 %264)
  %266 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %267 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %268 = or i32 %266, %267
  store i32 %268, i32* %14, align 4
  br label %271

269:                                              ; preds = %246, %242
  %270 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %270, i32* %14, align 4
  br label %271

271:                                              ; preds = %269, %252
  br label %281

272:                                              ; preds = %87
  %273 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %274 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %275 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  %278 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %279 = call i32 @reply(%struct.ib_smp* %278)
  store i32 %279, i32* %14, align 4
  br label %280

280:                                              ; preds = %272
  br label %281

281:                                              ; preds = %280, %271, %240, %239, %212, %209, %197, %184, %179, %174, %169, %164, %152, %149, %137, %124, %119, %114, %109, %104, %99, %95, %85, %31
  %282 = load i32, i32* %14, align 4
  ret i32 %282
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @check_mkey(%struct.qib_ibport*, %struct.ib_smp*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @subn_get_nodedescription(%struct.ib_smp*, %struct.ib_device*) #1

declare dso_local i32 @subn_get_nodeinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_guidinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_portinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_pkeytable(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_sl_to_vl(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_vl_arb(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_guidinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_portinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_pkeytable(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_sl_to_vl(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_vl_arb(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_trap_repress(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @ib_get_smp_direction(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
