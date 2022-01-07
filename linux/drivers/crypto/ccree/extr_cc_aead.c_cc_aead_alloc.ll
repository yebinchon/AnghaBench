; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.cc_drvdata = type { i64, i32, %struct.cc_aead_handle* }
%struct.cc_aead_handle = type { i64, i32 }
%struct.cc_crypto_alg = type { %struct.TYPE_7__, i32, %struct.cc_drvdata* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_HMAC_DIGEST_SIZE = common dso_local global i32 0, align 4
@NULL_SRAM_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"SRAM pool exhausted\0A\00", align 1
@aead_algs = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s alg allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Registered %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_aead_alloc(%struct.cc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.cc_aead_handle*, align 8
  %5 = alloca %struct.cc_crypto_alg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %12 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %11)
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cc_aead_handle* @kmalloc(i32 16, i32 %13)
  store %struct.cc_aead_handle* %14, %struct.cc_aead_handle** %4, align 8
  %15 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %4, align 8
  %16 = icmp ne %struct.cc_aead_handle* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %134

20:                                               ; preds = %1
  %21 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %4, align 8
  %22 = getelementptr inbounds %struct.cc_aead_handle, %struct.cc_aead_handle* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %4, align 8
  %25 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %26 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %25, i32 0, i32 2
  store %struct.cc_aead_handle* %24, %struct.cc_aead_handle** %26, align 8
  %27 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %28 = load i32, i32* @MAX_HMAC_DIGEST_SIZE, align 4
  %29 = call i64 @cc_sram_alloc(%struct.cc_drvdata* %27, i32 %28)
  %30 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %4, align 8
  %31 = getelementptr inbounds %struct.cc_aead_handle, %struct.cc_aead_handle* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %4, align 8
  %33 = getelementptr inbounds %struct.cc_aead_handle, %struct.cc_aead_handle* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NULL_SRAM_ADDR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %131

42:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %124, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aead_algs, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %127

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aead_algs, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %56 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %48
  %60 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %61 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aead_algs, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %62, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %59, %48
  br label %124

72:                                               ; preds = %59
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aead_algs, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = load %struct.device*, %struct.device** %8, align 8
  %78 = call %struct.cc_crypto_alg* @cc_create_aead_alg(%struct.TYPE_8__* %76, %struct.device* %77)
  store %struct.cc_crypto_alg* %78, %struct.cc_crypto_alg** %5, align 8
  %79 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %80 = call i64 @IS_ERR(%struct.cc_crypto_alg* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %84 = call i32 @PTR_ERR(%struct.cc_crypto_alg* %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aead_algs, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %131

93:                                               ; preds = %72
  %94 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %95 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %96 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %95, i32 0, i32 2
  store %struct.cc_drvdata* %94, %struct.cc_drvdata** %96, align 8
  %97 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %98 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %97, i32 0, i32 0
  %99 = call i32 @crypto_register_aead(%struct.TYPE_7__* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %93
  %103 = load %struct.device*, %struct.device** %8, align 8
  %104 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %105 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %128

110:                                              ; preds = %93
  %111 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %112 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %111, i32 0, i32 1
  %113 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %4, align 8
  %114 = getelementptr inbounds %struct.cc_aead_handle, %struct.cc_aead_handle* %113, i32 0, i32 1
  %115 = call i32 @list_add_tail(i32* %112, i32* %114)
  %116 = load %struct.device*, %struct.device** %8, align 8
  %117 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %118 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @dev_dbg(%struct.device* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %71
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %43

127:                                              ; preds = %43
  store i32 0, i32* %2, align 4
  br label %136

128:                                              ; preds = %102
  %129 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %130 = call i32 @kfree(%struct.cc_crypto_alg* %129)
  br label %131

131:                                              ; preds = %128, %82, %37
  %132 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %133 = call i32 @cc_aead_free(%struct.cc_drvdata* %132)
  br label %134

134:                                              ; preds = %131, %17
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %127
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local %struct.cc_aead_handle* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @cc_sram_alloc(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local %struct.cc_crypto_alg* @cc_create_aead_alg(%struct.TYPE_8__*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.cc_crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.cc_crypto_alg*) #1

declare dso_local i32 @crypto_register_aead(%struct.TYPE_7__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cc_crypto_alg*) #1

declare dso_local i32 @cc_aead_free(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
