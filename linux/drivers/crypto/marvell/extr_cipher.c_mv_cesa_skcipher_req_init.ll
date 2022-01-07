; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_req_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_req_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.skcipher_request = type { i32, i32, i32 }
%struct.mv_cesa_op_ctx = type { i32 }
%struct.mv_cesa_skcipher_req = type { i64, i64 }
%struct.crypto_skcipher = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cesa_dev = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid number of src SG\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid number of dst SG\00", align 1
@CESA_SA_DESC_CFG_OP_CRYPT_ONLY = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_OP_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.mv_cesa_op_ctx*)* @mv_cesa_skcipher_req_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_skcipher_req_init(%struct.skcipher_request* %0, %struct.mv_cesa_op_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca %struct.mv_cesa_op_ctx*, align 8
  %6 = alloca %struct.mv_cesa_skcipher_req*, align 8
  %7 = alloca %struct.crypto_skcipher*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store %struct.mv_cesa_op_ctx* %1, %struct.mv_cesa_op_ctx** %5, align 8
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %11 = call %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request* %10)
  store %struct.mv_cesa_skcipher_req* %11, %struct.mv_cesa_skcipher_req** %6, align 8
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %13 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %12)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %7, align 8
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %15 = call i32 @crypto_skcipher_blocksize(%struct.crypto_skcipher* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %17 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @IS_ALIGNED(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %27 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %30 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @sg_nents_for_len(i32 %28, i32 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %35 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %37 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cesa_dev, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %46 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %94

49:                                               ; preds = %25
  %50 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %51 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %54 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @sg_nents_for_len(i32 %52, i32 %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %59 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %61 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %49
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cesa_dev, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %70 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %94

73:                                               ; preds = %49
  %74 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  %75 = load i32, i32* @CESA_SA_DESC_CFG_OP_CRYPT_ONLY, align 4
  %76 = load i32, i32* @CESA_SA_DESC_CFG_OP_MSK, align 4
  %77 = call i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx* %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cesa_dev, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %86 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  %87 = call i32 @mv_cesa_skcipher_dma_req_init(%struct.skcipher_request* %85, %struct.mv_cesa_op_ctx* %86)
  store i32 %87, i32* %9, align 4
  br label %92

88:                                               ; preds = %73
  %89 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %90 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  %91 = call i32 @mv_cesa_skcipher_std_req_init(%struct.skcipher_request* %89, %struct.mv_cesa_op_ctx* %90)
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %64, %40, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_blocksize(%struct.crypto_skcipher*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i8* @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx*, i32, i32) #1

declare dso_local i32 @mv_cesa_skcipher_dma_req_init(%struct.skcipher_request*, %struct.mv_cesa_op_ctx*) #1

declare dso_local i32 @mv_cesa_skcipher_std_req_init(%struct.skcipher_request*, %struct.mv_cesa_op_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
