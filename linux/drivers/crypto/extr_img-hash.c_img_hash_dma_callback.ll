; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, i32 }
%struct.img_hash_request_ctx = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @img_hash_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_hash_dma_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.img_hash_dev*, align 8
  %4 = alloca %struct.img_hash_request_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.img_hash_dev*
  store %struct.img_hash_dev* %6, %struct.img_hash_dev** %3, align 8
  %7 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %8 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.img_hash_request_ctx* @ahash_request_ctx(i32 %9)
  store %struct.img_hash_request_ctx* %10, %struct.img_hash_request_ctx** %4, align 8
  %11 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %17 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @img_hash_xmit_cpu(%struct.img_hash_dev* %16, i32 %19, i64 %22, i32 0)
  %24 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %33 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %32, i32 0, i32 0
  %34 = call i32 @tasklet_schedule(i32* %33)
  br label %35

35:                                               ; preds = %31, %26
  ret void
}

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @img_hash_xmit_cpu(%struct.img_hash_dev*, i32, i64, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
