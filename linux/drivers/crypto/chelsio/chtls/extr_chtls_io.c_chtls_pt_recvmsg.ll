; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_pt_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_pt_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32, %struct.TYPE_3__, i64, i32 (%struct.sock*)* }
%struct.TYPE_3__ = type { i64 }
%struct.msghdr = type { i32 }
%struct.chtls_sock = type { i64, i64, i32, %struct.chtls_hws }
%struct.chtls_hws = type { i64, i32 }
%struct.tcp_sock = type { i32, i64, i64 }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@MSG_WAITALL = common dso_local global i32 0, align 4
@CSK_UPDATE_RCV_WND = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ULPCB_FLAG_TLS_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @chtls_pt_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_pt_recvmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.chtls_sock*, align 8
  %14 = alloca %struct.chtls_hws*, align 8
  %15 = alloca %struct.tcp_sock*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.msghdr* %1, %struct.msghdr** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %24)
  store %struct.chtls_sock* %25, %struct.chtls_sock** %13, align 8
  %26 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %27 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %26, i32 0, i32 3
  store %struct.chtls_hws* %27, %struct.chtls_hws** %14, align 8
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %28)
  store %struct.tcp_sock* %29, %struct.tcp_sock** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %30 = load %struct.sock*, %struct.sock** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @sock_rcvtimeo(%struct.sock* %30, i32 %31)
  store i64 %32, i64* %20, align 8
  %33 = load %struct.sock*, %struct.sock** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @MSG_WAITALL, align 4
  %36 = and i32 %34, %35
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @sock_rcvlowat(%struct.sock* %33, i32 %36, i64 %37)
  store i32 %38, i32* %19, align 4
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = load i32, i32* @CSK_UPDATE_RCV_WND, align 4
  %41 = call i32 @csk_flag(%struct.sock* %39, i32 %40)
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %6
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @chtls_cleanup_rbuf(%struct.sock* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %6
  br label %49

49:                                               ; preds = %425, %48
  store i64 0, i64* %22, align 8
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br label %62

62:                                               ; preds = %54, %49
  %63 = phi i1 [ false, %49 ], [ %61, %54 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %428

71:                                               ; preds = %67
  %72 = load i32, i32* @current, align 4
  %73 = call i64 @signal_pending(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i64, i64* %20, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* %20, align 8
  %80 = call i32 @sock_intr_errno(i64 %79)
  br label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i32 [ %80, %78 ], [ %83, %81 ]
  store i32 %85, i32* %18, align 4
  br label %428

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %62
  %88 = load %struct.sock*, %struct.sock** %7, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 2
  %90 = call %struct.sk_buff* @skb_peek(i32* %89)
  store %struct.sk_buff* %90, %struct.sk_buff** %21, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %234

94:                                               ; preds = %87
  %95 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %96 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %94
  %100 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %101 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %100, i32 0, i32 2
  %102 = call i64 @skb_queue_len(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %106 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %107 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %110 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  %113 = zext i1 %112 to i32
  %114 = call i64 @chtls_push_frames(%struct.chtls_sock* %105, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %104
  %117 = load %struct.sock*, %struct.sock** %7, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 5
  %119 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %118, align 8
  %120 = load %struct.sock*, %struct.sock** %7, align 8
  %121 = call i32 %119(%struct.sock* %120)
  br label %122

122:                                              ; preds = %116, %104, %99, %94
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %19, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load %struct.sock*, %struct.sock** %7, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %428

133:                                              ; preds = %126, %122
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %133
  %137 = load %struct.sock*, %struct.sock** %7, align 8
  %138 = getelementptr inbounds %struct.sock, %struct.sock* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %136
  %142 = load %struct.sock*, %struct.sock** %7, align 8
  %143 = getelementptr inbounds %struct.sock, %struct.sock* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TCP_CLOSE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %158, label %147

147:                                              ; preds = %141
  %148 = load %struct.sock*, %struct.sock** %7, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @RCV_SHUTDOWN, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %147
  %155 = load i32, i32* @current, align 4
  %156 = call i64 @signal_pending(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %147, %141, %136
  br label %428

159:                                              ; preds = %154
  %160 = load i64, i64* %20, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  br label %428

163:                                              ; preds = %159
  br label %209

164:                                              ; preds = %133
  %165 = load %struct.sock*, %struct.sock** %7, align 8
  %166 = load i32, i32* @SOCK_DONE, align 4
  %167 = call i64 @sock_flag(%struct.sock* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %428

170:                                              ; preds = %164
  %171 = load %struct.sock*, %struct.sock** %7, align 8
  %172 = getelementptr inbounds %struct.sock, %struct.sock* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load %struct.sock*, %struct.sock** %7, align 8
  %177 = call i32 @sock_error(%struct.sock* %176)
  store i32 %177, i32* %18, align 4
  br label %428

178:                                              ; preds = %170
  %179 = load %struct.sock*, %struct.sock** %7, align 8
  %180 = getelementptr inbounds %struct.sock, %struct.sock* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @RCV_SHUTDOWN, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %428

186:                                              ; preds = %178
  %187 = load %struct.sock*, %struct.sock** %7, align 8
  %188 = getelementptr inbounds %struct.sock, %struct.sock* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @TCP_CLOSE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i32, i32* @ENOTCONN, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %18, align 4
  br label %428

195:                                              ; preds = %186
  %196 = load i64, i64* %20, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* @EAGAIN, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %18, align 4
  br label %428

201:                                              ; preds = %195
  %202 = load i32, i32* @current, align 4
  %203 = call i64 @signal_pending(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i64, i64* %20, align 8
  %207 = call i32 @sock_intr_errno(i64 %206)
  store i32 %207, i32* %18, align 4
  br label %428

208:                                              ; preds = %201
  br label %209

209:                                              ; preds = %208, %163
  %210 = load %struct.sock*, %struct.sock** %7, align 8
  %211 = getelementptr inbounds %struct.sock, %struct.sock* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %209
  %216 = load %struct.sock*, %struct.sock** %7, align 8
  %217 = call i32 @release_sock(%struct.sock* %216)
  %218 = load %struct.sock*, %struct.sock** %7, align 8
  %219 = call i32 @lock_sock(%struct.sock* %218)
  %220 = load %struct.sock*, %struct.sock** %7, align 8
  %221 = load i32, i32* %18, align 4
  %222 = call i32 @chtls_cleanup_rbuf(%struct.sock* %220, i32 %221)
  br label %425

223:                                              ; preds = %209
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %19, align 4
  %226 = icmp sge i32 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %428

228:                                              ; preds = %223
  %229 = load %struct.sock*, %struct.sock** %7, align 8
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @chtls_cleanup_rbuf(%struct.sock* %229, i32 %230)
  %232 = load %struct.sock*, %struct.sock** %7, align 8
  %233 = call i32 @sk_wait_data(%struct.sock* %232, i64* %20, i32* null)
  br label %425

234:                                              ; preds = %93
  %235 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %266, label %239

239:                                              ; preds = %234
  %240 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %241 = call i32 @skb_dst_set(%struct.sk_buff* %240, i32* null)
  %242 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %243 = load %struct.sock*, %struct.sock** %7, align 8
  %244 = getelementptr inbounds %struct.sock, %struct.sock* %243, i32 0, i32 2
  %245 = call i32 @__skb_unlink(%struct.sk_buff* %242, i32* %244)
  %246 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %247 = call i32 @kfree_skb(%struct.sk_buff* %246)
  %248 = load i32, i32* %18, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %239
  %251 = load i64, i64* %20, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load i32, i32* @EAGAIN, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %18, align 4
  br label %428

256:                                              ; preds = %250, %239
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %19, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = load %struct.sock*, %struct.sock** %7, align 8
  %262 = call i32 @release_sock(%struct.sock* %261)
  %263 = load %struct.sock*, %struct.sock** %7, align 8
  %264 = call i32 @lock_sock(%struct.sock* %263)
  br label %425

265:                                              ; preds = %256
  br label %428

266:                                              ; preds = %234
  %267 = load %struct.chtls_hws*, %struct.chtls_hws** %14, align 8
  %268 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %22, align 8
  %270 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %271 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %22, align 8
  %274 = sub i64 %272, %273
  store i64 %274, i64* %16, align 8
  %275 = load i64, i64* %9, align 8
  %276 = load i64, i64* %16, align 8
  %277 = icmp ult i64 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %266
  %279 = load i64, i64* %9, align 8
  store i64 %279, i64* %16, align 8
  br label %280

280:                                              ; preds = %278, %266
  %281 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %282 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i64 @unlikely(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %323

286:                                              ; preds = %280
  %287 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %288 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %291 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %289, %292
  store i64 %293, i64* %23, align 8
  %294 = load i64, i64* %23, align 8
  %295 = load i64, i64* %16, align 8
  %296 = icmp ult i64 %294, %295
  br i1 %296, label %297, label %322

297:                                              ; preds = %286
  %298 = load i64, i64* %23, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i64, i64* %23, align 8
  store i64 %301, i64* %16, align 8
  br label %321

302:                                              ; preds = %297
  %303 = load %struct.sock*, %struct.sock** %7, align 8
  %304 = load i32, i32* @SOCK_URGINLINE, align 4
  %305 = call i64 @sock_flag(%struct.sock* %303, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %320, label %307

307:                                              ; preds = %302
  %308 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %309 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %309, align 8
  %312 = load i64, i64* %22, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %22, align 8
  %314 = load i64, i64* %16, align 8
  %315 = add i64 %314, -1
  store i64 %315, i64* %16, align 8
  %316 = load i64, i64* %16, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %307
  br label %351

319:                                              ; preds = %307
  br label %320

320:                                              ; preds = %319, %302
  br label %321

321:                                              ; preds = %320, %300
  br label %322

322:                                              ; preds = %321, %286
  br label %323

323:                                              ; preds = %322, %280
  %324 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %325 = load i64, i64* %22, align 8
  %326 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %327 = load i64, i64* %16, align 8
  %328 = call i64 @skb_copy_datagram_msg(%struct.sk_buff* %324, i64 %325, %struct.msghdr* %326, i64 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %323
  %331 = load i32, i32* %18, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %330
  %334 = load i32, i32* @EFAULT, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %18, align 4
  br label %428

336:                                              ; preds = %330
  br label %337

337:                                              ; preds = %336, %323
  %338 = load i64, i64* %16, align 8
  %339 = load i32, i32* %18, align 4
  %340 = sext i32 %339 to i64
  %341 = add i64 %340, %338
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %18, align 4
  %343 = load i64, i64* %16, align 8
  %344 = load i64, i64* %9, align 8
  %345 = sub i64 %344, %343
  store i64 %345, i64* %9, align 8
  %346 = load i64, i64* %16, align 8
  %347 = load %struct.chtls_hws*, %struct.chtls_hws** %14, align 8
  %348 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = add i64 %349, %346
  store i64 %350, i64* %348, align 8
  br label %351

351:                                              ; preds = %337, %318
  %352 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %353 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %368

356:                                              ; preds = %351
  %357 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %358 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %361 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = call i64 @after(i64 %359, i64 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %356
  %366 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %367 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %366, i32 0, i32 0
  store i32 0, i32* %367, align 8
  br label %368

368:                                              ; preds = %365, %356, %351
  %369 = load i64, i64* %16, align 8
  %370 = load i64, i64* %22, align 8
  %371 = add i64 %369, %370
  %372 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %373 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = icmp uge i64 %371, %374
  br i1 %375, label %376, label %424

376:                                              ; preds = %368
  %377 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %378 = call %struct.TYPE_4__* @ULP_SKB_CB(%struct.sk_buff* %377)
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @ULPCB_FLAG_TLS_HDR, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %397

384:                                              ; preds = %376
  %385 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %386 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %389 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = add i64 %390, %387
  store i64 %391, i64* %389, align 8
  %392 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %393 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.chtls_hws*, %struct.chtls_hws** %14, align 8
  %396 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %395, i32 0, i32 1
  store i32 %394, i32* %396, align 8
  br label %406

397:                                              ; preds = %376
  %398 = load %struct.chtls_hws*, %struct.chtls_hws** %14, align 8
  %399 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = sext i32 %400 to i64
  %402 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %403 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = add nsw i64 %404, %401
  store i64 %405, i64* %403, align 8
  br label %406

406:                                              ; preds = %397, %384
  %407 = load %struct.sock*, %struct.sock** %7, align 8
  %408 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %409 = call i32 @chtls_free_skb(%struct.sock* %407, %struct.sk_buff* %408)
  %410 = load i32, i32* %17, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %17, align 4
  %412 = load %struct.chtls_hws*, %struct.chtls_hws** %14, align 8
  %413 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %412, i32 0, i32 0
  store i64 0, i64* %413, align 8
  %414 = load i32, i32* %18, align 4
  %415 = load i32, i32* %19, align 4
  %416 = icmp sge i32 %414, %415
  br i1 %416, label %417, label %423

417:                                              ; preds = %406
  %418 = load %struct.sock*, %struct.sock** %7, align 8
  %419 = getelementptr inbounds %struct.sock, %struct.sock* %418, i32 0, i32 2
  %420 = call %struct.sk_buff* @skb_peek(i32* %419)
  %421 = icmp ne %struct.sk_buff* %420, null
  br i1 %421, label %423, label %422

422:                                              ; preds = %417
  br label %428

423:                                              ; preds = %417, %406
  br label %424

424:                                              ; preds = %423, %368
  br label %425

425:                                              ; preds = %424, %260, %228, %215
  %426 = load i64, i64* %9, align 8
  %427 = icmp ugt i64 %426, 0
  br i1 %427, label %49, label %428

428:                                              ; preds = %425, %422, %333, %265, %253, %227, %205, %198, %192, %185, %175, %169, %162, %158, %132, %84, %70
  %429 = load i32, i32* %17, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %428
  %432 = load %struct.sock*, %struct.sock** %7, align 8
  %433 = load i32, i32* %18, align 4
  %434 = call i32 @chtls_cleanup_rbuf(%struct.sock* %432, i32 %433)
  br label %435

435:                                              ; preds = %431, %428
  %436 = load %struct.sock*, %struct.sock** %7, align 8
  %437 = call i32 @release_sock(%struct.sock* %436)
  %438 = load i32, i32* %18, align 4
  ret i32 %438
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @sock_rcvlowat(%struct.sock*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @csk_flag(%struct.sock*, i32) #1

declare dso_local i32 @chtls_cleanup_rbuf(%struct.sock*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @chtls_push_frames(%struct.chtls_sock*, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sk_wait_data(%struct.sock*, i64*, i32*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_datagram_msg(%struct.sk_buff*, i64, %struct.msghdr*, i64) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local %struct.TYPE_4__* @ULP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @chtls_free_skb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
