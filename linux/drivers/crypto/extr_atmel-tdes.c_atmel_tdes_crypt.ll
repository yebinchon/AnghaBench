; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.atmel_tdes_ctx = type { i32, i8* }
%struct.atmel_tdes_reqctx = type { i64 }

@TDES_FLAGS_CFB8 = common dso_local global i64 0, align 8
@CFB8_BLOCK_SIZE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"request size is not exact amount of CFB8 blocks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TDES_FLAGS_CFB16 = common dso_local global i64 0, align 8
@CFB16_BLOCK_SIZE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"request size is not exact amount of CFB16 blocks\0A\00", align 1
@TDES_FLAGS_CFB32 = common dso_local global i64 0, align 8
@CFB32_BLOCK_SIZE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"request size is not exact amount of CFB32 blocks\0A\00", align 1
@DES_BLOCK_SIZE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"request size is not exact amount of DES blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i64)* @atmel_tdes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_crypt(%struct.ablkcipher_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.atmel_tdes_ctx*, align 8
  %7 = alloca %struct.atmel_tdes_reqctx*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %9 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %8)
  %10 = call %struct.atmel_tdes_ctx* @crypto_ablkcipher_ctx(i32 %9)
  store %struct.atmel_tdes_ctx* %10, %struct.atmel_tdes_ctx** %6, align 8
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %12 = call %struct.atmel_tdes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %11)
  store %struct.atmel_tdes_reqctx* %12, %struct.atmel_tdes_reqctx** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @TDES_FLAGS_CFB8, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %19 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** @CFB8_BLOCK_SIZE, align 8
  %22 = call i32 @IS_ALIGNED(i32 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %17
  %29 = load i8*, i8** @CFB8_BLOCK_SIZE, align 8
  %30 = load %struct.atmel_tdes_ctx*, %struct.atmel_tdes_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.atmel_tdes_ctx, %struct.atmel_tdes_ctx* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %89

32:                                               ; preds = %2
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @TDES_FLAGS_CFB16, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %39 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** @CFB16_BLOCK_SIZE, align 8
  %42 = call i32 @IS_ALIGNED(i32 %40, i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %98

48:                                               ; preds = %37
  %49 = load i8*, i8** @CFB16_BLOCK_SIZE, align 8
  %50 = load %struct.atmel_tdes_ctx*, %struct.atmel_tdes_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.atmel_tdes_ctx, %struct.atmel_tdes_ctx* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %88

52:                                               ; preds = %32
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @TDES_FLAGS_CFB32, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %59 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** @CFB32_BLOCK_SIZE, align 8
  %62 = call i32 @IS_ALIGNED(i32 %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %57
  %69 = load i8*, i8** @CFB32_BLOCK_SIZE, align 8
  %70 = load %struct.atmel_tdes_ctx*, %struct.atmel_tdes_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.atmel_tdes_ctx, %struct.atmel_tdes_ctx* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %87

72:                                               ; preds = %52
  %73 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %74 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** @DES_BLOCK_SIZE, align 8
  %77 = call i32 @IS_ALIGNED(i32 %75, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %72
  %84 = load i8*, i8** @DES_BLOCK_SIZE, align 8
  %85 = load %struct.atmel_tdes_ctx*, %struct.atmel_tdes_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.atmel_tdes_ctx, %struct.atmel_tdes_ctx* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %83, %68
  br label %88

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %28
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.atmel_tdes_reqctx*, %struct.atmel_tdes_reqctx** %7, align 8
  %92 = getelementptr inbounds %struct.atmel_tdes_reqctx, %struct.atmel_tdes_reqctx* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.atmel_tdes_ctx*, %struct.atmel_tdes_ctx** %6, align 8
  %94 = getelementptr inbounds %struct.atmel_tdes_ctx, %struct.atmel_tdes_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %97 = call i32 @atmel_tdes_handle_queue(i32 %95, %struct.ablkcipher_request* %96)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %89, %79, %64, %44, %24
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.atmel_tdes_ctx* @crypto_ablkcipher_ctx(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.atmel_tdes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @IS_ALIGNED(i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atmel_tdes_handle_queue(i32, %struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
