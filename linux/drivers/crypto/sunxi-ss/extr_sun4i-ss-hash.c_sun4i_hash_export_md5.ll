; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/sunxi-ss/extr_sun4i-ss-hash.c_sun4i_hash_export_md5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/sunxi-ss/extr_sun4i-ss-hash.c_sun4i_hash_export_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.sun4i_req_ctx = type { i32*, i64, i64, i32 }
%struct.md5_state = type { i32*, i32, i64 }

@SHA1_H0 = common dso_local global i32 0, align 4
@SHA1_H1 = common dso_local global i32 0, align 4
@SHA1_H2 = common dso_local global i32 0, align 4
@SHA1_H3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_hash_export_md5(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sun4i_req_ctx*, align 8
  %6 = alloca %struct.md5_state*, align 8
  %7 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.sun4i_req_ctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.sun4i_req_ctx* %9, %struct.sun4i_req_ctx** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.md5_state*
  store %struct.md5_state* %11, %struct.md5_state** %6, align 8
  %12 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.md5_state*, %struct.md5_state** %6, align 8
  %20 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.md5_state*, %struct.md5_state** %6, align 8
  %22 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @memcpy(i32 %23, i32 %26, i64 %29)
  %31 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.md5_state*, %struct.md5_state** %6, align 8
  %48 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %36

56:                                               ; preds = %36
  br label %78

57:                                               ; preds = %2
  %58 = load i32, i32* @SHA1_H0, align 4
  %59 = load %struct.md5_state*, %struct.md5_state** %6, align 8
  %60 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @SHA1_H1, align 4
  %64 = load %struct.md5_state*, %struct.md5_state** %6, align 8
  %65 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* @SHA1_H2, align 4
  %69 = load %struct.md5_state*, %struct.md5_state** %6, align 8
  %70 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @SHA1_H3, align 4
  %74 = load %struct.md5_state*, %struct.md5_state** %6, align 8
  %75 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %57, %56
  ret i32 0
}

declare dso_local %struct.sun4i_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
