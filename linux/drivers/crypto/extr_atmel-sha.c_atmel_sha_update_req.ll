; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32, i32, i32* }

@.str = private unnamed_addr constant [46 x i8] c"update_req: total: %u, digcnt: 0x%llx 0x%llx\0A\00", align 1
@SHA_FLAGS_CPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"update: err: %d, digcnt: 0x%llx 0%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_update_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_update_req(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca %struct.atmel_sha_dev*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.atmel_sha_reqctx*, align 8
  %5 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %2, align 8
  %6 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %7 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %6, i32 0, i32 1
  %8 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  store %struct.ahash_request* %8, %struct.ahash_request** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.atmel_sha_reqctx* %10, %struct.atmel_sha_reqctx** %4, align 8
  %11 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %12 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %18 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i32 %26)
  %28 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %29 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SHA_FLAGS_CPU, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %36 = call i32 @atmel_sha_update_cpu(%struct.atmel_sha_dev* %35)
  store i32 %36, i32* %5, align 4
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %39 = call i32 @atmel_sha_update_dma_start(%struct.atmel_sha_dev* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %42 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %46 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %51 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %49, i32 %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @atmel_sha_update_cpu(%struct.atmel_sha_dev*) #1

declare dso_local i32 @atmel_sha_update_dma_start(%struct.atmel_sha_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
