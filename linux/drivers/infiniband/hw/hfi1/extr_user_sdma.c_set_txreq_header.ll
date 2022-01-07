; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_set_txreq_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_set_txreq_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_sdma_request = type { i32, i32*, i64, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__, %struct.hfi1_user_sdma_pkt_q* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.hfi1_user_sdma_pkt_q = type { i32, i32, i32 }
%struct.user_sdma_txreq = type { i32, i32, %struct.hfi1_pkt_header }
%struct.hfi1_pkt_header = type { %struct.TYPE_4__, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32* }

@EXPECTED = common dso_local global i64 0, align 8
@TXREQ_FLAGS_REQ_ACK = common dso_local global i32 0, align 4
@LEN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KDETH_OM_MAX_SIZE = common dso_local global i32 0, align 4
@KDETH_OM_LARGE_SHIFT = common dso_local global i32 0, align 4
@KDETH_OM_SMALL_SHIFT = common dso_local global i32 0, align 4
@TIDCTRL = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@TID = common dso_local global i32 0, align 4
@IDX = common dso_local global i32 0, align 4
@TXREQ_FLAGS_REQ_DISABLE_SH = common dso_local global i32 0, align 4
@SH = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@OM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_sdma_request*, %struct.user_sdma_txreq*, i32)* @set_txreq_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_txreq_header(%struct.user_sdma_request* %0, %struct.user_sdma_txreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_sdma_request*, align 8
  %6 = alloca %struct.user_sdma_txreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_user_sdma_pkt_q*, align 8
  %9 = alloca %struct.hfi1_pkt_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.user_sdma_request* %0, %struct.user_sdma_request** %5, align 8
  store %struct.user_sdma_txreq* %1, %struct.user_sdma_txreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %16 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %15, i32 0, i32 8
  %17 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %16, align 8
  store %struct.hfi1_user_sdma_pkt_q* %17, %struct.hfi1_user_sdma_pkt_q** %8, align 8
  %18 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %19 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %18, i32 0, i32 2
  store %struct.hfi1_pkt_header* %19, %struct.hfi1_pkt_header** %9, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @pad_len(i32 %21)
  %23 = call i32 @get_lrh_len(%struct.hfi1_pkt_header* byval(%struct.hfi1_pkt_header) align 8 %20, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %25 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %26 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %25, i32 0, i32 7
  %27 = call i32 @memcpy(%struct.hfi1_pkt_header* %24, %struct.TYPE_6__* %26, i32 40)
  %28 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %29 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @PBC2LRH(i32 %34)
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %3
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 61440
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @LRH2PBC(i32 %41)
  %43 = or i32 %40, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %47 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = ashr i32 %50, 2
  %52 = call i32 @cpu_to_be16(i32 %51)
  %53 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %54 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %52, i32* %56, align 4
  %57 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %58 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 2
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %38
  %65 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %66 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %71 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %69, i32* %74, align 4
  %75 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %76 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %81 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %64, %38
  br label %86

86:                                               ; preds = %85, %3
  %87 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %88 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %86
  %96 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %97 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @check_header_template(%struct.user_sdma_request* %96, %struct.hfi1_pkt_header* %97, i32 %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %4, align 4
  br label %333

105:                                              ; preds = %95
  br label %309

106:                                              ; preds = %86
  %107 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %108 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %113 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @req_opcode(i32 %115)
  %117 = load i64, i64* @EXPECTED, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %121 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @set_pkt_bth_psn(i32 %111, i32 %119, i32 %122)
  %124 = call i32 @cpu_to_be32(i64 %123)
  %125 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %126 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 %124, i32* %128, align 4
  %129 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %130 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @TXREQ_FLAGS_REQ_ACK, align 4
  %133 = and i32 %131, %132
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %106
  %137 = call i32 @cpu_to_be32(i64 2147483648)
  %138 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %139 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %137
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %136, %106
  %145 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %146 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @cpu_to_le32(i32 %147)
  %149 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %150 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 6
  store i32 %148, i32* %153, align 4
  %154 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %155 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @req_opcode(i32 %157)
  %159 = load i64, i64* @EXPECTED, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %308

161:                                              ; preds = %144
  %162 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %163 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %166 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %13, align 4
  %170 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %171 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @LEN, align 4
  %175 = call i32 @EXP_TID_GET(i32 %173, i32 %174)
  %176 = load i32, i32* @PAGE_SIZE, align 4
  %177 = mul nsw i32 %175, %176
  %178 = icmp eq i32 %172, %177
  br i1 %178, label %179, label %214

179:                                              ; preds = %161
  %180 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %181 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %180, i32 0, i32 3
  store i32 0, i32* %181, align 8
  %182 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %183 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %183, align 8
  %186 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %187 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = icmp ugt i64 %185, %190
  br i1 %191, label %202, label %192

192:                                              ; preds = %179
  %193 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %194 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %197 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %192, %179
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %4, align 4
  br label %333

205:                                              ; preds = %192
  %206 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %207 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %210 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %205, %161
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* @LEN, align 4
  %217 = call i32 @EXP_TID_GET(i32 %215, i32 %216)
  %218 = load i32, i32* @PAGE_SIZE, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load i32, i32* @KDETH_OM_MAX_SIZE, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %214
  %223 = load i32, i32* @KDETH_OM_LARGE_SHIFT, align 4
  br label %226

224:                                              ; preds = %214
  %225 = load i32, i32* @KDETH_OM_SMALL_SHIFT, align 4
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i32 [ %223, %222 ], [ %225, %224 ]
  store i32 %227, i32* %10, align 4
  %228 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %229 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @TIDCTRL, align 4
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* @CTRL, align 4
  %235 = call i32 @EXP_TID_GET(i32 %233, i32 %234)
  %236 = call i32 @KDETH_SET(i32 %231, i32 %232, i32 %235)
  %237 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %238 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @TID, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* @IDX, align 4
  %244 = call i32 @EXP_TID_GET(i32 %242, i32 %243)
  %245 = call i32 @KDETH_SET(i32 %240, i32 %241, i32 %244)
  %246 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %247 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @TXREQ_FLAGS_REQ_DISABLE_SH, align 4
  %250 = and i32 %248, %249
  %251 = call i64 @unlikely(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %226
  %254 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %255 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @SH, align 4
  %259 = call i32 @KDETH_SET(i32 %257, i32 %258, i32 0)
  br label %260

260:                                              ; preds = %253, %226
  %261 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %8, align 8
  %262 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %8, align 8
  %265 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %8, align 8
  %268 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %271 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %275 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %278 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %10, align 4
  %281 = ashr i32 %279, %280
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @KDETH_OM_SMALL_SHIFT, align 4
  %284 = icmp ne i32 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @trace_hfi1_sdma_user_tid_info(i32 %263, i32 %266, i32 %269, i32 %273, i32 %276, i32 %281, i32 %285)
  %287 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %288 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @OFFSET, align 4
  %292 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %293 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %10, align 4
  %296 = ashr i32 %294, %295
  %297 = call i32 @KDETH_SET(i32 %290, i32 %291, i32 %296)
  %298 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %299 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @OM, align 4
  %303 = load i32, i32* %10, align 4
  %304 = load i32, i32* @KDETH_OM_SMALL_SHIFT, align 4
  %305 = icmp ne i32 %303, %304
  %306 = zext i1 %305 to i32
  %307 = call i32 @KDETH_SET(i32 %301, i32 %302, i32 %306)
  br label %308

308:                                              ; preds = %260, %144
  br label %309

309:                                              ; preds = %308, %105
  %310 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %8, align 8
  %311 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %8, align 8
  %314 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %8, align 8
  %317 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %320 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %324 = load i32, i32* %13, align 4
  %325 = call i32 @trace_hfi1_sdma_user_header(i32 %312, i32 %315, i32 %318, i32 %322, %struct.hfi1_pkt_header* %323, i32 %324)
  %326 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %8, align 8
  %327 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %330 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %329, i32 0, i32 1
  %331 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %9, align 8
  %332 = call i32 @sdma_txadd_kvaddr(i32 %328, i32* %330, %struct.hfi1_pkt_header* %331, i32 40)
  store i32 %332, i32* %4, align 4
  br label %333

333:                                              ; preds = %309, %202, %103
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local i32 @get_lrh_len(%struct.hfi1_pkt_header* byval(%struct.hfi1_pkt_header) align 8, i32) #1

declare dso_local i32 @pad_len(i32) #1

declare dso_local i32 @memcpy(%struct.hfi1_pkt_header*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @PBC2LRH(i32) #1

declare dso_local i32 @LRH2PBC(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_header_template(%struct.user_sdma_request*, %struct.hfi1_pkt_header*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @set_pkt_bth_psn(i32, i32, i32) #1

declare dso_local i64 @req_opcode(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @EXP_TID_GET(i32, i32) #1

declare dso_local i32 @KDETH_SET(i32, i32, i32) #1

declare dso_local i32 @trace_hfi1_sdma_user_tid_info(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trace_hfi1_sdma_user_header(i32, i32, i32, i32, %struct.hfi1_pkt_header*, i32) #1

declare dso_local i32 @sdma_txadd_kvaddr(i32, i32*, %struct.hfi1_pkt_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
