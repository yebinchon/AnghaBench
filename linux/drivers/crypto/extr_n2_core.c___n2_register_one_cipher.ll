; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c___n2_register_one_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c___n2_register_one_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2_cipher_tmpl = type { i8*, i8*, i32, i32, i32 }
%struct.n2_cipher_alg = type { i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-n2\00", align 1
@N2_CRA_PRIORITY = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_ABLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@crypto_ablkcipher_type = common dso_local global i32 0, align 4
@n2_cipher_cra_init = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@cipher_algs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s alg registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2_cipher_tmpl*)* @__n2_register_one_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__n2_register_one_cipher(%struct.n2_cipher_tmpl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.n2_cipher_tmpl*, align 8
  %4 = alloca %struct.n2_cipher_alg*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca i32, align 4
  store %struct.n2_cipher_tmpl* %0, %struct.n2_cipher_tmpl** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.n2_cipher_alg* @kzalloc(i32 56, i32 %7)
  store %struct.n2_cipher_alg* %8, %struct.n2_cipher_alg** %4, align 8
  %9 = load %struct.n2_cipher_alg*, %struct.n2_cipher_alg** %4, align 8
  %10 = icmp ne %struct.n2_cipher_alg* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.n2_cipher_alg*, %struct.n2_cipher_alg** %4, align 8
  %16 = getelementptr inbounds %struct.n2_cipher_alg, %struct.n2_cipher_alg* %15, i32 0, i32 2
  store %struct.crypto_alg* %16, %struct.crypto_alg** %5, align 8
  %17 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %18 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %21 = load %struct.n2_cipher_tmpl*, %struct.n2_cipher_tmpl** %3, align 8
  %22 = getelementptr inbounds %struct.n2_cipher_tmpl, %struct.n2_cipher_tmpl* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @snprintf(i32 %19, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %26 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %29 = load %struct.n2_cipher_tmpl*, %struct.n2_cipher_tmpl** %3, align 8
  %30 = getelementptr inbounds %struct.n2_cipher_tmpl, %struct.n2_cipher_tmpl* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i32 %27, i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @N2_CRA_PRIORITY, align 4
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %35 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @CRYPTO_ALG_TYPE_ABLKCIPHER, align 4
  %37 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %42 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.n2_cipher_tmpl*, %struct.n2_cipher_tmpl** %3, align 8
  %44 = getelementptr inbounds %struct.n2_cipher_tmpl, %struct.n2_cipher_tmpl* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %47 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.n2_cipher_tmpl*, %struct.n2_cipher_tmpl** %3, align 8
  %49 = getelementptr inbounds %struct.n2_cipher_tmpl, %struct.n2_cipher_tmpl* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.n2_cipher_alg*, %struct.n2_cipher_alg** %4, align 8
  %52 = getelementptr inbounds %struct.n2_cipher_alg, %struct.n2_cipher_alg* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %54 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %53, i32 0, i32 1
  store i32 4, i32* %54, align 4
  %55 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %56 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %55, i32 0, i32 6
  store i32* @crypto_ablkcipher_type, i32** %56, align 8
  %57 = load %struct.n2_cipher_tmpl*, %struct.n2_cipher_tmpl** %3, align 8
  %58 = getelementptr inbounds %struct.n2_cipher_tmpl, %struct.n2_cipher_tmpl* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %61 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @n2_cipher_cra_init, align 4
  %64 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %65 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @THIS_MODULE, align 4
  %67 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %68 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.n2_cipher_alg*, %struct.n2_cipher_alg** %4, align 8
  %70 = getelementptr inbounds %struct.n2_cipher_alg, %struct.n2_cipher_alg* %69, i32 0, i32 0
  %71 = call i32 @list_add(i32* %70, i32* @cipher_algs)
  %72 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %73 = call i32 @crypto_register_alg(%struct.crypto_alg* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %14
  %77 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %78 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.n2_cipher_alg*, %struct.n2_cipher_alg** %4, align 8
  %82 = getelementptr inbounds %struct.n2_cipher_alg, %struct.n2_cipher_alg* %81, i32 0, i32 0
  %83 = call i32 @list_del(i32* %82)
  %84 = load %struct.n2_cipher_alg*, %struct.n2_cipher_alg** %4, align 8
  %85 = call i32 @kfree(%struct.n2_cipher_alg* %84)
  br label %91

86:                                               ; preds = %14
  %87 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %88 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %76
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %11
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.n2_cipher_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.n2_cipher_alg*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
