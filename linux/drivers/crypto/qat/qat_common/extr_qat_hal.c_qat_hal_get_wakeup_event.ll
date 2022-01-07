; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_get_wakeup_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_get_wakeup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CSR_CTX_POINTER = common dso_local global i32 0, align 4
@CTX_WAKEUP_EVENTS_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, i8, i8, i32*)* @qat_hal_get_wakeup_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_hal_get_wakeup_event(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i32* %3) #0 {
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32* %3, i32** %8, align 8
  %10 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %11 = load i8, i8* %6, align 1
  %12 = load i32, i32* @CSR_CTX_POINTER, align 4
  %13 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %10, i8 zeroext %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %15 = load i8, i8* %6, align 1
  %16 = load i32, i32* @CSR_CTX_POINTER, align 4
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %14, i8 zeroext %15, i32 %16, i32 %18)
  %20 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %21 = load i8, i8* %6, align 1
  %22 = load i32, i32* @CTX_WAKEUP_EVENTS_INDIRECT, align 4
  %23 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %20, i8 zeroext %21, i32 %22)
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %26 = load i8, i8* %6, align 1
  %27 = load i32, i32* @CSR_CTX_POINTER, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %25, i8 zeroext %26, i32 %27, i32 %28)
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
