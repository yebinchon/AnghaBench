; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.caam_hash_state = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i64 }
%struct.caam_export_state = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @ahash_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_export(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.caam_hash_state*, align 8
  %6 = alloca %struct.caam_export_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.caam_hash_state* %10, %struct.caam_hash_state** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.caam_export_state*
  store %struct.caam_export_state* %12, %struct.caam_export_state** %6, align 8
  %13 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %14 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %19 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %22 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %26 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  %28 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %29 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %33 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memcpy(i32 %34, i32* %35, i32 %36)
  %38 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %39 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %42 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @memcpy(i32 %40, i32* %43, i32 4)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %47 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %49 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %52 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %54 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %57 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %59 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %62 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  ret i32 0
}

declare dso_local %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
