; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c___n2_register_one_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c___n2_register_one_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2_ahash_alg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.n2_hmac_alg = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.ahash_alg }
%struct.ahash_alg = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@n2_hmac_async_digest = common dso_local global i32 0, align 4
@n2_hmac_async_setkey = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hmac(%s)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"hmac-%s-n2\00", align 1
@n2_hmac_cra_init = common dso_local global i32 0, align 4
@n2_hmac_cra_exit = common dso_local global i32 0, align 4
@hmac_algs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s alg registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2_ahash_alg*)* @__n2_register_one_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__n2_register_one_hmac(%struct.n2_ahash_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.n2_ahash_alg*, align 8
  %4 = alloca %struct.n2_hmac_alg*, align 8
  %5 = alloca %struct.ahash_alg*, align 8
  %6 = alloca %struct.crypto_alg*, align 8
  %7 = alloca i32, align 4
  store %struct.n2_ahash_alg* %0, %struct.n2_ahash_alg** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.n2_hmac_alg* @kzalloc(i32 40, i32 %8)
  store %struct.n2_hmac_alg* %9, %struct.n2_hmac_alg** %4, align 8
  %10 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %11 = icmp ne %struct.n2_hmac_alg* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %94

15:                                               ; preds = %1
  %16 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %3, align 8
  %17 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %23 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %25 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %24, i32 0, i32 1
  %26 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %3, align 8
  %27 = call i32 @memcpy(%struct.TYPE_10__* %25, %struct.n2_ahash_alg* %26, i32 8)
  %28 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %29 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %33 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store %struct.ahash_alg* %34, %struct.ahash_alg** %5, align 8
  %35 = load i32, i32* @n2_hmac_async_digest, align 4
  %36 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %37 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @n2_hmac_async_setkey, align 4
  %39 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %40 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %42 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store %struct.crypto_alg* %43, %struct.crypto_alg** %6, align 8
  %44 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %45 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %48 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %49 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @snprintf(i32 %46, i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %53 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %56 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %57 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @snprintf(i32 %54, i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %61 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %60, i32 0, i32 0
  store i32 4, i32* %61, align 4
  %62 = load i32, i32* @n2_hmac_cra_init, align 4
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %64 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @n2_hmac_cra_exit, align 4
  %66 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %67 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %69 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = call i32 @list_add(i32* %70, i32* @hmac_algs)
  %72 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %73 = call i32 @crypto_register_ahash(%struct.ahash_alg* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %15
  %77 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %78 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %82 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = call i32 @list_del(i32* %83)
  %85 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %86 = call i32 @kfree(%struct.n2_hmac_alg* %85)
  br label %92

87:                                               ; preds = %15
  %88 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %89 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %76
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %12
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.n2_hmac_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.n2_ahash_alg*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @crypto_register_ahash(%struct.ahash_alg*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.n2_hmac_alg*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
