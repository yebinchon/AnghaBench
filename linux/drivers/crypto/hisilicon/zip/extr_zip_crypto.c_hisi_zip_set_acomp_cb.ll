; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_set_acomp_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_set_acomp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { void (%struct.hisi_qp*, i8*)* }
%struct.hisi_qp = type opaque
%struct.hisi_qp.0 = type opaque

@HZIP_CTX_Q_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_zip_ctx*, void (%struct.hisi_qp.0*, i8*)*)* @hisi_zip_set_acomp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_zip_set_acomp_cb(%struct.hisi_zip_ctx* %0, void (%struct.hisi_qp.0*, i8*)* %1) #0 {
  %3 = alloca %struct.hisi_zip_ctx*, align 8
  %4 = alloca void (%struct.hisi_qp.0*, i8*)*, align 8
  %5 = alloca i32, align 4
  store %struct.hisi_zip_ctx* %0, %struct.hisi_zip_ctx** %3, align 8
  store void (%struct.hisi_qp.0*, i8*)* %1, void (%struct.hisi_qp.0*, i8*)** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HZIP_CTX_Q_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load void (%struct.hisi_qp.0*, i8*)*, void (%struct.hisi_qp.0*, i8*)** %4, align 8
  %12 = bitcast void (%struct.hisi_qp.0*, i8*)* %11 to void (%struct.hisi_qp*, i8*)*
  %13 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store void (%struct.hisi_qp*, i8*)* %12, void (%struct.hisi_qp*, i8*)** %21, align 8
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
