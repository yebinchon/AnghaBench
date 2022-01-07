; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_ib_process_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_ib_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ib_grh = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ib_mad = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i64, i32, i32 }
%struct.ib_port_attr = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [107 x i8] c"received MAD: port:%d slid:%d sqpn:%d dlid_bits:%d dqpn:%d wc_flags:0x%x tid:%016llx cls:%x mtd:%x atr:%x\0A\00", align 1
@IB_WC_GRH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"sgid_hi:0x%016llx sgid_lo:0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"dgid_hi:0x%016llx dgid_lo:0x%016llx\0A\00", align 1
@IB_LID_PERMISSIVE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i64 0, align 8
@IB_SMP_ATTR_SM_INFO = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@MLX4_IB_VENDOR_CLASS1 = common dso_local global i64 0, align 8
@MLX4_IB_VENDOR_CLASS2 = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_CONG_MGMT = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PORT_INFO = common dso_local global i64 0, align 8
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_BKEY = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_BKEY = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*)* @ib_process_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.ib_grh*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ib_port_attr, align 4
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %12, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %13, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  store i64 0, i64* %17, align 8
  %20 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %21 = icmp ne %struct.ib_wc* %20, null
  br i1 %21, label %22, label %99

22:                                               ; preds = %7
  %23 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %99

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %30 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %33 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %36 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %39 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %47 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be64_to_cpu(i32 %49)
  %51 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %52 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %56 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %60 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @be16_to_cpu(i64 %62)
  %64 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34, i32 %37, i32 %42, i32 %45, i32 %50, i64 %54, i64 %58, i64 %63)
  %65 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %66 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IB_WC_GRH, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %27
  %72 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %73 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be64_to_cpu(i32 %76)
  %78 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %79 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be64_to_cpu(i32 %82)
  %84 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %83)
  %85 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %86 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be64_to_cpu(i32 %89)
  %91 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %92 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be64_to_cpu(i32 %95)
  %97 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %71, %27
  br label %99

99:                                               ; preds = %98, %22, %7
  %100 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %101 = icmp ne %struct.ib_wc* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %104 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ib_lid_cpu16(i32 %105)
  br label %110

107:                                              ; preds = %99
  %108 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %109 = call i64 @be16_to_cpu(i64 %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = phi i64 [ %106, %102 ], [ %109, %107 ]
  store i64 %111, i64* %16, align 8
  %112 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %113 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IB_MGMT_METHOD_TRAP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %110
  %119 = load i64, i64* %16, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %123 = call %struct.TYPE_16__* @to_mdev(%struct.ib_device* %122)
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %126 = call i32 @forward_trap(%struct.TYPE_16__* %123, i32 %124, %struct.ib_mad* %125)
  %127 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %128 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %8, align 4
  br label %348

130:                                              ; preds = %118, %110
  %131 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %132 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %144, label %137

137:                                              ; preds = %130
  %138 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %139 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %177

144:                                              ; preds = %137, %130
  %145 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %146 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %144
  %152 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %153 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %151
  %159 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %160 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %166, i32* %8, align 4
  br label %348

167:                                              ; preds = %158, %151, %144
  %168 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %169 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @IB_SMP_ATTR_SM_INFO, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %175, i32* %8, align 4
  br label %348

176:                                              ; preds = %167
  br label %225

177:                                              ; preds = %137
  %178 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %179 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %205, label %184

184:                                              ; preds = %177
  %185 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %186 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @MLX4_IB_VENDOR_CLASS1, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %205, label %191

191:                                              ; preds = %184
  %192 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %193 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MLX4_IB_VENDOR_CLASS2, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %205, label %198

198:                                              ; preds = %191
  %199 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %200 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @IB_MGMT_CLASS_CONG_MGMT, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %198, %191, %184, %177
  %206 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %207 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %205
  %213 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %214 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %212
  %220 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %220, i32* %8, align 4
  br label %348

221:                                              ; preds = %212, %205
  br label %224

222:                                              ; preds = %198
  %223 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %223, i32* %8, align 4
  br label %348

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %224, %176
  %226 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %227 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %239, label %232

232:                                              ; preds = %225
  %233 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %234 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %262

239:                                              ; preds = %232, %225
  %240 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %241 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %262

246:                                              ; preds = %239
  %247 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %248 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @IB_SMP_ATTR_PORT_INFO, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %246
  %254 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %255 = load i32, i32* %11, align 4
  %256 = call i32 @ib_query_port(%struct.ib_device* %254, i32 %255, %struct.ib_port_attr* %19)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %19, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @ib_lid_cpu16(i32 %260)
  store i64 %261, i64* %17, align 8
  br label %262

262:                                              ; preds = %258, %253, %246, %239, %232
  %263 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %264 = call %struct.TYPE_16__* @to_mdev(%struct.ib_device* %263)
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %262
  %270 = load i32, i32* @MLX4_MAD_IFC_IGNORE_MKEY, align 4
  br label %272

271:                                              ; preds = %262
  br label %272

272:                                              ; preds = %271, %269
  %273 = phi i32 [ %270, %269 ], [ 0, %271 ]
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @IB_MAD_IGNORE_BKEY, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  %279 = load i32, i32* @MLX4_MAD_IFC_IGNORE_BKEY, align 4
  br label %281

280:                                              ; preds = %272
  br label %281

281:                                              ; preds = %280, %278
  %282 = phi i32 [ %279, %278 ], [ 0, %280 ]
  %283 = or i32 %273, %282
  %284 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* %11, align 4
  %287 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %288 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %289 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %290 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %291 = call i32 @mlx4_MAD_IFC(%struct.TYPE_16__* %264, i32 %285, i32 %286, %struct.ib_wc* %287, %struct.ib_grh* %288, %struct.ib_mad* %289, %struct.ib_mad* %290)
  store i32 %291, i32* %18, align 4
  %292 = load i32, i32* %18, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %281
  %295 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %295, i32* %8, align 4
  br label %348

296:                                              ; preds = %281
  %297 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %298 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %319, label %302

302:                                              ; preds = %296
  %303 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %304 = load i32, i32* %11, align 4
  %305 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %306 = load i64, i64* %17, align 8
  %307 = call i32 @smp_snoop(%struct.ib_device* %303, i32 %304, %struct.ib_mad* %305, i64 %306)
  %308 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %309 = call %struct.TYPE_16__* @to_mdev(%struct.ib_device* %308)
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @mlx4_is_slave(i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %302
  %315 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %316 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %317 = call i32 @node_desc_override(%struct.ib_device* %315, %struct.ib_mad* %316)
  br label %318

318:                                              ; preds = %314, %302
  br label %319

319:                                              ; preds = %318, %296
  %320 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %321 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %333

326:                                              ; preds = %319
  %327 = call i32 @cpu_to_be16(i32 32768)
  %328 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %329 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %331, %327
  store i32 %332, i32* %330, align 8
  br label %333

333:                                              ; preds = %326, %319
  %334 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %335 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %333
  %341 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %342 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %343 = or i32 %341, %342
  store i32 %343, i32* %8, align 4
  br label %348

344:                                              ; preds = %333
  %345 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %346 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %347 = or i32 %345, %346
  store i32 %347, i32* %8, align 4
  br label %348

348:                                              ; preds = %344, %340, %294, %222, %219, %174, %165, %121
  %349 = load i32, i32* %8, align 4
  ret i32 %349
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i64 @ib_lid_cpu16(i32) #1

declare dso_local i32 @forward_trap(%struct.TYPE_16__*, i32, %struct.ib_mad*) #1

declare dso_local %struct.TYPE_16__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx4_MAD_IFC(%struct.TYPE_16__*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @smp_snoop(%struct.ib_device*, i32, %struct.ib_mad*, i64) #1

declare dso_local i32 @mlx4_is_slave(i32) #1

declare dso_local i32 @node_desc_override(%struct.ib_device*, %struct.ib_mad*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
