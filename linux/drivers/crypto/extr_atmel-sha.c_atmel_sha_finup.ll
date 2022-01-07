; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_finup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32 }

@SHA_FLAGS_FINUP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @atmel_sha_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_finup(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.atmel_sha_reqctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.atmel_sha_reqctx* %8, %struct.atmel_sha_reqctx** %4, align 8
  %9 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %10 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %11 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = call i32 @atmel_sha_update(%struct.ahash_request* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EINPROGRESS, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %27 = call i32 @ahash_request_flags(%struct.ahash_request* %26)
  %28 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %1
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %25, %20
  %34 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %35 = call i32 @atmel_sha_final(%struct.ahash_request* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ %36, %38 ], [ %40, %39 ]
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %31
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_update(%struct.ahash_request*) #1

declare dso_local i32 @ahash_request_flags(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_final(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
