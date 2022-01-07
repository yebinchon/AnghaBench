; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_edesc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_edesc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32 }
%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.talitos_ctx = type { i32 }
%struct.talitos_ahash_req_ctx = type { i32, i64 }
%struct.talitos_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.talitos_edesc* (%struct.ahash_request*, i32)* @ahash_edesc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.talitos_edesc* @ahash_edesc_alloc(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.talitos_ctx*, align 8
  %7 = alloca %struct.talitos_ahash_req_ctx*, align 8
  %8 = alloca %struct.talitos_private*, align 8
  %9 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %10)
  store %struct.crypto_ahash* %11, %struct.crypto_ahash** %5, align 8
  %12 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %13 = call %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %12)
  store %struct.talitos_ctx* %13, %struct.talitos_ctx** %6, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = call %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %14)
  store %struct.talitos_ahash_req_ctx* %15, %struct.talitos_ahash_req_ctx** %7, align 8
  %16 = load %struct.talitos_ctx*, %struct.talitos_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.talitos_private* @dev_get_drvdata(i32 %18)
  store %struct.talitos_private* %19, %struct.talitos_private** %8, align 8
  %20 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %21 = call i32 @has_ftr_sec1(%struct.talitos_private* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.talitos_ctx*, %struct.talitos_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %41 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.talitos_edesc* @talitos_edesc_alloc(i32 %35, i32 %38, i32* null, i32* null, i32 0, i32 %39, i32 0, i32 0, i32 0, i32 %43, i32 0)
  ret %struct.talitos_edesc* %44
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.talitos_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local %struct.talitos_edesc* @talitos_edesc_alloc(i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
