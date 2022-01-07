; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_one_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_one_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.device }
%struct.device = type { i32 }
%struct.crypt_ctl = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.ablkcipher_request*, %struct.aead_request* }
%struct.ablkcipher_request = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32)* }
%struct.aead_request = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.ixp_ctx = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.aead_ctx = type { i32, i32, i32 }
%struct.ablk_ctx = type { i32, i32 }

@pdev = common dso_local global %struct.TYPE_11__* null, align 8
@EBADMSG = common dso_local global i32 0, align 4
@CTL_FLAG_MASK = common dso_local global i32 0, align 4
@ctx_pool = common dso_local global i32 0, align 4
@buffer_pool = common dso_local global i32 0, align 4
@CIPH_ENCR = common dso_local global i32 0, align 4
@CTL_FLAG_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @one_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_packet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.crypt_ctl*, align 8
  %5 = alloca %struct.ixp_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca %struct.aead_ctx*, align 8
  %9 = alloca %struct.ablkcipher_request*, align 8
  %10 = alloca %struct.ablk_ctx*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pdev, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBADMSG, align 4
  %18 = sub nsw i32 0, %17
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, -4
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call %struct.crypt_ctl* @crypt_phys2virt(i32 %24)
  store %struct.crypt_ctl* %25, %struct.crypt_ctl** %4, align 8
  %26 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %27 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CTL_FLAG_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %165 [
    i32 128, label %31
    i32 129, label %70
    i32 131, label %107
    i32 130, label %140
  ]

31:                                               ; preds = %20
  %32 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %33 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.aead_request*, %struct.aead_request** %34, align 8
  store %struct.aead_request* %35, %struct.aead_request** %7, align 8
  %36 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %37 = call %struct.aead_ctx* @aead_request_ctx(%struct.aead_request* %36)
  store %struct.aead_ctx* %37, %struct.aead_ctx** %8, align 8
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load %struct.aead_ctx*, %struct.aead_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %43 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @free_buf_chain(%struct.device* %38, i32 %41, i32 %44)
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = load %struct.aead_ctx*, %struct.aead_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %51 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @free_buf_chain(%struct.device* %46, i32 %49, i32 %52)
  %54 = load %struct.aead_ctx*, %struct.aead_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %31
  %59 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %60 = call i32 @finish_scattered_hmac(%struct.crypt_ctl* %59)
  br label %61

61:                                               ; preds = %58, %31
  %62 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %63 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %64, align 8
  %66 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %67 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %66, i32 0, i32 0
  %68 = load i32, i32* %6, align 4
  %69 = call i32 %65(%struct.TYPE_10__* %67, i32 %68)
  br label %167

70:                                               ; preds = %20
  %71 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %72 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %73, align 8
  store %struct.ablkcipher_request* %74, %struct.ablkcipher_request** %9, align 8
  %75 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %9, align 8
  %76 = call %struct.ablk_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %75)
  store %struct.ablk_ctx* %76, %struct.ablk_ctx** %10, align 8
  %77 = load %struct.ablk_ctx*, %struct.ablk_ctx** %10, align 8
  %78 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %70
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = load %struct.ablk_ctx*, %struct.ablk_ctx** %10, align 8
  %84 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %87 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @free_buf_chain(%struct.device* %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %81, %70
  %91 = load %struct.device*, %struct.device** %3, align 8
  %92 = load %struct.ablk_ctx*, %struct.ablk_ctx** %10, align 8
  %93 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %96 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @free_buf_chain(%struct.device* %91, i32 %94, i32 %97)
  %99 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %9, align 8
  %100 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %101, align 8
  %103 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %9, align 8
  %104 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %103, i32 0, i32 0
  %105 = load i32, i32* %6, align 4
  %106 = call i32 %102(%struct.TYPE_9__* %104, i32 %105)
  br label %167

107:                                              ; preds = %20
  %108 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %109 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.ixp_ctx* @crypto_tfm_ctx(i32 %111)
  store %struct.ixp_ctx* %112, %struct.ixp_ctx** %5, align 8
  %113 = load i32, i32* @ctx_pool, align 4
  %114 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %115 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %114, i32 0, i32 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %118 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %117, i32 0, i32 3
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dma_pool_free(i32 %113, %struct.TYPE_12__* %116, i32 %121)
  %123 = load i32, i32* @buffer_pool, align 4
  %124 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %125 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %124, i32 0, i32 3
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %128 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dma_pool_free(i32 %123, %struct.TYPE_12__* %126, i32 %129)
  %131 = load %struct.ixp_ctx*, %struct.ixp_ctx** %5, align 8
  %132 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %131, i32 0, i32 1
  %133 = call i32 @atomic_dec_and_test(i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %107
  %136 = load %struct.ixp_ctx*, %struct.ixp_ctx** %5, align 8
  %137 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %136, i32 0, i32 0
  %138 = call i32 @complete(i32* %137)
  br label %139

139:                                              ; preds = %135, %107
  br label %167

140:                                              ; preds = %20
  %141 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %142 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call %struct.ixp_ctx* @crypto_tfm_ctx(i32 %144)
  store %struct.ixp_ctx* %145, %struct.ixp_ctx** %5, align 8
  %146 = load i32, i32* @CIPH_ENCR, align 4
  %147 = xor i32 %146, -1
  %148 = call i32 @cpu_to_be32(i32 %147)
  %149 = load %struct.ixp_ctx*, %struct.ixp_ctx** %5, align 8
  %150 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %148
  store i32 %155, i32* %153, align 4
  %156 = load %struct.ixp_ctx*, %struct.ixp_ctx** %5, align 8
  %157 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %156, i32 0, i32 1
  %158 = call i32 @atomic_dec_and_test(i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %140
  %161 = load %struct.ixp_ctx*, %struct.ixp_ctx** %5, align 8
  %162 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %161, i32 0, i32 0
  %163 = call i32 @complete(i32* %162)
  br label %164

164:                                              ; preds = %160, %140
  br label %167

165:                                              ; preds = %20
  %166 = call i32 (...) @BUG()
  br label %167

167:                                              ; preds = %165, %164, %139, %90, %61
  %168 = load i32, i32* @CTL_FLAG_UNUSED, align 4
  %169 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %170 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  ret void
}

declare dso_local %struct.crypt_ctl* @crypt_phys2virt(i32) #1

declare dso_local %struct.aead_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @free_buf_chain(%struct.device*, i32, i32) #1

declare dso_local i32 @finish_scattered_hmac(%struct.crypt_ctl*) #1

declare dso_local %struct.ablk_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.ixp_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
