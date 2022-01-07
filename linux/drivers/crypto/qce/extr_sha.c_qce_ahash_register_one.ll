; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_register_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_register_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_ahash_def = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.qce_device = type { i32 }
%struct.qce_alg_template = type { i32, %struct.qce_device*, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.ahash_alg }
%struct.ahash_alg = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.crypto_alg, i32, i32 }
%struct.crypto_alg = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qce_ahash_init = common dso_local global i32 0, align 4
@qce_ahash_update = common dso_local global i32 0, align 4
@qce_ahash_final = common dso_local global i32 0, align 4
@qce_ahash_digest = common dso_local global i32 0, align 4
@qce_ahash_export = common dso_local global i32 0, align 4
@qce_ahash_import = common dso_local global i32 0, align 4
@qce_ahash_hmac_setkey = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@qce_ahash_cra_init = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CRYPTO_ALG_TYPE_AHASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s registration failed\0A\00", align 1
@ahash_algs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%s is registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qce_ahash_def*, %struct.qce_device*)* @qce_ahash_register_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ahash_register_one(%struct.qce_ahash_def* %0, %struct.qce_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qce_ahash_def*, align 8
  %5 = alloca %struct.qce_device*, align 8
  %6 = alloca %struct.qce_alg_template*, align 8
  %7 = alloca %struct.ahash_alg*, align 8
  %8 = alloca %struct.crypto_alg*, align 8
  %9 = alloca i32, align 4
  store %struct.qce_ahash_def* %0, %struct.qce_ahash_def** %4, align 8
  store %struct.qce_device* %1, %struct.qce_device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qce_alg_template* @kzalloc(i32 112, i32 %10)
  store %struct.qce_alg_template* %11, %struct.qce_alg_template** %6, align 8
  %12 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %13 = icmp ne %struct.qce_alg_template* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %145

17:                                               ; preds = %2
  %18 = load %struct.qce_ahash_def*, %struct.qce_ahash_def** %4, align 8
  %19 = getelementptr inbounds %struct.qce_ahash_def, %struct.qce_ahash_def* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %22 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %24 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.ahash_alg* %25, %struct.ahash_alg** %7, align 8
  %26 = load i32, i32* @qce_ahash_init, align 4
  %27 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %28 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @qce_ahash_update, align 4
  %30 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %31 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @qce_ahash_final, align 4
  %33 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %34 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @qce_ahash_digest, align 4
  %36 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %37 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @qce_ahash_export, align 4
  %39 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %40 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @qce_ahash_import, align 4
  %42 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %43 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.qce_ahash_def*, %struct.qce_ahash_def** %4, align 8
  %45 = getelementptr inbounds %struct.qce_ahash_def, %struct.qce_ahash_def* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_SHA_HMAC(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %17
  %50 = load i32, i32* @qce_ahash_hmac_setkey, align 4
  %51 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %52 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %17
  %54 = load %struct.qce_ahash_def*, %struct.qce_ahash_def** %4, align 8
  %55 = getelementptr inbounds %struct.qce_ahash_def, %struct.qce_ahash_def* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %58 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.qce_ahash_def*, %struct.qce_ahash_def** %4, align 8
  %61 = getelementptr inbounds %struct.qce_ahash_def, %struct.qce_ahash_def* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %64 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %67 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store %struct.crypto_alg* %68, %struct.crypto_alg** %8, align 8
  %69 = load %struct.qce_ahash_def*, %struct.qce_ahash_def** %4, align 8
  %70 = getelementptr inbounds %struct.qce_ahash_def, %struct.qce_ahash_def* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %73 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  %74 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %75 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %74, i32 0, i32 0
  store i32 300, i32* %75, align 8
  %76 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %77 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %78 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %80 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %79, i32 0, i32 1
  store i32 4, i32* %80, align 4
  %81 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %82 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %81, i32 0, i32 6
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @THIS_MODULE, align 4
  %84 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %85 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @qce_ahash_cra_init, align 4
  %87 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %88 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %90 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %93 = load %struct.qce_ahash_def*, %struct.qce_ahash_def** %4, align 8
  %94 = getelementptr inbounds %struct.qce_ahash_def, %struct.qce_ahash_def* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @snprintf(i32 %91, i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %95)
  %97 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %98 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %101 = load %struct.qce_ahash_def*, %struct.qce_ahash_def** %4, align 8
  %102 = getelementptr inbounds %struct.qce_ahash_def, %struct.qce_ahash_def* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @snprintf(i32 %99, i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %103)
  %105 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %106 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %105, i32 0, i32 0
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load i32, i32* @CRYPTO_ALG_TYPE_AHASH, align 4
  %109 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %110 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.qce_ahash_def*, %struct.qce_ahash_def** %4, align 8
  %112 = getelementptr inbounds %struct.qce_ahash_def, %struct.qce_ahash_def* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %115 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %117 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %118 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %117, i32 0, i32 1
  store %struct.qce_device* %116, %struct.qce_device** %118, align 8
  %119 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %120 = call i32 @crypto_register_ahash(%struct.ahash_alg* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %53
  %124 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %125 = call i32 @kfree(%struct.qce_alg_template* %124)
  %126 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %127 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %130 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %145

134:                                              ; preds = %53
  %135 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %136 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %135, i32 0, i32 0
  %137 = call i32 @list_add_tail(i32* %136, i32* @ahash_algs)
  %138 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %139 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %142 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dev_dbg(i32 %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %134, %123, %14
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.qce_alg_template* @kzalloc(i32, i32) #1

declare dso_local i64 @IS_SHA_HMAC(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @crypto_register_ahash(%struct.ahash_alg*) #1

declare dso_local i32 @kfree(%struct.qce_alg_template*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
