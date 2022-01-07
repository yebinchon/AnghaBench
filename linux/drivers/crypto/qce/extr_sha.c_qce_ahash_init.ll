; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qce_sha_reqctx = type { i32, i32, i32, i32 }
%struct.qce_alg_template = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @qce_ahash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ahash_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.qce_sha_reqctx*, align 8
  %4 = alloca %struct.qce_alg_template*, align 8
  %5 = alloca i32*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = call %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.qce_sha_reqctx* %7, %struct.qce_sha_reqctx** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %9 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.qce_alg_template* @to_ahash_tmpl(i32 %11)
  store %struct.qce_alg_template* %12, %struct.qce_alg_template** %4, align 8
  %13 = load %struct.qce_alg_template*, %struct.qce_alg_template** %4, align 8
  %14 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %3, align 8
  %17 = call i32 @memset(%struct.qce_sha_reqctx* %16, i32 0, i32 16)
  %18 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %3, align 8
  %19 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %3, align 8
  %21 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.qce_alg_template*, %struct.qce_alg_template** %4, align 8
  %23 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %3, align 8
  %26 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %3, align 8
  %28 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @memcpy(i32 %29, i32* %30, i32 4)
  ret i32 0
}

declare dso_local %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.qce_alg_template* @to_ahash_tmpl(i32) #1

declare dso_local i32 @memset(%struct.qce_sha_reqctx*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
