; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_copy_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_copy_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.img_hash_request_ctx = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*)* @img_hash_copy_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_hash_copy_hash(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.img_hash_request_ctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = call %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.img_hash_request_ctx* %7, %struct.img_hash_request_ctx** %3, align 8
  %8 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %4, align 8
  %12 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 4
  %17 = sub i64 %16, 1
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %31, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @img_hash_read_result_queue(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  br label %19

34:                                               ; preds = %19
  ret void
}

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @img_hash_read_result_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
