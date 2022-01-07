; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i32 }
%struct.hisi_zip_qp_ctx = type { %struct.hisi_qp* }
%struct.hisi_qp = type { i32, %struct.hisi_zip_qp_ctx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_qm*, %struct.hisi_zip_qp_ctx*, i32, i32)* @hisi_zip_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_create_qp(%struct.hisi_qm* %0, %struct.hisi_zip_qp_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_qm*, align 8
  %7 = alloca %struct.hisi_zip_qp_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hisi_qp*, align 8
  %11 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %6, align 8
  store %struct.hisi_zip_qp_ctx* %1, %struct.hisi_zip_qp_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.hisi_qp* @hisi_qm_create_qp(%struct.hisi_qm* %12, i32 %13)
  store %struct.hisi_qp* %14, %struct.hisi_qp** %10, align 8
  %15 = load %struct.hisi_qp*, %struct.hisi_qp** %10, align 8
  %16 = call i64 @IS_ERR(%struct.hisi_qp* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.hisi_qp*, %struct.hisi_qp** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.hisi_qp* %19)
  store i32 %20, i32* %5, align 4
  br label %41

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.hisi_qp*, %struct.hisi_qp** %10, align 8
  %24 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %7, align 8
  %26 = load %struct.hisi_qp*, %struct.hisi_qp** %10, align 8
  %27 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %26, i32 0, i32 1
  store %struct.hisi_zip_qp_ctx* %25, %struct.hisi_zip_qp_ctx** %27, align 8
  %28 = load %struct.hisi_qp*, %struct.hisi_qp** %10, align 8
  %29 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %29, i32 0, i32 0
  store %struct.hisi_qp* %28, %struct.hisi_qp** %30, align 8
  %31 = load %struct.hisi_qp*, %struct.hisi_qp** %10, align 8
  %32 = call i32 @hisi_qm_start_qp(%struct.hisi_qp* %31, i32 0)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %37

36:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %41

37:                                               ; preds = %35
  %38 = load %struct.hisi_qp*, %struct.hisi_qp** %10, align 8
  %39 = call i32 @hisi_qm_release_qp(%struct.hisi_qp* %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %36, %18
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.hisi_qp* @hisi_qm_create_qp(%struct.hisi_qm*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hisi_qp*) #1

declare dso_local i32 @PTR_ERR(%struct.hisi_qp*) #1

declare dso_local i32 @hisi_qm_start_qp(%struct.hisi_qp*, i32) #1

declare dso_local i32 @hisi_qm_release_qp(%struct.hisi_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
