; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/sunxi-ss/extr_sun4i-ss-hash.c_sun4i_hash_import_sha1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/sunxi-ss/extr_sun4i-ss-hash.c_sun4i_hash_import_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.sun4i_req_ctx = type { i32, i32, i32*, i32 }
%struct.sha1_state = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_hash_import_sha1(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sun4i_req_ctx*, align 8
  %6 = alloca %struct.sha1_state*, align 8
  %7 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.sun4i_req_ctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.sun4i_req_ctx* %9, %struct.sun4i_req_ctx** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sha1_state*
  store %struct.sha1_state* %11, %struct.sha1_state** %6, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call i32 @sun4i_hash_init(%struct.ahash_request* %12)
  %14 = load %struct.sha1_state*, %struct.sha1_state** %6, align 8
  %15 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, -64
  %18 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sha1_state*, %struct.sha1_state** %6, align 8
  %21 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 63
  %24 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sha1_state*, %struct.sha1_state** %6, align 8
  %30 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %28, i32 %31, i32 %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %53, %2
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.sha1_state*, %struct.sha1_state** %6, align 8
  %41 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sun4i_req_ctx*, %struct.sun4i_req_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.sun4i_req_ctx, %struct.sun4i_req_ctx* %47, i32 0, i32 2
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
  ret i32 0
}

declare dso_local %struct.sun4i_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @sun4i_hash_init(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
