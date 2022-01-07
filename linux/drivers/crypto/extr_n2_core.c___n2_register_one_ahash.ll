; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c___n2_register_one_ahash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c___n2_register_one_ahash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2_hash_tmpl = type { i64, i8*, i32, i32, i32, i32, i32, i32 }
%struct.n2_ahash_alg = type { i64, i32, %struct.ahash_alg, i32, i32, i32, i32, i32 }
%struct.ahash_alg = type { %struct.hash_alg_common, i32, i32, i32, i32, i32, i32, i32 }
%struct.hash_alg_common = type { %struct.crypto_alg, i32 }
%struct.crypto_alg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@n2_hash_async_init = common dso_local global i32 0, align 4
@n2_hash_async_update = common dso_local global i32 0, align 4
@n2_hash_async_final = common dso_local global i32 0, align 4
@n2_hash_async_finup = common dso_local global i32 0, align 4
@n2_hash_async_digest = common dso_local global i32 0, align 4
@n2_hash_async_noexport = common dso_local global i32 0, align 4
@n2_hash_async_noimport = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-n2\00", align 1
@N2_CRA_PRIORITY = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@n2_hash_cra_init = common dso_local global i32 0, align 4
@n2_hash_cra_exit = common dso_local global i32 0, align 4
@ahash_algs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s alg registered\0A\00", align 1
@AUTH_TYPE_RESERVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2_hash_tmpl*)* @__n2_register_one_ahash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__n2_register_one_ahash(%struct.n2_hash_tmpl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.n2_hash_tmpl*, align 8
  %4 = alloca %struct.n2_ahash_alg*, align 8
  %5 = alloca %struct.hash_alg_common*, align 8
  %6 = alloca %struct.crypto_alg*, align 8
  %7 = alloca %struct.ahash_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.n2_hash_tmpl* %0, %struct.n2_hash_tmpl** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.n2_ahash_alg* @kzalloc(i32 104, i32 %9)
  store %struct.n2_ahash_alg* %10, %struct.n2_ahash_alg** %4, align 8
  %11 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %12 = icmp ne %struct.n2_ahash_alg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %155

16:                                               ; preds = %1
  %17 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %18 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %21 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %23 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %26 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %28 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %31 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %33 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %36 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %38 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %41 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %43 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %46 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %48 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %47, i32 0, i32 2
  store %struct.ahash_alg* %48, %struct.ahash_alg** %7, align 8
  %49 = load i32, i32* @n2_hash_async_init, align 4
  %50 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %51 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @n2_hash_async_update, align 4
  %53 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %54 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @n2_hash_async_final, align 4
  %56 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %57 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @n2_hash_async_finup, align 4
  %59 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %60 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @n2_hash_async_digest, align 4
  %62 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %63 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @n2_hash_async_noexport, align 4
  %65 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %66 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @n2_hash_async_noimport, align 4
  %68 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %69 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %71 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %70, i32 0, i32 0
  store %struct.hash_alg_common* %71, %struct.hash_alg_common** %5, align 8
  %72 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %73 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hash_alg_common*, %struct.hash_alg_common** %5, align 8
  %76 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.hash_alg_common*, %struct.hash_alg_common** %5, align 8
  %78 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %77, i32 0, i32 0
  store %struct.crypto_alg* %78, %struct.crypto_alg** %6, align 8
  %79 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %80 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %83 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %84 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @snprintf(i32 %81, i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %88 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %91 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %92 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @snprintf(i32 %89, i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @N2_CRA_PRIORITY, align 4
  %96 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %97 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %99 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %102 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.n2_hash_tmpl*, %struct.n2_hash_tmpl** %3, align 8
  %104 = getelementptr inbounds %struct.n2_hash_tmpl, %struct.n2_hash_tmpl* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %107 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %109 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %108, i32 0, i32 1
  store i32 4, i32* %109, align 4
  %110 = load i32, i32* @THIS_MODULE, align 4
  %111 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %112 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @n2_hash_cra_init, align 4
  %114 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %115 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @n2_hash_cra_exit, align 4
  %117 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %118 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %120 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %119, i32 0, i32 1
  %121 = call i32 @list_add(i32* %120, i32* @ahash_algs)
  %122 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %123 = call i32 @crypto_register_ahash(%struct.ahash_alg* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %16
  %127 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %128 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %132 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %131, i32 0, i32 1
  %133 = call i32 @list_del(i32* %132)
  %134 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %135 = call i32 @kfree(%struct.n2_ahash_alg* %134)
  br label %141

136:                                              ; preds = %16
  %137 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %138 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %136, %126
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %141
  %145 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %146 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AUTH_TYPE_RESERVED, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %152 = call i32 @__n2_register_one_hmac(%struct.n2_ahash_alg* %151)
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %150, %144, %141
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %13
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.n2_ahash_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @crypto_register_ahash(%struct.ahash_alg*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.n2_ahash_alg*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @__n2_register_one_hmac(%struct.n2_ahash_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
