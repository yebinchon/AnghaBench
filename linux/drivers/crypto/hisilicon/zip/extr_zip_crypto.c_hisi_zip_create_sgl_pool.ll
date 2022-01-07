; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_create_sgl_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_create_sgl_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_ctx = type { %struct.hisi_zip_qp_ctx* }
%struct.hisi_zip_qp_ctx = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HZIP_CTX_Q_NUM = common dso_local global i32 0, align 4
@QM_Q_DEPTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QPC_COMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip_ctx*)* @hisi_zip_create_sgl_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_create_sgl_pool(%struct.hisi_zip_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_zip_ctx*, align 8
  %4 = alloca %struct.hisi_zip_qp_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hisi_zip_ctx* %0, %struct.hisi_zip_ctx** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @HZIP_CTX_Q_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %12, i32 0, i32 0
  %14 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %14, i64 %16
  store %struct.hisi_zip_qp_ctx* %17, %struct.hisi_zip_qp_ctx** %4, align 8
  %18 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* @QM_Q_DEPTH, align 4
  %29 = shl i32 %28, 1
  %30 = call i32 @hisi_acc_create_sgl_pool(i32* %25, i32* %27, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %11
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %45

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %67

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %7

44:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %67

45:                                               ; preds = %36
  %46 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %46, i32 0, i32 0
  %48 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %47, align 8
  %49 = load i64, i64* @QPC_COMP, align 8
  %50 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %48, i64 %49
  %51 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %58, i32 0, i32 0
  %60 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %59, align 8
  %61 = load i64, i64* @QPC_COMP, align 8
  %62 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %60, i64 %61
  %63 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %62, i32 0, i32 0
  %64 = call i32 @hisi_acc_free_sgl_pool(i32* %57, i32* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %45, %44, %37
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @hisi_acc_create_sgl_pool(i32*, i32*, i32) #1

declare dso_local i32 @hisi_acc_free_sgl_pool(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
