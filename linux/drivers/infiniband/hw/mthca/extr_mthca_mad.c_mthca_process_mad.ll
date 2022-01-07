; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mad.c_mthca_process_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mad.c_mthca_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad_hdr = type { i32 }
%struct.ib_port_attr = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i64 0, align 8
@IB_SMP_ATTR_SM_INFO = common dso_local global i32 0, align 4
@IB_SMP_ATTR_VENDOR_MASK = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@MTHCA_VENDOR_CLASS1 = common dso_local global i64 0, align 8
@MTHCA_VENDOR_CLASS2 = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_BKEY = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MAD_IFC returned %d\0A\00", align 1
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad_hdr* %5, i64 %6, %struct.ib_mad_hdr* %7, i64* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_wc*, align 8
  %16 = alloca %struct.ib_grh*, align 8
  %17 = alloca %struct.ib_mad_hdr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ib_mad_hdr*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.ib_port_attr, align 4
  %26 = alloca %struct.ib_mad*, align 8
  %27 = alloca %struct.ib_mad*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %15, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %16, align 8
  store %struct.ib_mad_hdr* %5, %struct.ib_mad_hdr** %17, align 8
  store i64 %6, i64* %18, align 8
  store %struct.ib_mad_hdr* %7, %struct.ib_mad_hdr** %19, align 8
  store i64* %8, i64** %20, align 8
  store i64* %9, i64** %21, align 8
  %28 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %29 = icmp ne %struct.ib_wc* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %10
  %31 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ib_lid_cpu16(i32 %33)
  br label %38

35:                                               ; preds = %10
  %36 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %37 = call i64 @be16_to_cpu(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i64 [ %34, %30 ], [ %37, %35 ]
  store i64 %39, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %40 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %17, align 8
  %41 = bitcast %struct.ib_mad_hdr* %40 to %struct.ib_mad*
  store %struct.ib_mad* %41, %struct.ib_mad** %26, align 8
  %42 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %19, align 8
  %43 = bitcast %struct.ib_mad_hdr* %42 to %struct.ib_mad*
  store %struct.ib_mad* %43, %struct.ib_mad** %27, align 8
  %44 = load i64, i64* %18, align 8
  %45 = icmp ne i64 %44, 24
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load i64*, i64** %20, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 24
  br label %50

50:                                               ; preds = %46, %38
  %51 = phi i1 [ true, %38 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON_ONCE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %56, i32* %11, align 4
  br label %285

57:                                               ; preds = %50
  %58 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %59 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_MGMT_METHOD_TRAP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load i64, i64* %23, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %69 = call i32 @to_mdev(%struct.ib_device* %68)
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %72 = call i32 @forward_trap(i32 %69, i32 %70, %struct.ib_mad* %71)
  %73 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %74 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %11, align 4
  br label %285

76:                                               ; preds = %64, %57
  %77 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %78 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %85 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %132

90:                                               ; preds = %83, %76
  %91 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %92 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %90
  %98 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %99 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %106 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %112, i32* %11, align 4
  br label %285

113:                                              ; preds = %104, %97, %90
  %114 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %115 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IB_SMP_ATTR_SM_INFO, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %129, label %120

120:                                              ; preds = %113
  %121 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %122 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IB_SMP_ATTR_VENDOR_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @IB_SMP_ATTR_VENDOR_MASK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %120, %113
  %130 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %130, i32* %11, align 4
  br label %285

131:                                              ; preds = %120
  br label %173

132:                                              ; preds = %83
  %133 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %134 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %153, label %139

139:                                              ; preds = %132
  %140 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %141 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MTHCA_VENDOR_CLASS1, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %153, label %146

146:                                              ; preds = %139
  %147 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %148 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @MTHCA_VENDOR_CLASS2, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %146, %139, %132
  %154 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %155 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %162 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %168, i32* %11, align 4
  br label %285

169:                                              ; preds = %160, %153
  br label %172

170:                                              ; preds = %146
  %171 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %171, i32* %11, align 4
  br label %285

172:                                              ; preds = %169
  br label %173

173:                                              ; preds = %172, %131
  %174 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %175 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %173
  %181 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %182 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %210

187:                                              ; preds = %180, %173
  %188 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %189 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %187
  %195 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %196 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %194
  %202 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %203 = load i32, i32* %14, align 4
  %204 = call i32 @ib_query_port(%struct.ib_device* %202, i32 %203, %struct.ib_port_attr* %25)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %25, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @ib_lid_cpu16(i32 %208)
  store i64 %209, i64* %24, align 8
  br label %210

210:                                              ; preds = %206, %201, %194, %187, %180
  %211 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %212 = call i32 @to_mdev(%struct.ib_device* %211)
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %215 = and i32 %213, %214
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @IB_MAD_IGNORE_BKEY, align 4
  %218 = and i32 %216, %217
  %219 = load i32, i32* %14, align 4
  %220 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %221 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %222 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %223 = load %struct.ib_mad*, %struct.ib_mad** %27, align 8
  %224 = call i32 @mthca_MAD_IFC(i32 %212, i32 %215, i32 %218, i32 %219, %struct.ib_wc* %220, %struct.ib_grh* %221, %struct.ib_mad* %222, %struct.ib_mad* %223)
  store i32 %224, i32* %22, align 4
  %225 = load i32, i32* %22, align 4
  %226 = load i32, i32* @EBADMSG, align 4
  %227 = sub nsw i32 0, %226
  %228 = icmp eq i32 %225, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %210
  %230 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %230, i32* %11, align 4
  br label %285

231:                                              ; preds = %210
  %232 = load i32, i32* %22, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %236 = call i32 @to_mdev(%struct.ib_device* %235)
  %237 = load i32, i32* %22, align 4
  %238 = call i32 @mthca_err(i32 %236, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %239, i32* %11, align 4
  br label %285

240:                                              ; preds = %231
  br label %241

241:                                              ; preds = %240
  %242 = load %struct.ib_mad*, %struct.ib_mad** %27, align 8
  %243 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %256, label %247

247:                                              ; preds = %241
  %248 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %251 = load i64, i64* %24, align 8
  %252 = call i32 @smp_snoop(%struct.ib_device* %248, i32 %249, %struct.ib_mad* %250, i64 %251)
  %253 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %254 = load %struct.ib_mad*, %struct.ib_mad** %27, align 8
  %255 = call i32 @node_desc_override(%struct.ib_device* %253, %struct.ib_mad* %254)
  br label %256

256:                                              ; preds = %247, %241
  %257 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %258 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %256
  %264 = call i32 @cpu_to_be16(i32 32768)
  %265 = load %struct.ib_mad*, %struct.ib_mad** %27, align 8
  %266 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %264
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %263, %256
  %271 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %272 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %270
  %278 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %279 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %280 = or i32 %278, %279
  store i32 %280, i32* %11, align 4
  br label %285

281:                                              ; preds = %270
  %282 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %283 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %284 = or i32 %282, %283
  store i32 %284, i32* %11, align 4
  br label %285

285:                                              ; preds = %281, %277, %234, %229, %170, %167, %129, %111, %67, %55
  %286 = load i32, i32* %11, align 4
  ret i32 %286
}

declare dso_local i64 @ib_lid_cpu16(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @forward_trap(i32, i32, %struct.ib_mad*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mthca_MAD_IFC(i32, i32, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @mthca_err(i32, i8*, i32) #1

declare dso_local i32 @smp_snoop(%struct.ib_device*, i32, %struct.ib_mad*, i64) #1

declare dso_local i32 @node_desc_override(%struct.ib_device*, %struct.ib_mad*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
