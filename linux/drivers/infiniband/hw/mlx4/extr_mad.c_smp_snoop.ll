; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_smp_snoop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_smp_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.ib_port_info = type { i32, i32, i32, i32 }
%struct.mlx4_ib_dev = type { i32*, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8*** }
%union.sl2vl_tbl_to_u64 = type { i32* }
%struct.ib_smp = type { i32*, i32 }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV = common dso_local global i32 0, align 4
@IB_EVENT_PKEY_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PKEY[%d] = x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"PKEY Change event: port=%d, block=0x%x, change_bitmap=0x%x\0A\00", align 1
@IB_EVENT_GID_CHANGE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"port %u, sl2vl[%d] = %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32, %struct.ib_mad*, i8*)* @smp_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_snoop(%struct.ib_device* %0, i32 %1, %struct.ib_mad* %2, i8* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ib_port_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_ib_dev*, align 8
  %16 = alloca %union.sl2vl_tbl_to_u64, align 8
  %17 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %19 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %18)
  store %struct.mlx4_ib_dev* %19, %struct.mlx4_ib_dev** %15, align 8
  %20 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %21 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %4
  %27 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %28 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %351

33:                                               ; preds = %26, %4
  %34 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %35 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %351

40:                                               ; preds = %33
  %41 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %42 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %349 [
    i32 129, label %45
    i32 130, label %95
    i32 131, label %223
    i32 128, label %280
  ]

45:                                               ; preds = %40
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %351

56:                                               ; preds = %45
  %57 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %58 = bitcast %struct.ib_mad* %57 to %struct.ib_smp*
  %59 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast i32* %60 to %struct.ib_port_info*
  store %struct.ib_port_info* %61, %struct.ib_port_info** %9, align 8
  %62 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %63 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @be16_to_cpu(i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %69 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @be16_to_cpu(i32 %70)
  %72 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %73 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 15
  %76 = call i32 @update_sm_ah(%struct.mlx4_ib_dev* %66, i32 %67, i8* %71, i32 %75)
  %77 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %78 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %56
  %83 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @handle_client_rereg_event(%struct.mlx4_ib_dev* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %56
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @handle_lid_change_event(%struct.mlx4_ib_dev* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %350

95:                                               ; preds = %40
  %96 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %351

106:                                              ; preds = %95
  %107 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = call i32 @mlx4_is_mfunc(%struct.TYPE_12__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %116 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %113, i32 %114, i32 %115)
  br label %350

117:                                              ; preds = %106
  %118 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %119 = bitcast %struct.ib_mad* %118 to %struct.ib_smp*
  %120 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = and i32 %122, 65535
  store i32 %123, i32* %12, align 4
  %124 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %125 = bitcast %struct.ib_mad* %124 to %struct.ib_smp*
  %126 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32* %128, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %195, %117
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 32
  br i1 %131, label %132, label %198

132:                                              ; preds = %129
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %12, align 4
  %135 = mul nsw i32 %134, 32
  %136 = add nsw i32 %133, %135
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @be16_to_cpu(i32 %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %143)
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @be16_to_cpu(i32 %149)
  %151 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %152 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i8***, i8**** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8**, i8*** %154, i64 %157
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 %161, 32
  %163 = add nsw i32 %160, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %159, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %150, %166
  br i1 %167, label %168, label %194

168:                                              ; preds = %132
  %169 = load i32, i32* %14, align 4
  %170 = shl i32 1, %169
  %171 = load i32, i32* %13, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %13, align 4
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @be16_to_cpu(i32 %177)
  %179 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %180 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i8***, i8**** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8**, i8*** %182, i64 %185
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %12, align 4
  %190 = mul nsw i32 %189, 32
  %191 = add nsw i32 %188, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %187, i64 %192
  store i8* %178, i8** %193, align 8
  br label %194

194:                                              ; preds = %168, %132
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %129

198:                                              ; preds = %129
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %222

205:                                              ; preds = %198
  %206 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %209 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %206, i32 %207, i32 %208)
  %210 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %211 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %205
  %216 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @__propagate_pkey_ev(%struct.mlx4_ib_dev* %216, i32 %217, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %215, %205
  br label %222

222:                                              ; preds = %221, %198
  br label %350

223:                                              ; preds = %40
  %224 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %225 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %224, i32 0, i32 1
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %223
  br label %351

234:                                              ; preds = %223
  %235 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %236 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %235, i32 0, i32 1
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = call i32 @mlx4_is_master(%struct.TYPE_12__* %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %234
  %241 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @IB_EVENT_GID_CHANGE, align 4
  %244 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %240, %234
  %246 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %247 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %246, i32 0, i32 1
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = call i32 @mlx4_is_master(%struct.TYPE_12__* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %279

251:                                              ; preds = %245
  %252 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %253 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %279, label %257

257:                                              ; preds = %251
  %258 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %259 = bitcast %struct.ib_mad* %258 to %struct.ib_smp*
  %260 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @be32_to_cpu(i32 %261)
  store i32 %262, i32* %12, align 4
  %263 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* %6, align 4
  %266 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %267 = bitcast %struct.ib_mad* %266 to %struct.ib_smp*
  %268 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %267, i32 0, i32 0
  %269 = bitcast i32** %268 to i32*
  %270 = call i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev* %263, i32 %264, i32 %265, i32* %269)
  %271 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %6, align 4
  %274 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %275 = bitcast %struct.ib_mad* %274 to %struct.ib_smp*
  %276 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %275, i32 0, i32 0
  %277 = bitcast i32** %276 to i32*
  %278 = call i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev* %271, i32 %272, i32 %273, i32* %277)
  br label %279

279:                                              ; preds = %257, %251, %245
  br label %350

280:                                              ; preds = %40
  %281 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %282 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %281, i32 0, i32 1
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %280
  %291 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %292 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %291, i32 0, i32 1
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %290
  br label %351

301:                                              ; preds = %290, %280
  %302 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %303 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %302, i32 0, i32 1
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %303, align 8
  %305 = call i32 @mlx4_is_slave(%struct.TYPE_12__* %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %348, label %307

307:                                              ; preds = %301
  store i32 0, i32* %17, align 4
  br label %308

308:                                              ; preds = %334, %307
  %309 = load i32, i32* %17, align 4
  %310 = icmp slt i32 %309, 8
  br i1 %310, label %311, label %337

311:                                              ; preds = %308
  %312 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %313 = bitcast %struct.ib_mad* %312 to %struct.ib_smp*
  %314 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %17, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = bitcast %union.sl2vl_tbl_to_u64* %16 to i32**
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %17, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 %319, i32* %324, align 4
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* %17, align 4
  %327 = bitcast %union.sl2vl_tbl_to_u64* %16 to i32**
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %325, i32 %326, i32 %332)
  br label %334

334:                                              ; preds = %311
  %335 = load i32, i32* %17, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %17, align 4
  br label %308

337:                                              ; preds = %308
  %338 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %339 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %6, align 4
  %342 = sub nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = bitcast %union.sl2vl_tbl_to_u64* %16 to i32*
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @atomic64_set(i32* %344, i32 %346)
  br label %348

348:                                              ; preds = %337, %301
  br label %350

349:                                              ; preds = %40
  br label %350

350:                                              ; preds = %349, %348, %279, %222, %112, %94
  br label %351

351:                                              ; preds = %55, %105, %233, %300, %350, %33, %26
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @update_sm_ah(%struct.mlx4_ib_dev*, i32, i8*, i32) #1

declare dso_local i32 @handle_client_rereg_event(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @handle_lid_change_event(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_is_mfunc(%struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @__propagate_pkey_ev(%struct.mlx4_ib_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_is_master(%struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_is_slave(%struct.TYPE_12__*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
