; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_validate_keys_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_validate_keys_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_aead_ctx = type { i32, i32, i32, i64, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"enc_keylen=%u  authkeylen=%u\0A\00", align 1
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid auth_mode=%d\0A\00", align 1
@S_DIN_to_DES = common dso_local global i64 0, align 8
@DES3_EDE_KEY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid cipher(3DES) key size: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Invalid cipher(AES) key size: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_aead_ctx*)* @validate_keys_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_keys_sizes(%struct.cc_aead_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_aead_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.cc_aead_ctx* %0, %struct.cc_aead_ctx** %3, align 8
  %5 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.device* @drvdata_to_dev(i32 %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(%struct.device* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %52 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %21
    i32 131, label %43
  ]

20:                                               ; preds = %1, %1
  br label %60

21:                                               ; preds = %1
  %22 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AES_KEYSIZE_128, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AES_KEYSIZE_192, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AES_KEYSIZE_256, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %109

42:                                               ; preds = %33, %27, %21
  br label %60

43:                                               ; preds = %1
  %44 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %109

51:                                               ; preds = %43
  br label %60

52:                                               ; preds = %1
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %109

60:                                               ; preds = %51, %42, %20
  %61 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @S_DIN_to_DES, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %109

80:                                               ; preds = %66
  br label %108

81:                                               ; preds = %60
  %82 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @AES_KEYSIZE_128, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AES_KEYSIZE_192, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %87
  %94 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @AES_KEYSIZE_256, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %109

107:                                              ; preds = %93, %87, %81
  br label %108

108:                                              ; preds = %107, %80
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %99, %72, %52, %48, %39
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
