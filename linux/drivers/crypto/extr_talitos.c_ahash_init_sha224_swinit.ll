; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_init_sha224_swinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_init_sha224_swinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.talitos_ahash_req_ctx = type { i32, i64* }

@SHA224_H0 = common dso_local global i64 0, align 8
@SHA224_H1 = common dso_local global i64 0, align 8
@SHA224_H2 = common dso_local global i64 0, align 8
@SHA224_H3 = common dso_local global i64 0, align 8
@SHA224_H4 = common dso_local global i64 0, align 8
@SHA224_H5 = common dso_local global i64 0, align 8
@SHA224_H6 = common dso_local global i64 0, align 8
@SHA224_H7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_init_sha224_swinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_init_sha224_swinit(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.talitos_ahash_req_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %4 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %5 = call %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %4)
  store %struct.talitos_ahash_req_ctx* %5, %struct.talitos_ahash_req_ctx** %3, align 8
  %6 = load i64, i64* @SHA224_H0, align 8
  %7 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 %6, i64* %10, align 8
  %11 = load i64, i64* @SHA224_H1, align 8
  %12 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  store i64 %11, i64* %15, align 8
  %16 = load i64, i64* @SHA224_H2, align 8
  %17 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  store i64 %16, i64* %20, align 8
  %21 = load i64, i64* @SHA224_H3, align 8
  %22 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 3
  store i64 %21, i64* %25, align 8
  %26 = load i64, i64* @SHA224_H4, align 8
  %27 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 4
  store i64 %26, i64* %30, align 8
  %31 = load i64, i64* @SHA224_H5, align 8
  %32 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 5
  store i64 %31, i64* %35, align 8
  %36 = load i64, i64* @SHA224_H6, align 8
  %37 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 6
  store i64 %36, i64* %40, align 8
  %41 = load i64, i64* @SHA224_H7, align 8
  %42 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 7
  store i64 %41, i64* %45, align 8
  %46 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 9
  store i64 0, i64* %53, align 8
  %54 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %55 = call i32 @ahash_init(%struct.ahash_request* %54)
  %56 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  ret i32 0
}

declare dso_local %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @ahash_init(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
