; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_create_aead_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_create_aead_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_crypto_alg = type { i32, i32, i32, %struct.aead_alg }
%struct.aead_alg = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cc_alg_template = type { i8*, i8*, i32, i32, i32, %struct.aead_alg }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@CC_CRA_PRIO = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@cc_aead_init = common dso_local global i32 0, align 4
@cc_aead_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cc_crypto_alg* (%struct.cc_alg_template*, %struct.device*)* @cc_create_aead_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cc_crypto_alg* @cc_create_aead_alg(%struct.cc_alg_template* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.cc_crypto_alg*, align 8
  %4 = alloca %struct.cc_alg_template*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.cc_crypto_alg*, align 8
  %7 = alloca %struct.aead_alg*, align 8
  store %struct.cc_alg_template* %0, %struct.cc_alg_template** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cc_crypto_alg* @kzalloc(i32 44, i32 %8)
  store %struct.cc_crypto_alg* %9, %struct.cc_crypto_alg** %6, align 8
  %10 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %11 = icmp ne %struct.cc_crypto_alg* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.cc_crypto_alg* @ERR_PTR(i32 %14)
  store %struct.cc_crypto_alg* %15, %struct.cc_crypto_alg** %3, align 8
  br label %81

16:                                               ; preds = %2
  %17 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %18 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %17, i32 0, i32 5
  store %struct.aead_alg* %18, %struct.aead_alg** %7, align 8
  %19 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %20 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %24 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %25 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @snprintf(i32 %22, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %29 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %33 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %34 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i32 %31, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @THIS_MODULE, align 4
  %38 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %39 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @CC_CRA_PRIO, align 4
  %42 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %43 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %46 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 4, i32* %47, align 4
  %48 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %49 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %52 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @cc_aead_init, align 4
  %55 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %56 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @cc_aead_exit, align 4
  %58 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %59 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %61 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %60, i32 0, i32 3
  %62 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %63 = bitcast %struct.aead_alg* %61 to i8*
  %64 = bitcast %struct.aead_alg* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 32, i1 false)
  %65 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %66 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %69 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %71 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %74 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %76 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %79 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  store %struct.cc_crypto_alg* %80, %struct.cc_crypto_alg** %3, align 8
  br label %81

81:                                               ; preds = %16, %12
  %82 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %3, align 8
  ret %struct.cc_crypto_alg* %82
}

declare dso_local %struct.cc_crypto_alg* @kzalloc(i32, i32) #1

declare dso_local %struct.cc_crypto_alg* @ERR_PTR(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
