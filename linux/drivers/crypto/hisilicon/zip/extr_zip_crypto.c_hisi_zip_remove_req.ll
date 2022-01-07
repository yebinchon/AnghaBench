; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_remove_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_remove_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_qp_ctx = type { %struct.TYPE_2__*, %struct.hisi_zip_req_q }
%struct.TYPE_2__ = type { i64 }
%struct.hisi_zip_req_q = type { i32, i32 }
%struct.hisi_zip_req = type { i32, i32, i32 }

@HZIP_ALG_TYPE_COMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_zip_qp_ctx*, %struct.hisi_zip_req*)* @hisi_zip_remove_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_zip_remove_req(%struct.hisi_zip_qp_ctx* %0, %struct.hisi_zip_req* %1) #0 {
  %3 = alloca %struct.hisi_zip_qp_ctx*, align 8
  %4 = alloca %struct.hisi_zip_req*, align 8
  %5 = alloca %struct.hisi_zip_req_q*, align 8
  store %struct.hisi_zip_qp_ctx* %0, %struct.hisi_zip_qp_ctx** %3, align 8
  store %struct.hisi_zip_req* %1, %struct.hisi_zip_req** %4, align 8
  %6 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %6, i32 0, i32 1
  store %struct.hisi_zip_req_q* %7, %struct.hisi_zip_req_q** %5, align 8
  %8 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HZIP_ALG_TYPE_COMP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %17 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %22 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %5, align 8
  %27 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %26, i32 0, i32 0
  %28 = call i32 @write_lock(i32* %27)
  %29 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %30 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %5, align 8
  %33 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clear_bit(i32 %31, i32 %34)
  %36 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %37 = call i32 @memset(%struct.hisi_zip_req* %36, i32 0, i32 12)
  %38 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %5, align 8
  %39 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %38, i32 0, i32 0
  %40 = call i32 @write_unlock(i32* %39)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @memset(%struct.hisi_zip_req*, i32, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
