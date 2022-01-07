; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_batch_wr_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_batch_wr_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }
%struct.icp_qat_uof_batch_init = type { i8, i32, i32*, i32, %struct.icp_qat_uof_batch_init* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, i8, %struct.icp_qat_uof_batch_init*)* @qat_uclo_batch_wr_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_batch_wr_umem(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, %struct.icp_qat_uof_batch_init* %2) #0 {
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.icp_qat_uof_batch_init*, align 8
  %7 = alloca %struct.icp_qat_uof_batch_init*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store i8 %1, i8* %5, align 1
  store %struct.icp_qat_uof_batch_init* %2, %struct.icp_qat_uof_batch_init** %6, align 8
  %11 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %6, align 8
  %12 = icmp ne %struct.icp_qat_uof_batch_init* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %43

14:                                               ; preds = %3
  %15 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %6, align 8
  %16 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %15, i32 0, i32 4
  %17 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %16, align 8
  store %struct.icp_qat_uof_batch_init* %17, %struct.icp_qat_uof_batch_init** %7, align 8
  br label %18

18:                                               ; preds = %21, %14
  %19 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %7, align 8
  %20 = icmp ne %struct.icp_qat_uof_batch_init* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %7, align 8
  %23 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 8
  store i8 %24, i8* %5, align 1
  %25 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %7, align 8
  %26 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %7, align 8
  %29 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %7, align 8
  %32 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %35 = load i8, i8* %5, align 1
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @qat_uclo_wr_umem_by_words(%struct.icp_qat_fw_loader_handle* %34, i8 zeroext %35, i32 %36, i32* %37, i32 %38)
  %40 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %7, align 8
  %41 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %40, i32 0, i32 4
  %42 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %41, align 8
  store %struct.icp_qat_uof_batch_init* %42, %struct.icp_qat_uof_batch_init** %7, align 8
  br label %18

43:                                               ; preds = %13, %18
  ret void
}

declare dso_local i32 @qat_uclo_wr_umem_by_words(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
