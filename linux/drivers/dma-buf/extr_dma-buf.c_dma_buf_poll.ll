; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dma_buf* }
%struct.dma_buf = type { %struct.TYPE_2__, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, %struct.dma_resv* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_buf_poll_cb_t = type { i32, i32 }
%struct.dma_resv = type { i32, i32, i32 }
%struct.dma_resv_list = type { i32, i32* }
%struct.dma_fence = type { i32 }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dma_buf_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_buf_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dma_buf*, align 8
  %7 = alloca %struct.dma_resv*, align 8
  %8 = alloca %struct.dma_resv_list*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_buf_poll_cb_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_buf_poll_cb_t*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dma_fence*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.dma_buf*, %struct.dma_buf** %19, align 8
  store %struct.dma_buf* %20, %struct.dma_buf** %6, align 8
  %21 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %22 = icmp ne %struct.dma_buf* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %25 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %24, i32 0, i32 3
  %26 = load %struct.dma_resv*, %struct.dma_resv** %25, align 8
  %27 = icmp ne %struct.dma_resv* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @EPOLLERR, align 4
  store i32 %29, i32* %3, align 4
  br label %262

30:                                               ; preds = %23
  %31 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %32 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %31, i32 0, i32 3
  %33 = load %struct.dma_resv*, %struct.dma_resv** %32, align 8
  store %struct.dma_resv* %33, %struct.dma_resv** %7, align 8
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %36 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %35, i32 0, i32 0
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @poll_wait(%struct.file* %34, %struct.TYPE_2__* %36, i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @poll_requested_events(i32* %39)
  %41 = load i32, i32* @EPOLLIN, align 4
  %42 = load i32, i32* @EPOLLOUT, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %262

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %77, %48
  %50 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %51 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %50, i32 0, i32 0
  %52 = call i32 @read_seqcount_begin(i32* %51)
  store i32 %52, i32* %12, align 4
  %53 = call i32 (...) @rcu_read_lock()
  %54 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %55 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @rcu_dereference(i32 %56)
  %58 = bitcast i8* %57 to %struct.dma_resv_list*
  store %struct.dma_resv_list* %58, %struct.dma_resv_list** %8, align 8
  %59 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %60 = icmp ne %struct.dma_resv_list* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %63 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %11, align 4
  br label %66

65:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %68 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @rcu_dereference(i32 %69)
  %71 = bitcast i8* %70 to %struct.dma_fence*
  store %struct.dma_fence* %71, %struct.dma_fence** %9, align 8
  %72 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %73 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %72, i32 0, i32 0
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @read_seqcount_retry(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = call i32 (...) @rcu_read_unlock()
  br label %49

79:                                               ; preds = %66
  %80 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %81 = icmp ne %struct.dma_fence* %80, null
  br i1 %81, label %82, label %166

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @EPOLLOUT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %166

90:                                               ; preds = %87, %82
  %91 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %92 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %91, i32 0, i32 2
  store %struct.dma_buf_poll_cb_t* %92, %struct.dma_buf_poll_cb_t** %13, align 8
  %93 = load i32, i32* @EPOLLIN, align 4
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @EPOLLOUT, align 4
  %98 = load i32, i32* %14, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %102 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @spin_lock_irq(i32* %103)
  %105 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %13, align 8
  %106 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %100
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %13, align 8
  %112 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %14, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %123

119:                                              ; preds = %100
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %13, align 8
  %122 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %109
  %124 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %125 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock_irq(i32* %126)
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %14, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %165

132:                                              ; preds = %123
  %133 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %134 = call i32 @dma_fence_get_rcu(%struct.dma_fence* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %10, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %10, align 4
  %141 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %13, align 8
  %142 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %141, i32 0, i32 1
  %143 = call i32 @dma_buf_poll_cb(i32* null, i32* %142)
  br label %164

144:                                              ; preds = %132
  %145 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %146 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %13, align 8
  %147 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %146, i32 0, i32 1
  %148 = call i32 @dma_fence_add_callback(%struct.dma_fence* %145, i32* %147, i32 (i32*, i32*)* @dma_buf_poll_cb)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %14, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %10, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %10, align 4
  %155 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %156 = call i32 @dma_fence_put(%struct.dma_fence* %155)
  br label %163

157:                                              ; preds = %144
  %158 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %159 = call i32 @dma_fence_put(%struct.dma_fence* %158)
  %160 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %13, align 8
  %161 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %160, i32 0, i32 1
  %162 = call i32 @dma_buf_poll_cb(i32* null, i32* %161)
  br label %163

163:                                              ; preds = %157, %150
  br label %164

164:                                              ; preds = %163, %136
  br label %165

165:                                              ; preds = %164, %123
  br label %166

166:                                              ; preds = %165, %87, %79
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @EPOLLOUT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %258

171:                                              ; preds = %166
  %172 = load i32, i32* %11, align 4
  %173 = icmp ugt i32 %172, 0
  br i1 %173, label %174, label %258

174:                                              ; preds = %171
  %175 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %176 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %175, i32 0, i32 1
  store %struct.dma_buf_poll_cb_t* %176, %struct.dma_buf_poll_cb_t** %15, align 8
  %177 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %178 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = call i32 @spin_lock_irq(i32* %179)
  %181 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %15, align 8
  %182 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %174
  %186 = load i32, i32* @EPOLLOUT, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %10, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %10, align 4
  br label %194

190:                                              ; preds = %174
  %191 = load i32, i32* @EPOLLOUT, align 4
  %192 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %15, align 8
  %193 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %196 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = call i32 @spin_unlock_irq(i32* %197)
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @EPOLLOUT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %194
  br label %259

204:                                              ; preds = %194
  store i32 0, i32* %16, align 4
  br label %205

205:                                              ; preds = %246, %204
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp ult i32 %206, %207
  br i1 %208, label %209, label %249

209:                                              ; preds = %205
  %210 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %211 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %16, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @rcu_dereference(i32 %216)
  %218 = bitcast i8* %217 to %struct.dma_fence*
  store %struct.dma_fence* %218, %struct.dma_fence** %17, align 8
  %219 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %220 = call i32 @dma_fence_get_rcu(%struct.dma_fence* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %209
  %223 = load i32, i32* @EPOLLOUT, align 4
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %10, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %10, align 4
  %227 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %15, align 8
  %228 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %227, i32 0, i32 1
  %229 = call i32 @dma_buf_poll_cb(i32* null, i32* %228)
  br label %249

230:                                              ; preds = %209
  %231 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %232 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %15, align 8
  %233 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %232, i32 0, i32 1
  %234 = call i32 @dma_fence_add_callback(%struct.dma_fence* %231, i32* %233, i32 (i32*, i32*)* @dma_buf_poll_cb)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %230
  %237 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %238 = call i32 @dma_fence_put(%struct.dma_fence* %237)
  %239 = load i32, i32* @EPOLLOUT, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %10, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %10, align 4
  br label %249

243:                                              ; preds = %230
  %244 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %245 = call i32 @dma_fence_put(%struct.dma_fence* %244)
  br label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %16, align 4
  br label %205

249:                                              ; preds = %236, %222, %205
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %15, align 8
  %255 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %254, i32 0, i32 1
  %256 = call i32 @dma_buf_poll_cb(i32* null, i32* %255)
  br label %257

257:                                              ; preds = %253, %249
  br label %258

258:                                              ; preds = %257, %171, %166
  br label %259

259:                                              ; preds = %258, %203
  %260 = call i32 (...) @rcu_read_unlock()
  %261 = load i32, i32* %10, align 4
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %259, %47, %28
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @poll_wait(%struct.file*, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dma_fence_get_rcu(%struct.dma_fence*) #1

declare dso_local i32 @dma_buf_poll_cb(i32*, i32*) #1

declare dso_local i32 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32 (i32*, i32*)*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
