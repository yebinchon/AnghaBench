; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_put_sig_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_put_sig_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CSR_CTX_POINTER = common dso_local global i32 0, align 4
@ICP_QAT_UCLO_MAX_CTX = common dso_local global i32 0, align 4
@CTX_SIG_EVENTS_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, i8, i32, i32)* @qat_hal_put_sig_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_hal_put_sig_event(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %12 = load i8, i8* %6, align 1
  %13 = load i32, i32* @CSR_CTX_POINTER, align 4
  %14 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %11, i8 zeroext %12, i32 %13)
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %37, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @ICP_QAT_UCLO_MAX_CTX, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %37

26:                                               ; preds = %19
  %27 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %28 = load i8, i8* %6, align 1
  %29 = load i32, i32* @CSR_CTX_POINTER, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %27, i8 zeroext %28, i32 %29, i32 %30)
  %32 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %33 = load i8, i8* %6, align 1
  %34 = load i32, i32* @CTX_SIG_EVENTS_INDIRECT, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %32, i8 zeroext %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %15

40:                                               ; preds = %15
  %41 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %42 = load i8, i8* %6, align 1
  %43 = load i32, i32* @CSR_CTX_POINTER, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %41, i8 zeroext %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
