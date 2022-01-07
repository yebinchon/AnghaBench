; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_set_creq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_set_creq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_aead_rctx = type { i32, %struct.TYPE_10__, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.se_crypto_request }
%struct.se_crypto_request = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }
%union.gph_p3 = type { i64 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@FLEXI_CRYPTO_ENCRYPT_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_aead_rctx*)* @nitrox_set_creq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_set_creq(%struct.nitrox_aead_rctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_aead_rctx*, align 8
  %4 = alloca %struct.se_crypto_request*, align 8
  %5 = alloca %union.gph_p3, align 8
  %6 = alloca i32, align 4
  store %struct.nitrox_aead_rctx* %0, %struct.nitrox_aead_rctx** %3, align 8
  %7 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %8 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store %struct.se_crypto_request* %9, %struct.se_crypto_request** %4, align 8
  %10 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %11 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %14 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %16 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %28 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %30 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @FLEXI_CRYPTO_ENCRYPT_HMAC, align 4
  %33 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %34 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %36 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %39 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %43 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %42, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @cpu_to_be16(i64 %44)
  %46 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %47 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i8* %45, i8** %48, align 8
  %49 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %50 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %53 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %52, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = call i8* @cpu_to_be16(i64 %55)
  %57 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %58 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  %60 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %61 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %64 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %63, i32 0, i32 9
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = call i8* @cpu_to_be16(i64 %66)
  %68 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %69 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = bitcast %union.gph_p3* %5 to i64*
  store i64 0, i64* %71, align 8
  %72 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %73 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = bitcast %union.gph_p3* %5 to i64*
  store i64 %74, i64* %75, align 8
  %76 = bitcast %union.gph_p3* %5 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @cpu_to_be16(i64 %77)
  %79 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %80 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %83 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %86 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.se_crypto_request*, %struct.se_crypto_request** %4, align 8
  %88 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 4, i32* %90, align 8
  %91 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %92 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %91, i32 0, i32 1
  %93 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %94 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %97 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %100 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %103 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @alloc_src_sglist(%struct.TYPE_10__* %92, i32 %95, i32 %98, i64 %101, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %25
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %131

110:                                              ; preds = %25
  %111 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %112 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %111, i32 0, i32 1
  %113 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %114 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %117 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %120 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @alloc_dst_sglist(%struct.TYPE_10__* %112, i32 %115, i64 %118, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %110
  %126 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %3, align 8
  %127 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %126, i32 0, i32 1
  %128 = call i32 @free_src_sglist(%struct.TYPE_10__* %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %125, %108
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @alloc_src_sglist(%struct.TYPE_10__*, i32, i32, i64, i32) #1

declare dso_local i32 @alloc_dst_sglist(%struct.TYPE_10__*, i32, i64, i32) #1

declare dso_local i32 @free_src_sglist(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
