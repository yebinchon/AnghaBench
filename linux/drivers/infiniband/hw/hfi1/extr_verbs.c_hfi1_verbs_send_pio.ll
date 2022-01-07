; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_verbs_send_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_verbs_send_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.TYPE_9__, i64, i32, %struct.hfi1_qp_priv* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.hfi1_qp_priv = type { i32, i32 }
%struct.hfi1_pkt_state = type { %struct.TYPE_14__*, i32, %struct.hfi1_pportdata* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_10__, %struct.send_context*, %struct.rvt_sge_state* }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.send_context = type { i32 }
%struct.rvt_sge_state = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.hfi1_pportdata = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.pio_buf = type { i32 }

@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@SIZE_OF_LT = common dso_local global i32 0, align 4
@PBC_PACKET_BYPASS = common dso_local global i32 0, align 4
@PBC_INSERT_BYPASS_ICRC = common dso_local global i32 0, align 4
@PBC_DC_INFO_SHIFT = common dso_local global i32 0, align 4
@PIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"alloc failed. state not active, completing\00", align 1
@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"alloc failed. state active, queuing\00", align 1
@RVT_S_WAIT_PIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_verbs_send_pio(%struct.rvt_qp* %0, %struct.hfi1_pkt_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.hfi1_pkt_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_qp_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rvt_sge_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hfi1_pportdata*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.send_context*, align 8
  %19 = alloca %struct.pio_buf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32 (%struct.rvt_qp*, i32)*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.hfi1_pkt_state* %1, %struct.hfi1_pkt_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 4
  %30 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %29, align 8
  store %struct.hfi1_qp_priv* %30, %struct.hfi1_qp_priv** %8, align 8
  %31 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %32 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %37 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 4
  %40 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %39, align 8
  store %struct.rvt_sge_state* %40, %struct.rvt_sge_state** %10, align 8
  %41 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %42 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %47 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %46, i32 0, i32 2
  %48 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %47, align 8
  store %struct.hfi1_pportdata* %48, %struct.hfi1_pportdata** %14, align 8
  store i64 0, i64* %17, align 8
  %49 = load i32, i32* @IB_WC_SUCCESS, align 4
  store i32 %49, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 (%struct.rvt_qp*, i32)* null, i32 (%struct.rvt_qp*, i32)** %22, align 8
  store i32 0, i32* %23, align 4
  %50 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %51 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %3
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 %59, 2
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @hfi1_get_16b_padding(i32 %60, i32 %61)
  store i32 %62, i32* %24, align 4
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* @SIZE_OF_CRC, align 4
  %65 = shl i32 %64, 2
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* @SIZE_OF_LT, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %23, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %23, align 4
  %71 = add nsw i32 %69, %70
  %72 = ashr i32 %71, 2
  store i32 %72, i32* %12, align 4
  %73 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %74 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i32* %78, i32** %15, align 8
  br label %89

79:                                               ; preds = %3
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 3
  %82 = ashr i32 %81, 2
  store i32 %82, i32* %12, align 4
  %83 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %84 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i32* %88, i32** %15, align 8
  br label %89

89:                                               ; preds = %79, %58
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 1
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %13, align 4
  %96 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %97 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %101 [
    i32 129, label %100
    i32 128, label %100
  ]

100:                                              ; preds = %89, %89
  store i32 (%struct.rvt_qp*, i32)* @verbs_pio_complete, i32 (%struct.rvt_qp*, i32)** %22, align 8
  br label %102

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %100
  %103 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %104 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %16, align 4
  %106 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %107 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = load %struct.send_context*, %struct.send_context** %109, align 8
  store %struct.send_context* %110, %struct.send_context** %18, align 8
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i64 @likely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %175

116:                                              ; preds = %102
  %117 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %118 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dd_from_ibdev(i32 %120)
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @sc_to_vlt(i32 %121, i32 %122)
  store i32 %123, i32* %25, align 4
  %124 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %125 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %124, i32 0, i32 0
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %116
  %133 = load i32, i32* @PBC_PACKET_BYPASS, align 4
  %134 = load i32, i32* @PBC_INSERT_BYPASS_ICRC, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %145

138:                                              ; preds = %116
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @ib_is_sc5(i32 %139)
  %141 = load i32, i32* @PBC_DC_INFO_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %138, %132
  %146 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %149 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %25, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @create_pbc(%struct.hfi1_pportdata* %146, i32 %147, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %155 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %156 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @hfi1_dbg_should_fault_tx(%struct.rvt_qp* %154, i32 %157)
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %145
  %162 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %163 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %164 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @hfi1_fault_tx(%struct.rvt_qp* %162, i32 %165, i32 %166)
  store i32 %167, i32* %7, align 4
  br label %174

168:                                              ; preds = %145
  %169 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %170 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @update_hcrc(i32 %171, i32 %172)
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %168, %161
  br label %175

175:                                              ; preds = %174, %102
  %176 = load i32 (%struct.rvt_qp*, i32)*, i32 (%struct.rvt_qp*, i32)** %22, align 8
  %177 = icmp ne i32 (%struct.rvt_qp*, i32)* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %180 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %179, i32 0, i32 1
  %181 = call i32 @iowait_pio_inc(i32* %180)
  br label %182

182:                                              ; preds = %178, %175
  %183 = load %struct.send_context*, %struct.send_context** %18, align 8
  %184 = load i32, i32* %13, align 4
  %185 = load i32 (%struct.rvt_qp*, i32)*, i32 (%struct.rvt_qp*, i32)** %22, align 8
  %186 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %187 = call %struct.pio_buf* @sc_buffer_alloc(%struct.send_context* %183, i32 %184, i32 (%struct.rvt_qp*, i32)* %185, %struct.rvt_qp* %186)
  store %struct.pio_buf* %187, %struct.pio_buf** %19, align 8
  %188 = load %struct.pio_buf*, %struct.pio_buf** %19, align 8
  %189 = call i64 @IS_ERR_OR_NULL(%struct.pio_buf* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %218

191:                                              ; preds = %182
  %192 = load i32 (%struct.rvt_qp*, i32)*, i32 (%struct.rvt_qp*, i32)** %22, align 8
  %193 = icmp ne i32 (%struct.rvt_qp*, i32)* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %196 = call i32 @verbs_pio_complete(%struct.rvt_qp* %195, i32 0)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load %struct.pio_buf*, %struct.pio_buf** %19, align 8
  %199 = call i64 @IS_ERR(%struct.pio_buf* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32, i32* @PIO, align 4
  %203 = call i32 @hfi1_cdbg(i32 %202, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %204 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %204, i32* %20, align 4
  br label %296

205:                                              ; preds = %197
  %206 = load i32, i32* @PIO, align 4
  %207 = call i32 @hfi1_cdbg(i32 %206, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %208 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %209 = load %struct.send_context*, %struct.send_context** %18, align 8
  %210 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %211 = load i32, i32* @RVT_S_WAIT_PIO, align 4
  %212 = call i32 @pio_wait(%struct.rvt_qp* %208, %struct.send_context* %209, %struct.hfi1_pkt_state* %210, i32 %211)
  store i32 %212, i32* %21, align 4
  %213 = load i32, i32* %21, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %205
  br label %347

216:                                              ; preds = %205
  %217 = load i32, i32* %21, align 4
  store i32 %217, i32* %4, align 4
  br label %353

218:                                              ; preds = %182
  %219 = load i32, i32* %12, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %218
  %222 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %223 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %222, i32 0, i32 0
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = load %struct.pio_buf*, %struct.pio_buf** %19, align 8
  %226 = load i32, i32* %7, align 4
  %227 = load i32*, i32** %15, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @pio_copy(%struct.TYPE_13__* %224, %struct.pio_buf* %225, i32 %226, i32* %227, i32 %228)
  br label %278

230:                                              ; preds = %218
  %231 = load %struct.pio_buf*, %struct.pio_buf** %19, align 8
  %232 = load i32, i32* %7, align 4
  %233 = load i32*, i32** %15, align 8
  %234 = load i32, i32* %9, align 4
  %235 = mul nsw i32 %234, 4
  %236 = call i32 @seg_pio_copy_start(%struct.pio_buf* %231, i32 %232, i32* %233, i32 %235)
  %237 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %10, align 8
  %238 = icmp ne %struct.rvt_sge_state* %237, null
  br i1 %238, label %239, label %263

239:                                              ; preds = %230
  br label %240

240:                                              ; preds = %243, %239
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %262

243:                                              ; preds = %240
  %244 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %10, align 8
  %245 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  store i8* %247, i8** %26, align 8
  %248 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %10, align 8
  %249 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %248, i32 0, i32 0
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @rvt_get_sge_length(%struct.TYPE_12__* %249, i32 %250)
  store i32 %251, i32* %27, align 4
  %252 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %10, align 8
  %253 = load i32, i32* %27, align 4
  %254 = call i32 @rvt_update_sge(%struct.rvt_sge_state* %252, i32 %253, i32 0)
  %255 = load %struct.pio_buf*, %struct.pio_buf** %19, align 8
  %256 = load i8*, i8** %26, align 8
  %257 = load i32, i32* %27, align 4
  %258 = call i32 @seg_pio_copy_mid(%struct.pio_buf* %255, i8* %256, i32 %257)
  %259 = load i32, i32* %27, align 4
  %260 = load i32, i32* %11, align 4
  %261 = sub nsw i32 %260, %259
  store i32 %261, i32* %11, align 4
  br label %240

262:                                              ; preds = %240
  br label %263

263:                                              ; preds = %262, %230
  %264 = load i32, i32* %23, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %263
  %267 = load %struct.pio_buf*, %struct.pio_buf** %19, align 8
  %268 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %269 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %268, i32 0, i32 0
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = load i32, i32* %23, align 4
  %274 = call i32 @seg_pio_copy_mid(%struct.pio_buf* %267, i8* %272, i32 %273)
  br label %275

275:                                              ; preds = %266, %263
  %276 = load %struct.pio_buf*, %struct.pio_buf** %19, align 8
  %277 = call i32 @seg_pio_copy_end(%struct.pio_buf* %276)
  br label %278

278:                                              ; preds = %275, %221
  %279 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %280 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %281 = load i32, i32* %13, align 4
  %282 = call i32 @update_tx_opstats(%struct.rvt_qp* %279, %struct.hfi1_pkt_state* %280, i32 %281)
  %283 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %284 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @dd_from_ibdev(i32 %286)
  %288 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %289 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %288, i32 0, i32 0
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = load i32, i32* %16, align 4
  %294 = call i32 @ib_is_sc5(i32 %293)
  %295 = call i32 @trace_pio_output_ibhdr(i32 %287, %struct.TYPE_11__* %292, i32 %294)
  br label %296

296:                                              ; preds = %278, %201
  %297 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %298 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %297, i32 0, i32 0
  %299 = load i64, i64* %17, align 8
  %300 = call i32 @spin_lock_irqsave(i32* %298, i64 %299)
  %301 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %302 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %296
  %306 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %307 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %308 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* %20, align 4
  %311 = call i32 @rvt_send_complete(%struct.rvt_qp* %306, i64 %309, i32 %310)
  br label %342

312:                                              ; preds = %296
  %313 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %314 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 129
  br i1 %317, label %318, label %341

318:                                              ; preds = %312
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  %321 = icmp eq i32 %319, %320
  %322 = zext i1 %321 to i32
  %323 = call i64 @unlikely(i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %318
  %326 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %327 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %328 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %327, i32 0, i32 0
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 0
  %332 = call i32 @hfi1_rc_verbs_aborted(%struct.rvt_qp* %326, %struct.TYPE_11__* %331)
  br label %333

333:                                              ; preds = %325, %318
  %334 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %335 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %336 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %335, i32 0, i32 0
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 0
  %340 = call i32 @hfi1_rc_send_complete(%struct.rvt_qp* %334, %struct.TYPE_11__* %339)
  br label %341

341:                                              ; preds = %333, %312
  br label %342

342:                                              ; preds = %341, %305
  %343 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %344 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %343, i32 0, i32 0
  %345 = load i64, i64* %17, align 8
  %346 = call i32 @spin_unlock_irqrestore(i32* %344, i64 %345)
  store i32 0, i32* %21, align 4
  br label %347

347:                                              ; preds = %342, %215
  %348 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %349 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %348, i32 0, i32 0
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %349, align 8
  %351 = call i32 @hfi1_put_txreq(%struct.TYPE_14__* %350)
  %352 = load i32, i32* %21, align 4
  store i32 %352, i32* %4, align 4
  br label %353

353:                                              ; preds = %347, %216
  %354 = load i32, i32* %4, align 4
  ret i32 %354
}

declare dso_local i32 @hfi1_get_16b_padding(i32, i32) #1

declare dso_local i32 @verbs_pio_complete(%struct.rvt_qp*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sc_to_vlt(i32, i32) #1

declare dso_local i32 @dd_from_ibdev(i32) #1

declare dso_local i32 @ib_is_sc5(i32) #1

declare dso_local i32 @create_pbc(%struct.hfi1_pportdata*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hfi1_dbg_should_fault_tx(%struct.rvt_qp*, i32) #1

declare dso_local i32 @hfi1_fault_tx(%struct.rvt_qp*, i32, i32) #1

declare dso_local i32 @update_hcrc(i32, i32) #1

declare dso_local i32 @iowait_pio_inc(i32*) #1

declare dso_local %struct.pio_buf* @sc_buffer_alloc(%struct.send_context*, i32, i32 (%struct.rvt_qp*, i32)*, %struct.rvt_qp*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.pio_buf*) #1

declare dso_local i64 @IS_ERR(%struct.pio_buf*) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*) #1

declare dso_local i32 @pio_wait(%struct.rvt_qp*, %struct.send_context*, %struct.hfi1_pkt_state*, i32) #1

declare dso_local i32 @pio_copy(%struct.TYPE_13__*, %struct.pio_buf*, i32, i32*, i32) #1

declare dso_local i32 @seg_pio_copy_start(%struct.pio_buf*, i32, i32*, i32) #1

declare dso_local i32 @rvt_get_sge_length(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rvt_update_sge(%struct.rvt_sge_state*, i32, i32) #1

declare dso_local i32 @seg_pio_copy_mid(%struct.pio_buf*, i8*, i32) #1

declare dso_local i32 @seg_pio_copy_end(%struct.pio_buf*) #1

declare dso_local i32 @update_tx_opstats(%struct.rvt_qp*, %struct.hfi1_pkt_state*, i32) #1

declare dso_local i32 @trace_pio_output_ibhdr(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rvt_send_complete(%struct.rvt_qp*, i64, i32) #1

declare dso_local i32 @hfi1_rc_verbs_aborted(%struct.rvt_qp*, %struct.TYPE_11__*) #1

declare dso_local i32 @hfi1_rc_send_complete(%struct.rvt_qp*, %struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hfi1_put_txreq(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
