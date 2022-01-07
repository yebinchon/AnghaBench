; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32 }
%struct.atmel_sha_reqctx = type { i64, i32, i64, i64, i64, i32 }

@SHA_FLAGS_FINUP = common dso_local global i32 0, align 4
@ATMEL_SHA_DMA_THRESHOLD = common dso_local global i64 0, align 8
@SHA_FLAGS_CPU = common dso_local global i32 0, align 4
@SHA_OP_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @atmel_sha_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.atmel_sha_reqctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %6 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.atmel_sha_reqctx* %6, %struct.atmel_sha_reqctx** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

12:                                               ; preds = %1
  %13 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %14 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %17 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %22 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %26 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %12
  %32 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i64, i64* @ATMEL_SHA_DMA_THRESHOLD, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* @SHA_FLAGS_CPU, align 4
  %43 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %44 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %31
  br label %64

48:                                               ; preds = %12
  %49 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %50 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %57 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %62 = call i32 @atmel_sha_append_sg(%struct.atmel_sha_reqctx* %61)
  store i32 0, i32* %2, align 4
  br label %68

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %66 = load i32, i32* @SHA_OP_UPDATE, align 4
  %67 = call i32 @atmel_sha_enqueue(%struct.ahash_request* %65, i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %60, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_append_sg(%struct.atmel_sha_reqctx*) #1

declare dso_local i32 @atmel_sha_enqueue(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
