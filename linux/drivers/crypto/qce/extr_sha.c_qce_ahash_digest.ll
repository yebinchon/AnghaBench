; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qce_sha_reqctx = type { i32, i32, i32, i32 }
%struct.qce_alg_template = type { %struct.qce_device* }
%struct.qce_device = type { i32 (%struct.qce_device*, %struct.TYPE_2__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @qce_ahash_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ahash_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.qce_sha_reqctx*, align 8
  %5 = alloca %struct.qce_alg_template*, align 8
  %6 = alloca %struct.qce_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.qce_sha_reqctx* %9, %struct.qce_sha_reqctx** %4, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.qce_alg_template* @to_ahash_tmpl(i32 %13)
  store %struct.qce_alg_template* %14, %struct.qce_alg_template** %5, align 8
  %15 = load %struct.qce_alg_template*, %struct.qce_alg_template** %5, align 8
  %16 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %15, i32 0, i32 0
  %17 = load %struct.qce_device*, %struct.qce_device** %16, align 8
  store %struct.qce_device* %17, %struct.qce_device** %6, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = call i32 @qce_ahash_init(%struct.ahash_request* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %1
  %25 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %26 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %29 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %31 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %34 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %36 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %4, align 8
  %38 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.qce_device*, %struct.qce_device** %6, align 8
  %40 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %39, i32 0, i32 0
  %41 = load i32 (%struct.qce_device*, %struct.TYPE_2__*)*, i32 (%struct.qce_device*, %struct.TYPE_2__*)** %40, align 8
  %42 = load %struct.qce_alg_template*, %struct.qce_alg_template** %5, align 8
  %43 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %42, i32 0, i32 0
  %44 = load %struct.qce_device*, %struct.qce_device** %43, align 8
  %45 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %46 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %45, i32 0, i32 0
  %47 = call i32 %41(%struct.qce_device* %44, %struct.TYPE_2__* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %24, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.qce_alg_template* @to_ahash_tmpl(i32) #1

declare dso_local i32 @qce_ahash_init(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
