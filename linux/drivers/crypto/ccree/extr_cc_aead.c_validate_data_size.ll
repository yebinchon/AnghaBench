; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_validate_data_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_validate_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_aead_ctx = type { i32, i32, i32, i32 }
%struct.aead_request = type { i32 }
%struct.aead_req_ctx = type { i32, i32, i32 }
%struct.device = type { i32 }

@DRV_CRYPTO_DIRECTION_DECRYPT = common dso_local global i32 0, align 4
@DRV_CIPHER_CBC = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DRV_CIPHER_CCM = common dso_local global i32 0, align 4
@DRV_CIPHER_GCTR = common dso_local global i32 0, align 4
@DRV_CIPHER_CTR = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unexpected flow mode (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_aead_ctx*, i32, %struct.aead_request*)* @validate_data_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_data_size(%struct.cc_aead_ctx* %0, i32 %1, %struct.aead_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cc_aead_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca %struct.aead_req_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cc_aead_ctx* %0, %struct.cc_aead_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.aead_request* %2, %struct.aead_request** %7, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %13 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %12)
  store %struct.aead_req_ctx* %13, %struct.aead_req_ctx** %8, align 8
  %14 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device* @drvdata_to_dev(i32 %16)
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DRV_CRYPTO_DIRECTION_DECRYPT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %24
  %37 = phi i32 [ %31, %24 ], [ %35, %32 ]
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DRV_CRYPTO_DIRECTION_DECRYPT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %133

50:                                               ; preds = %41, %36
  %51 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %126 [
    i32 129, label %56
    i32 128, label %111
  ]

56:                                               ; preds = %50
  %57 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DRV_CIPHER_CBC, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %65 = call i32 @IS_ALIGNED(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %133

68:                                               ; preds = %62, %56
  %69 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DRV_CIPHER_CCM, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %132

75:                                               ; preds = %68
  %76 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DRV_CIPHER_GCTR, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  br label %132

90:                                               ; preds = %75
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @IS_ALIGNED(i32 %91, i32 4)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %96 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %90
  %98 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %99 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DRV_CIPHER_CTR, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @IS_ALIGNED(i32 %104, i32 4)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %109 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %103, %97
  br label %132

111:                                              ; preds = %50
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %114 = call i32 @IS_ALIGNED(i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  br label %133

117:                                              ; preds = %111
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %120 = call i32 @IS_ALIGNED(i32 %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %124 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %117
  br label %132

126:                                              ; preds = %50
  %127 = load %struct.device*, %struct.device** %9, align 8
  %128 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %129 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %133

132:                                              ; preds = %125, %110, %89, %74
  store i32 0, i32* %4, align 4
  br label %136

133:                                              ; preds = %126, %116, %67, %49
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %133, %132
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
