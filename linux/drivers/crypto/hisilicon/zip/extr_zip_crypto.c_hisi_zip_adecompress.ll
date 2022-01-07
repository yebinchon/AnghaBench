; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_adecompress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_adecompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acomp_req = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hisi_zip_ctx = type { %struct.hisi_zip_qp_ctx* }
%struct.hisi_zip_qp_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hisi_zip_req = type { i32 }

@QPC_DECOMP = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acomp_req*)* @hisi_zip_adecompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_adecompress(%struct.acomp_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acomp_req*, align 8
  %4 = alloca %struct.hisi_zip_ctx*, align 8
  %5 = alloca %struct.hisi_zip_qp_ctx*, align 8
  %6 = alloca %struct.hisi_zip_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.acomp_req* %0, %struct.acomp_req** %3, align 8
  %9 = load %struct.acomp_req*, %struct.acomp_req** %3, align 8
  %10 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hisi_zip_ctx* @crypto_tfm_ctx(i32 %12)
  store %struct.hisi_zip_ctx* %13, %struct.hisi_zip_ctx** %4, align 8
  %14 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %14, i32 0, i32 0
  %16 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %15, align 8
  %17 = load i64, i64* @QPC_DECOMP, align 8
  %18 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %16, i64 %17
  store %struct.hisi_zip_qp_ctx* %18, %struct.hisi_zip_qp_ctx** %5, align 8
  %19 = load %struct.acomp_req*, %struct.acomp_req** %3, align 8
  %20 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @get_comp_head_size(i32 %21, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.acomp_req*, %struct.acomp_req** %3, align 8
  %29 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call %struct.hisi_zip_req* @hisi_zip_create_req(%struct.acomp_req* %28, %struct.hisi_zip_qp_ctx* %29, i64 %30, i32 0)
  store %struct.hisi_zip_req* %31, %struct.hisi_zip_req** %6, align 8
  %32 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %6, align 8
  %33 = call i64 @IS_ERR(%struct.hisi_zip_req* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.hisi_zip_req* %36)
  store i32 %37, i32* %2, align 4
  br label %52

38:                                               ; preds = %1
  %39 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %6, align 8
  %40 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %5, align 8
  %41 = call i32 @hisi_zip_do_work(%struct.hisi_zip_req* %39, %struct.hisi_zip_qp_ctx* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @EINPROGRESS, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %5, align 8
  %48 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %6, align 8
  %49 = call i32 @hisi_zip_remove_req(%struct.hisi_zip_qp_ctx* %47, %struct.hisi_zip_req* %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %35
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.hisi_zip_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i64 @get_comp_head_size(i32, i32) #1

declare dso_local %struct.hisi_zip_req* @hisi_zip_create_req(%struct.acomp_req*, %struct.hisi_zip_qp_ctx*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.hisi_zip_req*) #1

declare dso_local i32 @PTR_ERR(%struct.hisi_zip_req*) #1

declare dso_local i32 @hisi_zip_do_work(%struct.hisi_zip_req*, %struct.hisi_zip_qp_ctx*) #1

declare dso_local i32 @hisi_zip_remove_req(%struct.hisi_zip_qp_ctx*, %struct.hisi_zip_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
