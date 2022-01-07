; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qce_sha_reqctx = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.qce_alg_template = type { %struct.qce_device* }
%struct.qce_device = type { i32 (%struct.qce_device*, %struct.TYPE_2__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @qce_ahash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ahash_final(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.qce_sha_reqctx*, align 8
  %5 = alloca %struct.qce_alg_template*, align 8
  %6 = alloca %struct.qce_device*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.qce_sha_reqctx* %8, %struct.qce_sha_reqctx** %4, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.qce_alg_template* @to_ahash_tmpl(i32 %12)
  store %struct.qce_alg_template* %13, %struct.qce_alg_template** %5, align 8
  %14 = load %struct.qce_alg_template*, %struct.qce_alg_template** %5, align 8
  %15 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %14, i32 0, i32 0
  %16 = load %struct.qce_device*, %struct.qce_device** %15, align 8
  store %struct.qce_device* %16, %struct.qce_device** %6, align 8
  %17 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %18 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

22:                                               ; preds = %1
  %23 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %24 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %26 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %29 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %31 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %34 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %33, i32 0, i32 5
  store i64 %32, i64* %34, align 8
  %35 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %36 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %39 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %42 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memcpy(i32 %37, i32 %40, i64 %43)
  %45 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %46 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %49 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %52 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @sg_init_one(i32 %47, i32 %50, i64 %53)
  %55 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %56 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %59 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %61 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %64 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.qce_device*, %struct.qce_device** %6, align 8
  %66 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %65, i32 0, i32 0
  %67 = load i32 (%struct.qce_device*, %struct.TYPE_2__*)*, i32 (%struct.qce_device*, %struct.TYPE_2__*)** %66, align 8
  %68 = load %struct.qce_alg_template*, %struct.qce_alg_template** %5, align 8
  %69 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %68, i32 0, i32 0
  %70 = load %struct.qce_device*, %struct.qce_device** %69, align 8
  %71 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %72 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %71, i32 0, i32 0
  %73 = call i32 %67(%struct.qce_device* %70, %struct.TYPE_2__* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %22, %21
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.qce_alg_template* @to_ahash_tmpl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @sg_init_one(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
