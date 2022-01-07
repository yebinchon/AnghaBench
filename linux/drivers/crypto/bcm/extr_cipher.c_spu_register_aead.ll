; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_register_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_register_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_alg_s = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.aead_alg }
%struct.aead_alg = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@aead_pri = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@aead_setauthsize = common dso_local global i32 0, align 4
@aead_encrypt = common dso_local global i32 0, align 4
@aead_decrypt = common dso_local global i32 0, align 4
@aead_cra_init = common dso_local global i32 0, align 4
@aead_cra_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"  registered aead %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_alg_s*)* @spu_register_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_register_aead(%struct.iproc_alg_s* %0) #0 {
  %2 = alloca %struct.iproc_alg_s*, align 8
  %3 = alloca %struct.aead_alg*, align 8
  %4 = alloca i32, align 4
  store %struct.iproc_alg_s* %0, %struct.iproc_alg_s** %2, align 8
  %5 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %2, align 8
  %6 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.aead_alg* %7, %struct.aead_alg** %3, align 8
  %8 = load i32, i32* @THIS_MODULE, align 4
  %9 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %10 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @aead_pri, align 4
  %13 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %14 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i32 %12, i32* %15, align 8
  %16 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %17 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %20 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %23 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %24 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @aead_setauthsize, align 4
  %29 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %30 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @aead_encrypt, align 4
  %32 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %33 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @aead_decrypt, align 4
  %35 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %36 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @aead_cra_init, align 4
  %38 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %39 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @aead_cra_exit, align 4
  %41 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %42 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %44 = call i32 @crypto_register_aead(%struct.aead_alg* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %1
  %48 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %2, align 8
  %49 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %1
  %51 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %52 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @crypto_register_aead(%struct.aead_alg*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
