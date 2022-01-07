; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.caam_hash_state = type { i32, i32, i32, i32, i32, i32 }
%struct.caam_export_state = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @ahash_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.caam_hash_state*, align 8
  %6 = alloca %struct.caam_export_state*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.caam_hash_state* %8, %struct.caam_hash_state** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.caam_export_state*
  store %struct.caam_export_state* %10, %struct.caam_export_state** %6, align 8
  %11 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %12 = call i32 @memset(%struct.caam_hash_state* %11, i32 0, i32 24)
  %13 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %14 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %17 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %20 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32 %15, i32 %18, i32 %21)
  %23 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %24 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %27 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(i32 %25, i32 %28, i32 4)
  %30 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %31 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %34 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %36 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %39 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %41 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %44 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.caam_export_state*, %struct.caam_export_state** %6, align 8
  %46 = getelementptr inbounds %struct.caam_export_state, %struct.caam_export_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.caam_hash_state*, %struct.caam_hash_state** %5, align 8
  %49 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  ret i32 0
}

declare dso_local %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memset(%struct.caam_hash_state*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
