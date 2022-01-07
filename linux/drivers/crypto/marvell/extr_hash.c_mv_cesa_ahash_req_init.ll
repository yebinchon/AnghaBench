; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_req_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_req_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ahash_request = type { i32, i32 }
%struct.mv_cesa_ahash_req = type { i64 }

@cesa_dev = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid number of src SG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32*)* @mv_cesa_ahash_req_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahash_req_init(%struct.ahash_request* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mv_cesa_ahash_req*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %8 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.mv_cesa_ahash_req* %8, %struct.mv_cesa_ahash_req** %6, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %10 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %13 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @sg_nents_for_len(i32 %11, i32 %14)
  %16 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %6, align 8
  %17 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %6, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cesa_dev, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %6, align 8
  %28 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %2
  %32 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %33 = call i32 @mv_cesa_ahash_cache_req(%struct.ahash_request* %32)
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %50

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cesa_dev, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %48 = call i32 @mv_cesa_ahash_dma_req_init(%struct.ahash_request* %47)
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %38, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mv_cesa_ahash_cache_req(%struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_ahash_dma_req_init(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
