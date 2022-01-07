; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_cipher_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_cipher_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64 }
%struct.cc_drvdata = type { i64, i32, i64, %struct.cc_cipher_handle* }
%struct.cc_cipher_handle = type { i32 }
%struct.cc_crypto_alg = type { %struct.TYPE_8__, i32, %struct.cc_drvdata* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Number of algorithms = %zu\0A\00", align 1
@skcipher_algs = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"creating %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s alg allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"registering %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s alg registration rc = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Registered %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_cipher_alloc(%struct.cc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.cc_cipher_handle*, align 8
  %5 = alloca %struct.cc_crypto_alg*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  %9 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %10 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %9)
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cc_cipher_handle* @kmalloc(i32 4, i32 %13)
  store %struct.cc_cipher_handle* %14, %struct.cc_cipher_handle** %4, align 8
  %15 = load %struct.cc_cipher_handle*, %struct.cc_cipher_handle** %4, align 8
  %16 = icmp ne %struct.cc_cipher_handle* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %159

20:                                               ; preds = %1
  %21 = load %struct.cc_cipher_handle*, %struct.cc_cipher_handle** %4, align 8
  %22 = getelementptr inbounds %struct.cc_cipher_handle, %struct.cc_cipher_handle* %21, i32 0, i32 0
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.cc_cipher_handle*, %struct.cc_cipher_handle** %4, align 8
  %25 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %26 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %25, i32 0, i32 3
  store %struct.cc_cipher_handle* %24, %struct.cc_cipher_handle** %26, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @skcipher_algs, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %28)
  %30 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %151, %20
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @skcipher_algs, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %154

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @skcipher_algs, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %44 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %72, label %47

47:                                               ; preds = %36
  %48 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %49 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @skcipher_algs, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %50, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  %60 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %61 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** @skcipher_algs, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64, %47, %36
  br label %151

73:                                               ; preds = %64, %59
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @skcipher_algs, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @skcipher_algs, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call %struct.cc_crypto_alg* @cc_create_alg(%struct.TYPE_7__* %85, %struct.device* %86)
  store %struct.cc_crypto_alg* %87, %struct.cc_crypto_alg** %5, align 8
  %88 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %89 = call i64 @IS_ERR(%struct.cc_crypto_alg* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %73
  %92 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %93 = call i32 @PTR_ERR(%struct.cc_crypto_alg* %92)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @skcipher_algs, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %155

102:                                              ; preds = %73
  %103 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %104 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %105 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %104, i32 0, i32 2
  store %struct.cc_drvdata* %103, %struct.cc_drvdata** %105, align 8
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @skcipher_algs, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %115 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %114, i32 0, i32 0
  %116 = call i32 @crypto_register_skcipher(%struct.TYPE_8__* %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.device*, %struct.device** %6, align 8
  %118 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %119 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %102
  %128 = load %struct.device*, %struct.device** %6, align 8
  %129 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %130 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_err(%struct.device* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %136 = call i32 @kfree(%struct.cc_crypto_alg* %135)
  br label %155

137:                                              ; preds = %102
  %138 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %139 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %138, i32 0, i32 1
  %140 = load %struct.cc_cipher_handle*, %struct.cc_cipher_handle** %4, align 8
  %141 = getelementptr inbounds %struct.cc_cipher_handle, %struct.cc_cipher_handle* %140, i32 0, i32 0
  %142 = call i32 @list_add_tail(i32* %139, i32* %141)
  %143 = load %struct.device*, %struct.device** %6, align 8
  %144 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %5, align 8
  %145 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %72
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %31

154:                                              ; preds = %31
  store i32 0, i32* %2, align 4
  br label %159

155:                                              ; preds = %127, %91
  %156 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %157 = call i32 @cc_cipher_free(%struct.cc_drvdata* %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %155, %154, %17
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local %struct.cc_cipher_handle* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local %struct.cc_crypto_alg* @cc_create_alg(%struct.TYPE_7__*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.cc_crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.cc_crypto_alg*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @crypto_register_skcipher(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.cc_crypto_alg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cc_cipher_free(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
