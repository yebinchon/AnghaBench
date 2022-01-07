; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_final_shash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_final_shash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.omap_sham_ctx = type { i32 }
%struct.omap_sham_reqctx = type { i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@FLAGS_HMAC = common dso_local global i32 0, align 4
@FLAGS_AUTO_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @omap_sham_final_shash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_final_shash(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.omap_sham_ctx*, align 8
  %4 = alloca %struct.omap_sham_reqctx*, align 8
  %5 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.omap_sham_ctx* @crypto_tfm_ctx(i32 %9)
  store %struct.omap_sham_ctx* %10, %struct.omap_sham_ctx** %3, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %12 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %11)
  store %struct.omap_sham_reqctx* %12, %struct.omap_sham_reqctx** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @FLAGS_HMAC, align 4
  %14 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %15 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %14, i32 0, i32 3
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @FLAGS_AUTO_XOR, align 4
  %20 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %21 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %19, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %28 = call i32 @get_block_size(%struct.omap_sham_reqctx* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %18, %1
  %30 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %34 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %38 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %44 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  %49 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %50 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @omap_sham_shash_digest(i32 %32, i32 %36, i64 %42, i64 %48, i32 %51)
  ret i32 %52
}

declare dso_local %struct.omap_sham_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @get_block_size(%struct.omap_sham_reqctx*) #1

declare dso_local i32 @omap_sham_shash_digest(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
