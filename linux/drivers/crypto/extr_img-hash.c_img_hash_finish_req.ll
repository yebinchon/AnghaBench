; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_finish_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_finish_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }
%struct.img_hash_request_ctx = type { i32, %struct.img_hash_dev* }
%struct.img_hash_dev = type { i32, i32 }

@DRIVER_FLAGS_FINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Hash failed with error %d\0A\00", align 1
@DRIVER_FLAGS_ERROR = common dso_local global i32 0, align 4
@DRIVER_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@DRIVER_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@DRIVER_FLAGS_CPU = common dso_local global i32 0, align 4
@DRIVER_FLAGS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i32)* @img_hash_finish_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_hash_finish_req(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_hash_request_ctx*, align 8
  %6 = alloca %struct.img_hash_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.img_hash_request_ctx* %8, %struct.img_hash_request_ctx** %5, align 8
  %9 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %9, i32 0, i32 1
  %11 = load %struct.img_hash_dev*, %struct.img_hash_dev** %10, align 8
  store %struct.img_hash_dev* %11, %struct.img_hash_dev** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = call i32 @img_hash_copy_hash(%struct.ahash_request* %15)
  %17 = load i32, i32* @DRIVER_FLAGS_FINAL, align 4
  %18 = load %struct.img_hash_dev*, %struct.img_hash_dev** %6, align 8
  %19 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %25 = call i32 @img_hash_finish(%struct.ahash_request* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %14
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.img_hash_dev*, %struct.img_hash_dev** %6, align 8
  %29 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @DRIVER_FLAGS_ERROR, align 4
  %34 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %27, %26
  %39 = load i32, i32* @DRIVER_FLAGS_DMA_READY, align 4
  %40 = load i32, i32* @DRIVER_FLAGS_OUTPUT_READY, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @DRIVER_FLAGS_CPU, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @DRIVER_FLAGS_BUSY, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @DRIVER_FLAGS_FINAL, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.img_hash_dev*, %struct.img_hash_dev** %6, align 8
  %50 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %54 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.TYPE_2__*, i32)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %38
  %59 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %60 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %61, align 8
  %63 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %64 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %63, i32 0, i32 0
  %65 = load i32, i32* %4, align 4
  %66 = call i32 %62(%struct.TYPE_2__* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %38
  ret void
}

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @img_hash_copy_hash(%struct.ahash_request*) #1

declare dso_local i32 @img_hash_finish(%struct.ahash_request*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
