; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_acomp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_acomp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_acomp = type { i32 }
%struct.hisi_zip_ctx = type { i32 }

@hisi_zip_acomp_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_acomp*)* @hisi_zip_acomp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_acomp_init(%struct.crypto_acomp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_acomp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_zip_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_acomp* %0, %struct.crypto_acomp** %3, align 8
  %7 = load %struct.crypto_acomp*, %struct.crypto_acomp** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %7, i32 0, i32 0
  %9 = call i8* @crypto_tfm_alg_name(i32* %8)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.crypto_acomp*, %struct.crypto_acomp** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %10, i32 0, i32 0
  %12 = call %struct.hisi_zip_ctx* @crypto_tfm_ctx(i32* %11)
  store %struct.hisi_zip_ctx* %12, %struct.hisi_zip_ctx** %5, align 8
  %13 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @COMP_NAME_TO_TYPE(i8* %14)
  %16 = call i32 @hisi_zip_ctx_init(%struct.hisi_zip_ctx* %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %5, align 8
  %23 = call i32 @hisi_zip_create_req_q(%struct.hisi_zip_ctx* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %40

27:                                               ; preds = %21
  %28 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %5, align 8
  %29 = call i32 @hisi_zip_create_sgl_pool(%struct.hisi_zip_ctx* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %37

33:                                               ; preds = %27
  %34 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %5, align 8
  %35 = load i32, i32* @hisi_zip_acomp_cb, align 4
  %36 = call i32 @hisi_zip_set_acomp_cb(%struct.hisi_zip_ctx* %34, i32 %35)
  store i32 0, i32* %2, align 4
  br label %44

37:                                               ; preds = %32
  %38 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %5, align 8
  %39 = call i32 @hisi_zip_release_req_q(%struct.hisi_zip_ctx* %38)
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %5, align 8
  %42 = call i32 @hisi_zip_ctx_exit(%struct.hisi_zip_ctx* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %33, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @crypto_tfm_alg_name(i32*) #1

declare dso_local %struct.hisi_zip_ctx* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @hisi_zip_ctx_init(%struct.hisi_zip_ctx*, i32) #1

declare dso_local i32 @COMP_NAME_TO_TYPE(i8*) #1

declare dso_local i32 @hisi_zip_create_req_q(%struct.hisi_zip_ctx*) #1

declare dso_local i32 @hisi_zip_create_sgl_pool(%struct.hisi_zip_ctx*) #1

declare dso_local i32 @hisi_zip_set_acomp_cb(%struct.hisi_zip_ctx*, i32) #1

declare dso_local i32 @hisi_zip_release_req_q(%struct.hisi_zip_ctx*) #1

declare dso_local i32 @hisi_zip_ctx_exit(%struct.hisi_zip_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
