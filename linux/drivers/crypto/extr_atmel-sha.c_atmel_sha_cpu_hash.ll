; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_cpu_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_cpu_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32, i32 }

@SHA_MR_MODE_AUTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SHA_FLAGS_ALGO_MASK = common dso_local global i32 0, align 4
@SHA_MR = common dso_local global i32 0, align 4
@SHA_MSR = common dso_local global i32 0, align 4
@SHA_BCR = common dso_local global i32 0, align 4
@SHA_CR = common dso_local global i32 0, align 4
@SHA_CR_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, i8*, i32, i32, i32)* @atmel_sha_cpu_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_cpu_hash(%struct.atmel_sha_dev* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_sha_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ahash_request*, align 8
  %13 = alloca %struct.atmel_sha_reqctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %17 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %16, i32 0, i32 1
  %18 = load %struct.ahash_request*, %struct.ahash_request** %17, align 8
  store %struct.ahash_request* %18, %struct.ahash_request** %12, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %20 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %19)
  store %struct.atmel_sha_reqctx* %20, %struct.atmel_sha_reqctx** %13, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @SHA_MR_MODE_AUTO, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %13, align 8
  %31 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ALIGNED(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %39, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %78

43:                                               ; preds = %35, %26
  %44 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %13, align 8
  %45 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SHA_FLAGS_ALGO_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %15, align 4
  %51 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %52 = load i32, i32* @SHA_MR, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %56 = load i32, i32* @SHA_MSR, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %55, i32 %56, i32 %57)
  %59 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %60 = load i32, i32* @SHA_BCR, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %59, i32 %60, i32 %61)
  %63 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %64 = load i32, i32* @SHA_CR, align 4
  %65 = load i32, i32* @SHA_CR_FIRST, align 4
  %66 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %63, i32 %64, i32 %65)
  %67 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %68 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %67, i32 0, i32 0
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @sg_init_one(i32* %68, i8* %69, i32 %70)
  %72 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %73 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %74 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @atmel_sha_cpu_start(%struct.atmel_sha_dev* %72, i32* %74, i32 %75, i32 0, i32 1, i32 %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %43, %38
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @atmel_sha_complete(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @atmel_sha_write(%struct.atmel_sha_dev*, i32, i32) #1

declare dso_local i32 @sg_init_one(i32*, i8*, i32) #1

declare dso_local i32 @atmel_sha_cpu_start(%struct.atmel_sha_dev*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
