; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.safexcel_ahash_ctx = type { %struct.TYPE_5__, i32, %struct.safexcel_crypto_priv* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.safexcel_ahash_req = type { i32, i64, i64, i32, i64, i64, i32 }

@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_DIGEST_PRECOMPUTED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @safexcel_ahash_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_ahash_enqueue(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.safexcel_ahash_ctx*, align 8
  %5 = alloca %struct.safexcel_ahash_req*, align 8
  %6 = alloca %struct.safexcel_crypto_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %9)
  %11 = call %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(i32 %10)
  store %struct.safexcel_ahash_ctx* %11, %struct.safexcel_ahash_ctx** %4, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.safexcel_ahash_req* %13, %struct.safexcel_ahash_req** %5, align 8
  %14 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %14, i32 0, i32 2
  %16 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %15, align 8
  store %struct.safexcel_crypto_priv* %16, %struct.safexcel_crypto_priv** %6, align 8
  %17 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %18 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %124

24:                                               ; preds = %1
  %25 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %26 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %111

31:                                               ; preds = %24
  %32 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %111, label %37

37:                                               ; preds = %31
  %38 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %39 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %111

42:                                               ; preds = %37
  %43 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %44 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %49 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CONTEXT_CONTROL_DIGEST_PRECOMPUTED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %107, label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %61 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %64 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @memcmp(i64 %59, i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %107, label %68

68:                                               ; preds = %53
  %69 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %70 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %75 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %78 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %107, label %81

81:                                               ; preds = %73, %68
  %82 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %83 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %94 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = ashr i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %92, %97
  %99 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %100 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %103 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @memcmp(i64 %98, i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %86, %73, %53, %47
  %108 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %109 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %86, %81, %37, %31, %24
  %112 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %113 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %119 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %122 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %117, %111
  br label %153

124:                                              ; preds = %1
  %125 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %126 = call i32 @safexcel_select_ring(%struct.safexcel_crypto_priv* %125)
  %127 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %128 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %131 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %134 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @EIP197_GFP_FLAGS(i32 %135)
  %137 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %138 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = call %struct.TYPE_8__* @dma_pool_zalloc(i32 %132, i32 %136, i32* %139)
  %141 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %142 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  store %struct.TYPE_8__* %140, %struct.TYPE_8__** %143, align 8
  %144 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %145 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = icmp ne %struct.TYPE_8__* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %124
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %202

152:                                              ; preds = %124
  br label %153

153:                                              ; preds = %152, %123
  %154 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %155 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %8, align 4
  %158 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %159 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %158, i32 0, i32 1
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = call i32 @spin_lock_bh(i32* %164)
  %166 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %167 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %174 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %173, i32 0, i32 0
  %175 = call i32 @crypto_enqueue_request(i32* %172, i32* %174)
  store i32 %175, i32* %7, align 4
  %176 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %177 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %176, i32 0, i32 1
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = call i32 @spin_unlock_bh(i32* %182)
  %184 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %185 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %184, i32 0, i32 1
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %193 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %192, i32 0, i32 1
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = call i32 @queue_work(i32 %191, i32* %199)
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %153, %149
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @memcmp(i64, i32, i32) #1

declare dso_local i32 @safexcel_select_ring(%struct.safexcel_crypto_priv*) #1

declare dso_local %struct.TYPE_8__* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @EIP197_GFP_FLAGS(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
