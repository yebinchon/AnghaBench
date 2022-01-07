; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_chtls_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_chtls_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_sock = type { i32, i32, i32, %struct.TYPE_10__, i32, i32, %struct.sock*, %struct.chtls_dev* }
%struct.TYPE_10__ = type { i32, i32, i64, i32 }
%struct.sock = type { i32 }
%struct.chtls_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.tls_key_req = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i64, i8*, i8* }
%struct._key_ctx = type { i32 }
%struct.sk_buff = type { i32 }

@AEAD_H_SIZE = common dso_local global i32 0, align 4
@TLS_TX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FW_ULPTX_WR = common dso_local global i32 0, align 4
@FW_WR_COMPL_F = common dso_local global i32 0, align 4
@TLS_MFS = common dso_local global i32 0, align 4
@ULP_TX_MEM_WRITE = common dso_local global i32 0, align 4
@ULP_TX_SC_IMM = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@TLS_RX = common dso_local global i32 0, align 4
@TCB_ULP_RAW_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chtls_setkey(%struct.chtls_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.chtls_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tls_key_req*, align 8
  %9 = alloca %struct.chtls_dev*, align 8
  %10 = alloca %struct._key_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.sock*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.chtls_sock* %0, %struct.chtls_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %20 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %19, i32 0, i32 7
  %21 = load %struct.chtls_dev*, %struct.chtls_dev** %20, align 8
  store %struct.chtls_dev* %21, %struct.chtls_dev** %9, align 8
  %22 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %23 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %22, i32 0, i32 6
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %24, %struct.sock** %15, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AEAD_H_SIZE, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32 @roundup(i32 %30, i32 32)
  store i32 %31, i32* %12, align 4
  %32 = call i32 @roundup(i32 80, i32 16)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TLS_TX, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %3
  %40 = load %struct.sock*, %struct.sock** %15, align 8
  %41 = call i32 @lock_sock(%struct.sock* %40)
  %42 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %43 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %42, i32 0, i32 5
  %44 = call i64 @skb_queue_len(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %48 = call i32 @chtls_push_frames(%struct.chtls_sock* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.sock*, %struct.sock** %15, align 8
  %51 = call i32 @release_sock(%struct.sock* %50)
  br label %52

52:                                               ; preds = %49, %3
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.sk_buff* @alloc_skb(i32 %53, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %14, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %264

61:                                               ; preds = %52
  %62 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @get_new_keyid(%struct.chtls_sock* %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %18, align 4
  br label %260

70:                                               ; preds = %61
  %71 = load %struct.chtls_dev*, %struct.chtls_dev** %9, align 8
  %72 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @keyid_to_addr(i32 %74, i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i64 @__skb_put_zero(%struct.sk_buff* %77, i32 %78)
  %80 = inttoptr i64 %79 to %struct.tls_key_req*
  store %struct.tls_key_req* %80, %struct.tls_key_req** %8, align 8
  %81 = load i32, i32* @FW_ULPTX_WR, align 4
  %82 = call i32 @FW_WR_OP_V(i32 %81)
  %83 = load i32, i32* @FW_WR_COMPL_F, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @FW_WR_ATOMIC_V(i32 1)
  %86 = or i32 %84, %85
  %87 = call i8* @cpu_to_be32(i32 %86)
  %88 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %89 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  store i8* %87, i8** %90, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @DIV_ROUND_UP(i32 %91, i32 16)
  %93 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %94 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @FW_WR_FLOWID_V(i32 %95)
  %97 = or i32 %92, %96
  %98 = call i32 @FW_WR_LEN16_V(i32 %97)
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %101 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  store i8* %99, i8** %102, align 8
  %103 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %104 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @TLS_MFS, align 4
  %107 = call i32 @htons(i32 %106)
  %108 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %109 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %113 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* @ULP_TX_MEM_WRITE, align 4
  %116 = call i32 @ULPTX_CMD_V(i32 %115)
  %117 = call i32 @T5_ULP_MEMIO_ORDER_V(i32 1)
  %118 = or i32 %116, %117
  %119 = call i32 @T5_ULP_MEMIO_IMM_V(i32 1)
  %120 = or i32 %118, %119
  %121 = call i8* @cpu_to_be32(i32 %120)
  %122 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %123 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  store i8* %121, i8** %124, align 8
  %125 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %126 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = shl i32 %127, 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 %130, 32
  %132 = trunc i64 %131 to i32
  %133 = call i32 @DIV_ROUND_UP(i32 %132, i32 16)
  %134 = or i32 %128, %133
  %135 = call i8* @cpu_to_be32(i32 %134)
  %136 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %137 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  store i8* %135, i8** %138, align 8
  %139 = load i32, i32* %12, align 4
  %140 = ashr i32 %139, 5
  %141 = call i32 @ULP_MEMIO_DATA_LEN_V(i32 %140)
  %142 = call i8* @cpu_to_be32(i32 %141)
  %143 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %144 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i8* %142, i8** %145, align 8
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @ULP_MEMIO_ADDR_V(i32 %146)
  %148 = call i8* @cpu_to_be32(i32 %147)
  %149 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %150 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  %152 = load i32, i32* @ULP_TX_SC_IMM, align 4
  %153 = call i32 @ULPTX_CMD_V(i32 %152)
  %154 = call i8* @cpu_to_be32(i32 %153)
  %155 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %156 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  store i8* %154, i8** %157, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i8* @cpu_to_be32(i32 %158)
  %160 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %161 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  %163 = load %struct.tls_key_req*, %struct.tls_key_req** %8, align 8
  %164 = getelementptr inbounds %struct.tls_key_req, %struct.tls_key_req* %163, i64 1
  %165 = bitcast %struct.tls_key_req* %164 to %struct._key_ctx*
  store %struct._key_ctx* %165, %struct._key_ctx** %10, align 8
  %166 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %167 = load %struct._key_ctx*, %struct._key_ctx** %10, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @chtls_key_info(%struct.chtls_sock* %166, %struct._key_ctx* %167, i32 %168, i32 %169)
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %18, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %70
  br label %257

174:                                              ; preds = %70
  %175 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %176 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %177 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %178 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @set_wr_txq(%struct.sk_buff* %175, i32 %176, i32 %180)
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @DIV_ROUND_UP(i32 %182, i32 16)
  %184 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %185 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @DIV_ROUND_UP(i32 %188, i32 16)
  %190 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %191 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %196 = call i32 @enqueue_wr(%struct.chtls_sock* %194, %struct.sk_buff* %195)
  %197 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %198 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %201 = call i32 @cxgb4_ofld_send(i32 %199, %struct.sk_buff* %200)
  %202 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %203 = call i32 @chtls_set_scmd(%struct.chtls_sock* %202)
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @TLS_RX, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %247

207:                                              ; preds = %174
  %208 = load %struct.sock*, %struct.sock** %15, align 8
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @chtls_set_tcb_keyid(%struct.sock* %208, i32 %209)
  store i32 %210, i32* %18, align 4
  %211 = load i32, i32* %18, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  br label %257

214:                                              ; preds = %207
  %215 = load %struct.sock*, %struct.sock** %15, align 8
  %216 = load i32, i32* @TCB_ULP_RAW_M, align 4
  %217 = call i32 @TCB_ULP_RAW_V(i32 %216)
  %218 = call i32 @TF_TLS_KEY_SIZE_V(i32 1)
  %219 = call i32 @TF_TLS_CONTROL_V(i32 1)
  %220 = or i32 %218, %219
  %221 = call i32 @TF_TLS_ACTIVE_V(i32 1)
  %222 = or i32 %220, %221
  %223 = call i32 @TF_TLS_ENABLE_V(i32 1)
  %224 = or i32 %222, %223
  %225 = call i32 @TCB_ULP_RAW_V(i32 %224)
  %226 = call i32 @chtls_set_tcb_field(%struct.sock* %215, i32 0, i32 %217, i32 %225)
  store i32 %226, i32* %18, align 4
  %227 = load i32, i32* %18, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %214
  br label %257

230:                                              ; preds = %214
  %231 = load %struct.sock*, %struct.sock** %15, align 8
  %232 = call i32 @chtls_set_tcb_seqno(%struct.sock* %231)
  store i32 %232, i32* %18, align 4
  %233 = load i32, i32* %18, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %257

236:                                              ; preds = %230
  %237 = load %struct.sock*, %struct.sock** %15, align 8
  %238 = call i32 @chtls_set_tcb_quiesce(%struct.sock* %237, i32 0)
  store i32 %238, i32* %18, align 4
  %239 = load i32, i32* %18, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  br label %257

242:                                              ; preds = %236
  %243 = load i32, i32* %16, align 4
  %244 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %245 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 8
  br label %255

247:                                              ; preds = %174
  %248 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %249 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 2
  store i64 0, i64* %250, align 8
  %251 = load i32, i32* %16, align 4
  %252 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %253 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  store i32 %251, i32* %254, align 4
  br label %255

255:                                              ; preds = %247, %242
  %256 = load i32, i32* %18, align 4
  store i32 %256, i32* %4, align 4
  br label %264

257:                                              ; preds = %241, %235, %229, %213, %173
  %258 = load %struct.sock*, %struct.sock** %15, align 8
  %259 = call i32 @free_tls_keyid(%struct.sock* %258)
  br label %260

260:                                              ; preds = %257, %67
  %261 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %262 = call i32 @kfree_skb(%struct.sk_buff* %261)
  %263 = load i32, i32* %18, align 4
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %260, %255, %58
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @chtls_push_frames(%struct.chtls_sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @get_new_keyid(%struct.chtls_sock*, i32) #1

declare dso_local i32 @keyid_to_addr(i32, i32) #1

declare dso_local i64 @__skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_WR_ATOMIC_V(i32) #1

declare dso_local i32 @FW_WR_LEN16_V(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @FW_WR_FLOWID_V(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ULPTX_CMD_V(i32) #1

declare dso_local i32 @T5_ULP_MEMIO_ORDER_V(i32) #1

declare dso_local i32 @T5_ULP_MEMIO_IMM_V(i32) #1

declare dso_local i32 @ULP_MEMIO_DATA_LEN_V(i32) #1

declare dso_local i32 @ULP_MEMIO_ADDR_V(i32) #1

declare dso_local i32 @chtls_key_info(%struct.chtls_sock*, %struct._key_ctx*, i32, i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @enqueue_wr(%struct.chtls_sock*, %struct.sk_buff*) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @chtls_set_scmd(%struct.chtls_sock*) #1

declare dso_local i32 @chtls_set_tcb_keyid(%struct.sock*, i32) #1

declare dso_local i32 @chtls_set_tcb_field(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @TCB_ULP_RAW_V(i32) #1

declare dso_local i32 @TF_TLS_KEY_SIZE_V(i32) #1

declare dso_local i32 @TF_TLS_CONTROL_V(i32) #1

declare dso_local i32 @TF_TLS_ACTIVE_V(i32) #1

declare dso_local i32 @TF_TLS_ENABLE_V(i32) #1

declare dso_local i32 @chtls_set_tcb_seqno(%struct.sock*) #1

declare dso_local i32 @chtls_set_tcb_quiesce(%struct.sock*, i32) #1

declare dso_local i32 @free_tls_keyid(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
