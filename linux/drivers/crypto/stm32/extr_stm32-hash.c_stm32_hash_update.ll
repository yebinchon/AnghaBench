; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32 }
%struct.stm32_hash_request_ctx = type { i32, i64, i64, i64, i64, i32 }

@HASH_FLAGS_CPU = common dso_local global i32 0, align 4
@HASH_OP_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @stm32_hash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.stm32_hash_request_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %6 = call %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.stm32_hash_request_ctx* %6, %struct.stm32_hash_request_ctx** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @HASH_FLAGS_CPU, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %50

19:                                               ; preds = %11
  %20 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %21 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %26 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %19
  %44 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %45 = call i32 @stm32_hash_append_sg(%struct.stm32_hash_request_ctx* %44)
  store i32 0, i32* %2, align 4
  br label %50

46:                                               ; preds = %19
  %47 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %48 = load i32, i32* @HASH_OP_UPDATE, align 4
  %49 = call i32 @stm32_hash_enqueue(%struct.ahash_request* %47, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %43, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @stm32_hash_append_sg(%struct.stm32_hash_request_ctx*) #1

declare dso_local i32 @stm32_hash_enqueue(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
