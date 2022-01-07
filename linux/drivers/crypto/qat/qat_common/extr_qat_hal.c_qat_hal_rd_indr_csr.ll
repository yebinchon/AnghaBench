; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_rd_indr_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_rd_indr_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CSR_CTX_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i8, i32)* @qat_hal_rd_indr_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %11 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %12 = load i8, i8* %6, align 1
  %13 = load i32, i32* @CSR_CTX_POINTER, align 4
  %14 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %11, i8 zeroext %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %16 = load i8, i8* %6, align 1
  %17 = load i32, i32* @CSR_CTX_POINTER, align 4
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %15, i8 zeroext %16, i32 %17, i32 %19)
  %21 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %22 = load i8, i8* %6, align 1
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %21, i8 zeroext %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %26 = load i8, i8* %6, align 1
  %27 = load i32, i32* @CSR_CTX_POINTER, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %25, i8 zeroext %26, i32 %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
