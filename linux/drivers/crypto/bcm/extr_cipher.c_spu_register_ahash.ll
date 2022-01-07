; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_register_ahash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_register_ahash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.spu_hw }
%struct.spu_hw = type { i64, i64 }
%struct.iproc_alg_s = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.ahash_alg }
%struct.ahash_alg = type { %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@iproc_priv = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@HASH_ALG_AES = common dso_local global i64 0, align 8
@HASH_MODE_XCBC = common dso_local global i64 0, align 8
@SPU_TYPE_SPUM = common dso_local global i64 0, align 8
@HASH_ALG_SHA3_224 = common dso_local global i64 0, align 8
@SPU_SUBTYPE_SPU2_V2 = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@hash_pri = common dso_local global i32 0, align 4
@ahash_cra_init = common dso_local global i32 0, align 4
@generic_cra_exit = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@HASH_MODE_HMAC = common dso_local global i64 0, align 8
@ahash_init = common dso_local global i32 0, align 4
@ahash_update = common dso_local global i32 0, align 4
@ahash_final = common dso_local global i32 0, align 4
@ahash_finup = common dso_local global i32 0, align 4
@ahash_digest = common dso_local global i32 0, align 4
@HASH_MODE_CMAC = common dso_local global i64 0, align 8
@ahash_setkey = common dso_local global i32 0, align 4
@ahash_hmac_setkey = common dso_local global i32 0, align 4
@ahash_hmac_init = common dso_local global i32 0, align 4
@ahash_hmac_update = common dso_local global i32 0, align 4
@ahash_hmac_final = common dso_local global i32 0, align 4
@ahash_hmac_finup = common dso_local global i32 0, align 4
@ahash_hmac_digest = common dso_local global i32 0, align 4
@ahash_export = common dso_local global i32 0, align 4
@ahash_import = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"  registered ahash %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_alg_s*)* @spu_register_ahash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_register_ahash(%struct.iproc_alg_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iproc_alg_s*, align 8
  %4 = alloca %struct.spu_hw*, align 8
  %5 = alloca %struct.ahash_alg*, align 8
  %6 = alloca i32, align 4
  store %struct.iproc_alg_s* %0, %struct.iproc_alg_s** %3, align 8
  store %struct.spu_hw* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iproc_priv, i32 0, i32 0), %struct.spu_hw** %4, align 8
  %7 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %8 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.ahash_alg* %9, %struct.ahash_alg** %5, align 8
  %10 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %11 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HASH_ALG_AES, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %18 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HASH_MODE_XCBC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.spu_hw*, %struct.spu_hw** %4, align 8
  %25 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SPU_TYPE_SPUM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %169

30:                                               ; preds = %23, %16, %1
  %31 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %32 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HASH_ALG_SHA3_224, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.spu_hw*, %struct.spu_hw** %4, align 8
  %39 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SPU_SUBTYPE_SPU2_V2, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %169

44:                                               ; preds = %37, %30
  %45 = load i32, i32* @THIS_MODULE, align 4
  %46 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %47 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 7
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @hash_pri, align 4
  %51 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %52 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 6
  store i32 %50, i32* %54, align 8
  %55 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %56 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %60 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 4, i32* %62, align 8
  %63 = load i32, i32* @ahash_cra_init, align 4
  %64 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %65 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  store i32 %63, i32* %67, align 8
  %68 = load i32, i32* @generic_cra_exit, align 4
  %69 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %70 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %74 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %75 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 8
  %78 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %79 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i32 4, i32* %80, align 8
  %81 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %82 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HASH_MODE_HMAC, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %128

87:                                               ; preds = %44
  %88 = load i32, i32* @ahash_init, align 4
  %89 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %90 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @ahash_update, align 4
  %92 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %93 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @ahash_final, align 4
  %95 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %96 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @ahash_finup, align 4
  %98 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %99 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @ahash_digest, align 4
  %101 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %102 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %104 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @HASH_ALG_AES, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %87
  %110 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %111 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @HASH_MODE_XCBC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %118 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HASH_MODE_CMAC, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %116, %109
  %124 = load i32, i32* @ahash_setkey, align 4
  %125 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %126 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %116, %87
  br label %147

128:                                              ; preds = %44
  %129 = load i32, i32* @ahash_hmac_setkey, align 4
  %130 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %131 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @ahash_hmac_init, align 4
  %133 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %134 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @ahash_hmac_update, align 4
  %136 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %137 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @ahash_hmac_final, align 4
  %139 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %140 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @ahash_hmac_finup, align 4
  %142 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %143 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @ahash_hmac_digest, align 4
  %145 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %146 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %128, %127
  %148 = load i32, i32* @ahash_export, align 4
  %149 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %150 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @ahash_import, align 4
  %152 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %153 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %155 = call i32 @crypto_register_ahash(%struct.ahash_alg* %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %147
  %159 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %160 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %147
  %162 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %163 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %161, %43, %29
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @crypto_register_ahash(%struct.ahash_alg*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
