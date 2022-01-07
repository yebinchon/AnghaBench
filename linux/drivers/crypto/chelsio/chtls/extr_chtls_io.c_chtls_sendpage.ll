; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.chtls_sock = type { i32, i32, %struct.chtls_dev* }
%struct.chtls_dev = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4
@CSK_TX_MORE_DATA = common dso_local global i32 0, align 4
@ULPCB_FLAG_NO_APPEND = common dso_local global i32 0, align 4
@TX_TLSHDR_LEN = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chtls_sendpage(%struct.sock* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.chtls_sock*, align 8
  %12 = alloca %struct.chtls_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tcp_sock*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %21)
  store %struct.tcp_sock* %22, %struct.tcp_sock** %16, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %23)
  store %struct.chtls_sock* %24, %struct.chtls_sock** %11, align 8
  %25 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %26 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %25, i32 0, i32 2
  %27 = load %struct.chtls_dev*, %struct.chtls_dev** %26, align 8
  store %struct.chtls_dev* %27, %struct.chtls_dev** %12, align 8
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @MSG_DONTWAIT, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @sock_sndtimeo(%struct.sock* %28, i32 %31)
  store i64 %32, i64* %17, align 8
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = call i32 @sk_stream_wait_connect(%struct.sock* %33, i64* %17)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %37 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @sk_in_state(%struct.sock* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %5
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %268

45:                                               ; preds = %41, %5
  %46 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %47 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %13, align 4
  %49 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %50 = load i32, i32* @CSK_TX_MORE_DATA, align 4
  %51 = call i32 @csk_set_flag(%struct.chtls_sock* %49, i32 %50)
  br label %52

52:                                               ; preds = %246, %231, %45
  %53 = load i64, i64* %9, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %247

55:                                               ; preds = %52
  %56 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %57 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %56, i32 0, i32 1
  %58 = call %struct.sk_buff* @skb_peek_tail(i32* %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %18, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %63 = call %struct.TYPE_6__* @ULP_SKB_CB(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ULPCB_FLAG_NO_APPEND, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %19, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %69, %61, %55
  br label %77

77:                                               ; preds = %147, %76
  %78 = load %struct.chtls_dev*, %struct.chtls_dev** %12, align 8
  %79 = load %struct.sock*, %struct.sock** %6, align 8
  %80 = call i32 @csk_mem_free(%struct.chtls_dev* %78, %struct.sock* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %232

83:                                               ; preds = %77
  %84 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %85 = call i64 @is_tls_tx(%struct.chtls_sock* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.sock*, %struct.sock** %6, align 8
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @TX_TLSHDR_LEN, align 4
  %93 = call i32 @select_size(%struct.sock* %89, i64 %90, i32 %91, i32 %92)
  %94 = call %struct.sk_buff* @get_record_skb(%struct.sock* %88, i32 %93, i32 1)
  store %struct.sk_buff* %94, %struct.sk_buff** %18, align 8
  br label %98

95:                                               ; preds = %83
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = call %struct.sk_buff* @get_tx_skb(%struct.sock* %96, i32 0)
  store %struct.sk_buff* %97, %struct.sk_buff** %18, align 8
  br label %98

98:                                               ; preds = %95, %87
  %99 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %239

102:                                              ; preds = %98
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %19, align 4
  br label %104

104:                                              ; preds = %102, %69
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %9, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i64, i64* %9, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %114 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %20, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %118 = load i32, i32* %20, align 4
  %119 = load %struct.page*, %struct.page** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @skb_can_coalesce(%struct.sk_buff* %117, i32 %118, %struct.page* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %112
  %124 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %125 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %20, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %19, align 4
  %133 = call i32 @skb_frag_size_add(i32* %131, i32 %132)
  br label %153

134:                                              ; preds = %112
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load %struct.page*, %struct.page** %7, align 8
  %140 = call i32 @get_page(%struct.page* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %142 = load i32, i32* %20, align 4
  %143 = load %struct.page*, %struct.page** %7, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @skb_fill_page_desc(%struct.sk_buff* %141, i32 %142, %struct.page* %143, i32 %144, i32 %145)
  br label %152

147:                                              ; preds = %134
  %148 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %149 = call i32 @tx_skb_finalize(%struct.sk_buff* %148)
  %150 = load %struct.sock*, %struct.sock** %6, align 8
  %151 = call i32 @push_frames_if_head(%struct.sock* %150)
  br label %77

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %123
  %154 = load i32, i32* %19, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %153
  %165 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %166 = call i32 @tx_skb_finalize(%struct.sk_buff* %165)
  br label %167

167:                                              ; preds = %164, %153
  %168 = load i32, i32* %19, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %19, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %19, align 4
  %179 = load %struct.sock*, %struct.sock** %6, align 8
  %180 = getelementptr inbounds %struct.sock, %struct.sock* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %185 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %19, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %9, align 8
  %197 = sub i64 %196, %195
  store i64 %197, i64* %9, align 8
  %198 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i64 @corked(%struct.tcp_sock* %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %167
  %203 = load %struct.sock*, %struct.sock** %6, align 8
  %204 = call i64 @sk_stream_wspace(%struct.sock* %203)
  %205 = load %struct.sock*, %struct.sock** %6, align 8
  %206 = call i64 @sk_stream_min_wspace(%struct.sock* %205)
  %207 = icmp slt i64 %204, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %202
  %209 = load i32, i32* @ULPCB_FLAG_NO_APPEND, align 4
  %210 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %211 = call %struct.TYPE_6__* @ULP_SKB_CB(%struct.sk_buff* %210)
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %209
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %208, %202, %167
  %216 = load i64, i64* %9, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %215
  br label %247

219:                                              ; preds = %215
  %220 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %221 = call %struct.TYPE_6__* @ULP_SKB_CB(%struct.sk_buff* %220)
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @ULPCB_FLAG_NO_APPEND, align 4
  %225 = and i32 %223, %224
  %226 = call i64 @unlikely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %219
  %229 = load %struct.sock*, %struct.sock** %6, align 8
  %230 = call i32 @push_frames_if_head(%struct.sock* %229)
  br label %231

231:                                              ; preds = %228, %219
  br label %52

232:                                              ; preds = %82
  %233 = load i32, i32* @SOCK_NOSPACE, align 4
  %234 = load %struct.sock*, %struct.sock** %6, align 8
  %235 = getelementptr inbounds %struct.sock, %struct.sock* %234, i32 0, i32 1
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = call i32 @set_bit(i32 %233, i32* %237)
  br label %239

239:                                              ; preds = %232, %101
  %240 = load %struct.chtls_dev*, %struct.chtls_dev** %12, align 8
  %241 = load %struct.sock*, %struct.sock** %6, align 8
  %242 = call i32 @csk_wait_memory(%struct.chtls_dev* %240, %struct.sock* %241, i64* %17)
  store i32 %242, i32* %14, align 4
  %243 = load i32, i32* %14, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  br label %263

246:                                              ; preds = %239
  br label %52

247:                                              ; preds = %218, %52
  br label %248

248:                                              ; preds = %266, %247
  %249 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %250 = load i32, i32* @CSK_TX_MORE_DATA, align 4
  %251 = call i32 @csk_reset_flag(%struct.chtls_sock* %249, i32 %250)
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = load %struct.sock*, %struct.sock** %6, align 8
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @chtls_tcp_push(%struct.sock* %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %248
  br label %259

259:                                              ; preds = %276, %258
  %260 = load %struct.sock*, %struct.sock** %6, align 8
  %261 = call i32 @release_sock(%struct.sock* %260)
  %262 = load i32, i32* %15, align 4
  ret i32 %262

263:                                              ; preds = %245
  %264 = load i32, i32* %15, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  br label %248

267:                                              ; preds = %263
  br label %268

268:                                              ; preds = %267, %44
  %269 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %270 = call i64 @csk_conn_inline(%struct.chtls_sock* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %268
  %273 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %274 = load i32, i32* @CSK_TX_MORE_DATA, align 4
  %275 = call i32 @csk_reset_flag(%struct.chtls_sock* %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %268
  %277 = load %struct.sock*, %struct.sock** %6, align 8
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %14, align 4
  %280 = call i32 @sk_stream_error(%struct.sock* %277, i32 %278, i32 %279)
  store i32 %280, i32* %15, align 4
  br label %259
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @sk_stream_wait_connect(%struct.sock*, i64*) #1

declare dso_local i32 @sk_in_state(%struct.sock*, i32) #1

declare dso_local i32 @csk_set_flag(%struct.chtls_sock*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local %struct.TYPE_6__* @ULP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @csk_mem_free(%struct.chtls_dev*, %struct.sock*) #1

declare dso_local i64 @is_tls_tx(%struct.chtls_sock*) #1

declare dso_local %struct.sk_buff* @get_record_skb(%struct.sock*, i32, i32) #1

declare dso_local i32 @select_size(%struct.sock*, i64, i32, i32) #1

declare dso_local %struct.sk_buff* @get_tx_skb(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_can_coalesce(%struct.sk_buff*, i32, %struct.page*, i32) #1

declare dso_local i32 @skb_frag_size_add(i32*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

declare dso_local i32 @tx_skb_finalize(%struct.sk_buff*) #1

declare dso_local i32 @push_frames_if_head(%struct.sock*) #1

declare dso_local i64 @corked(%struct.tcp_sock*, i32) #1

declare dso_local i64 @sk_stream_wspace(%struct.sock*) #1

declare dso_local i64 @sk_stream_min_wspace(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @csk_wait_memory(%struct.chtls_dev*, %struct.sock*, i64*) #1

declare dso_local i32 @csk_reset_flag(%struct.chtls_sock*, i32) #1

declare dso_local i32 @chtls_tcp_push(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @csk_conn_inline(%struct.chtls_sock*) #1

declare dso_local i32 @sk_stream_error(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
