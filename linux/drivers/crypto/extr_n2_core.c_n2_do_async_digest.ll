; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_do_async_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_do_async_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_queue = type { i32, i32, %struct.cwq_initial_entry* }
%struct.cwq_initial_entry = type { i32, i64, i64, i64, i64, i64, i64, i8* }
%struct.ahash_request = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.crypto_hash_walk = type { i8* }
%struct.n2_hash_req_ctx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.n2_hash_ctx = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@cpu_to_cwq = common dso_local global %struct.spu_queue** null, align 8
@OPCODE_INPLACE_BIT = common dso_local global i32 0, align 4
@OPCODE_AUTH_MAC = common dso_local global i32 0, align 4
@CONTROL_END_OF_BLOCK = common dso_local global i32 0, align 4
@HV_EOK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32, i32, i32, i8*, i64, i32)* @n2_do_async_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_do_async_digest(%struct.ahash_request* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahash_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.crypto_ahash*, align 8
  %17 = alloca %struct.cwq_initial_entry*, align 8
  %18 = alloca %struct.crypto_hash_walk, align 8
  %19 = alloca %struct.spu_queue*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.n2_hash_req_ctx*, align 8
  %25 = alloca %struct.n2_hash_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %27 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %26)
  store %struct.crypto_ahash* %27, %struct.crypto_ahash** %16, align 8
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %21, align 4
  %30 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %31 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 65536
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %7
  %38 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %39 = call %struct.n2_hash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %38)
  store %struct.n2_hash_req_ctx* %39, %struct.n2_hash_req_ctx** %24, align 8
  %40 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %41 = call %struct.n2_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %40)
  store %struct.n2_hash_ctx* %41, %struct.n2_hash_ctx** %25, align 8
  %42 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %24, align 8
  %43 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %42, i32 0, i32 0
  %44 = load %struct.n2_hash_ctx*, %struct.n2_hash_ctx** %25, align 8
  %45 = getelementptr inbounds %struct.n2_hash_ctx, %struct.n2_hash_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ahash_request_set_tfm(%struct.TYPE_7__* %43, i32 %46)
  %48 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %49 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %24, align 8
  %55 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %59 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %24, align 8
  %62 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %65 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %24, align 8
  %68 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %71 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %24, align 8
  %74 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %24, align 8
  %77 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %76, i32 0, i32 0
  %78 = call i32 @crypto_ahash_digest(%struct.TYPE_7__* %77)
  store i32 %78, i32* %8, align 4
  br label %201

79:                                               ; preds = %7
  %80 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %81 = call i32 @crypto_hash_walk_first(%struct.ahash_request* %80, %struct.crypto_hash_walk* %18)
  store i32 %81, i32* %22, align 4
  %82 = call i32 (...) @get_cpu()
  store i32 %82, i32* %23, align 4
  %83 = load %struct.spu_queue**, %struct.spu_queue*** @cpu_to_cwq, align 8
  %84 = load i32, i32* %23, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.spu_queue*, %struct.spu_queue** %83, i64 %85
  %87 = load %struct.spu_queue*, %struct.spu_queue** %86, align 8
  store %struct.spu_queue* %87, %struct.spu_queue** %19, align 8
  %88 = load %struct.spu_queue*, %struct.spu_queue** %19, align 8
  %89 = icmp ne %struct.spu_queue* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %198

91:                                               ; preds = %79
  %92 = load %struct.spu_queue*, %struct.spu_queue** %19, align 8
  %93 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %92, i32 0, i32 1
  %94 = load i64, i64* %20, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.spu_queue*, %struct.spu_queue** %19, align 8
  %97 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %96, i32 0, i32 2
  %98 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %97, align 8
  %99 = load %struct.spu_queue*, %struct.spu_queue** %19, align 8
  %100 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %98, i64 %102
  store %struct.cwq_initial_entry* %103, %struct.cwq_initial_entry** %17, align 8
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @OPCODE_INPLACE_BIT, align 4
  %109 = load i32, i32* @OPCODE_AUTH_MAC, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @control_word_base(i32 %104, i32 %105, i32 0, i32 %106, i32 %107, i32 0, i32 1, i32 0, i32 0, i32 %110)
  %112 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %113 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %18, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @__pa(i8* %115)
  %117 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %118 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %121 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = call i8* @__pa(i8* %122)
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %126 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %128 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %130 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %129, i32 0, i32 4
  store i64 0, i64* %130, align 8
  %131 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %132 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %131, i32 0, i32 5
  store i64 0, i64* %132, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = call i8* @__pa(i8* %133)
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %137 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %136, i32 0, i32 6
  store i64 %135, i64* %137, align 8
  %138 = call i32 @crypto_hash_walk_done(%struct.crypto_hash_walk* %18, i32 0)
  store i32 %138, i32* %22, align 4
  br label %139

139:                                              ; preds = %142, %91
  %140 = load i32, i32* %22, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %139
  %143 = load %struct.spu_queue*, %struct.spu_queue** %19, align 8
  %144 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %145 = call %struct.cwq_initial_entry* @spu_queue_next(%struct.spu_queue* %143, %struct.cwq_initial_entry* %144)
  store %struct.cwq_initial_entry* %145, %struct.cwq_initial_entry** %17, align 8
  %146 = load i32, i32* %22, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %149 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %18, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i8* @__pa(i8* %151)
  %153 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %154 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %153, i32 0, i32 7
  store i8* %152, i8** %154, align 8
  %155 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %156 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %158 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %157, i32 0, i32 2
  store i64 0, i64* %158, align 8
  %159 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %160 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %159, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %162 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %161, i32 0, i32 4
  store i64 0, i64* %162, align 8
  %163 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %164 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %163, i32 0, i32 5
  store i64 0, i64* %164, align 8
  %165 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %166 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %165, i32 0, i32 6
  store i64 0, i64* %166, align 8
  %167 = call i32 @crypto_hash_walk_done(%struct.crypto_hash_walk* %18, i32 0)
  store i32 %167, i32* %22, align 4
  br label %139

168:                                              ; preds = %139
  %169 = load i32, i32* @CONTROL_END_OF_BLOCK, align 4
  %170 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %171 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.spu_queue*, %struct.spu_queue** %19, align 8
  %175 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %17, align 8
  %176 = call i64 @submit_and_wait_for_tail(%struct.spu_queue* %174, %struct.cwq_initial_entry* %175)
  %177 = load i64, i64* @HV_EOK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %168
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %21, align 4
  br label %183

182:                                              ; preds = %168
  store i32 0, i32* %21, align 4
  br label %183

183:                                              ; preds = %182, %179
  %184 = load %struct.spu_queue*, %struct.spu_queue** %19, align 8
  %185 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %184, i32 0, i32 1
  %186 = load i64, i64* %20, align 8
  %187 = call i32 @spin_unlock_irqrestore(i32* %185, i64 %186)
  %188 = load i32, i32* %21, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %192 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i8*, i8** %13, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @memcpy(i32 %193, i8* %194, i32 %195)
  br label %197

197:                                              ; preds = %190, %183
  br label %198

198:                                              ; preds = %197, %90
  %199 = call i32 (...) @put_cpu()
  %200 = load i32, i32* %21, align 4
  store i32 %200, i32* %8, align 4
  br label %201

201:                                              ; preds = %198, %37
  %202 = load i32, i32* %8, align 4
  ret i32 %202
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.n2_hash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.n2_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @crypto_ahash_digest(%struct.TYPE_7__*) #1

declare dso_local i32 @crypto_hash_walk_first(%struct.ahash_request*, %struct.crypto_hash_walk*) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @control_word_base(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @__pa(i8*) #1

declare dso_local i32 @crypto_hash_walk_done(%struct.crypto_hash_walk*, i32) #1

declare dso_local %struct.cwq_initial_entry* @spu_queue_next(%struct.spu_queue*, %struct.cwq_initial_entry*) #1

declare dso_local i64 @submit_and_wait_for_tail(%struct.spu_queue*, %struct.cwq_initial_entry*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
