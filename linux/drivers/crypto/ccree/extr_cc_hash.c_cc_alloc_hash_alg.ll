; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_alloc_hash_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_alloc_hash_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hash_alg = type { i32, i32, i32, %struct.ahash_alg }
%struct.ahash_alg = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.cc_hash_template = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, %struct.ahash_alg }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@CC_CRA_PRIO = common dso_local global i32 0, align 4
@cc_cra_exit = common dso_local global i32 0, align 4
@cc_cra_init = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cc_hash_alg* (%struct.cc_hash_template*, %struct.device*, i32)* @cc_alloc_hash_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cc_hash_alg* @cc_alloc_hash_alg(%struct.cc_hash_template* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.cc_hash_alg*, align 8
  %5 = alloca %struct.cc_hash_template*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cc_hash_alg*, align 8
  %9 = alloca %struct.crypto_alg*, align 8
  %10 = alloca %struct.ahash_alg*, align 8
  store %struct.cc_hash_template* %0, %struct.cc_hash_template** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cc_hash_alg* @kzalloc(i32 72, i32 %11)
  store %struct.cc_hash_alg* %12, %struct.cc_hash_alg** %8, align 8
  %13 = load %struct.cc_hash_alg*, %struct.cc_hash_alg** %8, align 8
  %14 = icmp ne %struct.cc_hash_alg* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.cc_hash_alg* @ERR_PTR(i32 %17)
  store %struct.cc_hash_alg* %18, %struct.cc_hash_alg** %4, align 8
  br label %112

19:                                               ; preds = %3
  %20 = load %struct.cc_hash_alg*, %struct.cc_hash_alg** %8, align 8
  %21 = getelementptr inbounds %struct.cc_hash_alg, %struct.cc_hash_alg* %20, i32 0, i32 3
  %22 = load %struct.cc_hash_template*, %struct.cc_hash_template** %5, align 8
  %23 = getelementptr inbounds %struct.cc_hash_template, %struct.cc_hash_template* %22, i32 0, i32 8
  %24 = bitcast %struct.ahash_alg* %21 to i8*
  %25 = bitcast %struct.ahash_alg* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 56, i1 false)
  %26 = load %struct.cc_hash_alg*, %struct.cc_hash_alg** %8, align 8
  %27 = getelementptr inbounds %struct.cc_hash_alg, %struct.cc_hash_alg* %26, i32 0, i32 3
  store %struct.ahash_alg* %27, %struct.ahash_alg** %10, align 8
  %28 = load %struct.ahash_alg*, %struct.ahash_alg** %10, align 8
  %29 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.crypto_alg* %30, %struct.crypto_alg** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %19
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %35 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %38 = load %struct.cc_hash_template*, %struct.cc_hash_template** %5, align 8
  %39 = getelementptr inbounds %struct.cc_hash_template, %struct.cc_hash_template* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i32 %36, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %43 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %46 = load %struct.cc_hash_template*, %struct.cc_hash_template** %5, align 8
  %47 = getelementptr inbounds %struct.cc_hash_template, %struct.cc_hash_template* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %69

50:                                               ; preds = %19
  %51 = load %struct.ahash_alg*, %struct.ahash_alg** %10, align 8
  %52 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %54 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %57 = load %struct.cc_hash_template*, %struct.cc_hash_template** %5, align 8
  %58 = getelementptr inbounds %struct.cc_hash_template, %struct.cc_hash_template* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i32 %55, i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %62 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %65 = load %struct.cc_hash_template*, %struct.cc_hash_template** %5, align 8
  %66 = getelementptr inbounds %struct.cc_hash_template, %struct.cc_hash_template* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @snprintf(i32 %63, i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %50, %33
  %70 = load i32, i32* @THIS_MODULE, align 4
  %71 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %72 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %74 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %73, i32 0, i32 0
  store i32 4, i32* %74, align 8
  %75 = load i32, i32* @CC_CRA_PRIO, align 4
  %76 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %77 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.cc_hash_template*, %struct.cc_hash_template** %5, align 8
  %79 = getelementptr inbounds %struct.cc_hash_template, %struct.cc_hash_template* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %82 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %84 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @cc_cra_exit, align 4
  %86 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %87 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @cc_cra_init, align 4
  %89 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %90 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %92 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %95 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.cc_hash_template*, %struct.cc_hash_template** %5, align 8
  %97 = getelementptr inbounds %struct.cc_hash_template, %struct.cc_hash_template* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.cc_hash_alg*, %struct.cc_hash_alg** %8, align 8
  %100 = getelementptr inbounds %struct.cc_hash_alg, %struct.cc_hash_alg* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.cc_hash_template*, %struct.cc_hash_template** %5, align 8
  %102 = getelementptr inbounds %struct.cc_hash_template, %struct.cc_hash_template* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cc_hash_alg*, %struct.cc_hash_alg** %8, align 8
  %105 = getelementptr inbounds %struct.cc_hash_alg, %struct.cc_hash_alg* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.cc_hash_template*, %struct.cc_hash_template** %5, align 8
  %107 = getelementptr inbounds %struct.cc_hash_template, %struct.cc_hash_template* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cc_hash_alg*, %struct.cc_hash_alg** %8, align 8
  %110 = getelementptr inbounds %struct.cc_hash_alg, %struct.cc_hash_alg* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.cc_hash_alg*, %struct.cc_hash_alg** %8, align 8
  store %struct.cc_hash_alg* %111, %struct.cc_hash_alg** %4, align 8
  br label %112

112:                                              ; preds = %69, %15
  %113 = load %struct.cc_hash_alg*, %struct.cc_hash_alg** %4, align 8
  ret %struct.cc_hash_alg* %113
}

declare dso_local %struct.cc_hash_alg* @kzalloc(i32, i32) #1

declare dso_local %struct.cc_hash_alg* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
