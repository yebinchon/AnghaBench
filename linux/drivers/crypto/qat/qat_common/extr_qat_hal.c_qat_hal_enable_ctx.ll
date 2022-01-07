; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_enable_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_enable_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CTX_ENABLES = common dso_local global i32 0, align 4
@IGNORE_W1C_MASK = common dso_local global i32 0, align 4
@CE_INUSE_CONTEXTS = common dso_local global i32 0, align 4
@CE_ENABLE_BITPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, i8, i32)* @qat_hal_enable_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_hal_enable_ctx(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %9 = load i8, i8* %5, align 1
  %10 = load i32, i32* @CTX_ENABLES, align 4
  %11 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %8, i8 zeroext %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @IGNORE_W1C_MASK, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @CE_INUSE_CONTEXTS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 85, i32 255
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CE_ENABLE_BITPOS, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %29 = load i8, i8* %5, align 1
  %30 = load i32, i32* @CTX_ENABLES, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %28, i8 zeroext %29, i32 %30, i32 %31)
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
