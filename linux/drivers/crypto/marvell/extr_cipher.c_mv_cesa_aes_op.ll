; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_aes_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_aes_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mv_cesa_op_ctx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.mv_cesa_aes_ctx = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32*, i32* }

@CESA_SA_DESC_CFG_CRYPTM_AES = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_DIR_DEC = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_AES_LEN_192 = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_AES_LEN_256 = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_CRYPTM_MSK = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_AES_LEN_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.mv_cesa_op_ctx*)* @mv_cesa_aes_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_aes_op(%struct.skcipher_request* %0, %struct.mv_cesa_op_ctx* %1) #0 {
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.mv_cesa_op_ctx*, align 8
  %5 = alloca %struct.mv_cesa_aes_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  store %struct.mv_cesa_op_ctx* %1, %struct.mv_cesa_op_ctx** %4, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %10 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mv_cesa_aes_ctx* @crypto_tfm_ctx(i32 %12)
  store %struct.mv_cesa_aes_ctx* %13, %struct.mv_cesa_aes_ctx** %5, align 8
  %14 = load i32, i32* @CESA_SA_DESC_CFG_CRYPTM_AES, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %16 = call i32 @mv_cesa_get_op_cfg(%struct.mv_cesa_op_ctx* %15)
  %17 = load i32, i32* @CESA_SA_DESC_CFG_DIR_DEC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  br label %30

30:                                               ; preds = %25, %20
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %31
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %47, i32* %55, align 4
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 24
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @CESA_SA_DESC_CFG_AES_LEN_192, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %80

69:                                               ; preds = %59
  %70 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 32
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @CESA_SA_DESC_CFG_AES_LEN_256, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @CESA_SA_DESC_CFG_CRYPTM_MSK, align 4
  %84 = load i32, i32* @CESA_SA_DESC_CFG_AES_LEN_MSK, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx* %81, i32 %82, i32 %85)
  %87 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %88 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %89 = call i32 @mv_cesa_skcipher_queue_req(%struct.skcipher_request* %87, %struct.mv_cesa_op_ctx* %88)
  ret i32 %89
}

declare dso_local %struct.mv_cesa_aes_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @mv_cesa_get_op_cfg(%struct.mv_cesa_op_ctx*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx*, i32, i32) #1

declare dso_local i32 @mv_cesa_skcipher_queue_req(%struct.skcipher_request*, %struct.mv_cesa_op_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
