; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_alg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_alg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i8*, i32 }
%struct.hifn_alg_template = type { i8*, i8*, i32, i32 }
%struct.hifn_crypto_alg = type { i32, %struct.TYPE_4__, %struct.hifn_device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32*, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@CRYPTO_ALG_TYPE_ABLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@crypto_ablkcipher_type = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@hifn_cra_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*, %struct.hifn_alg_template*)* @hifn_alg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_alg_alloc(%struct.hifn_device* %0, %struct.hifn_alg_template* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hifn_device*, align 8
  %5 = alloca %struct.hifn_alg_template*, align 8
  %6 = alloca %struct.hifn_crypto_alg*, align 8
  %7 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %4, align 8
  store %struct.hifn_alg_template* %1, %struct.hifn_alg_template** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hifn_crypto_alg* @kzalloc(i32 72, i32 %8)
  store %struct.hifn_crypto_alg* %9, %struct.hifn_crypto_alg** %6, align 8
  %10 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %11 = icmp ne %struct.hifn_crypto_alg* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %99

15:                                               ; preds = %2
  %16 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %17 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %21 = load %struct.hifn_alg_template*, %struct.hifn_alg_template** %5, align 8
  %22 = getelementptr inbounds %struct.hifn_alg_template, %struct.hifn_alg_template* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %19, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %26 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %30 = load %struct.hifn_alg_template*, %struct.hifn_alg_template** %5, align 8
  %31 = getelementptr inbounds %struct.hifn_alg_template, %struct.hifn_alg_template* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %34 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %35)
  %37 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %38 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 300, i32* %39, align 8
  %40 = load i32, i32* @CRYPTO_ALG_TYPE_ABLKCIPHER, align 4
  %41 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %46 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.hifn_alg_template*, %struct.hifn_alg_template** %5, align 8
  %49 = getelementptr inbounds %struct.hifn_alg_template, %struct.hifn_alg_template* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %52 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 8
  store i32 %50, i32* %53, align 8
  %54 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %55 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 4, i32* %56, align 8
  %57 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %58 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %61 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 6
  store i32* @crypto_ablkcipher_type, i32** %62, align 8
  %63 = load i32, i32* @THIS_MODULE, align 4
  %64 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %65 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 4
  %67 = load %struct.hifn_alg_template*, %struct.hifn_alg_template** %5, align 8
  %68 = getelementptr inbounds %struct.hifn_alg_template, %struct.hifn_alg_template* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %71 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load i32, i32* @hifn_cra_init, align 4
  %75 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %76 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %79 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %80 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %79, i32 0, i32 2
  store %struct.hifn_device* %78, %struct.hifn_device** %80, align 8
  %81 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %82 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %81, i32 0, i32 0
  %83 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %84 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %83, i32 0, i32 1
  %85 = call i32 @list_add_tail(i32* %82, i32* %84)
  %86 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %87 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %86, i32 0, i32 1
  %88 = call i32 @crypto_register_alg(%struct.TYPE_4__* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %15
  %92 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %93 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %92, i32 0, i32 0
  %94 = call i32 @list_del(i32* %93)
  %95 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %6, align 8
  %96 = call i32 @kfree(%struct.hifn_crypto_alg* %95)
  br label %97

97:                                               ; preds = %91, %15
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %12
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.hifn_crypto_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @crypto_register_alg(%struct.TYPE_4__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.hifn_crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
