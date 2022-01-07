; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_put_rel_nn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_put_rel_nn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CTX_ENABLES = common dso_local global i32 0, align 4
@IGNORE_W1C_MASK = common dso_local global i32 0, align 4
@CE_NN_MODE = common dso_local global i32 0, align 4
@ICP_NEIGH_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i8, i16, i32)* @qat_hal_put_rel_nn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_put_rel_nn(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i16 %3, i16* %9, align 2
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %14 = load i8, i8* %7, align 1
  %15 = load i32, i32* @CTX_ENABLES, align 4
  %16 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %13, i8 zeroext %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @IGNORE_W1C_MASK, align 4
  %18 = load i32, i32* %11, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %11, align 4
  %20 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %21 = load i8, i8* %7, align 1
  %22 = load i32, i32* @CTX_ENABLES, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @CE_NN_MODE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %20, i8 zeroext %21, i32 %22, i32 %25)
  %27 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %28 = load i8, i8* %7, align 1
  %29 = load i8, i8* %8, align 1
  %30 = load i32, i32* @ICP_NEIGH_REL, align 4
  %31 = load i16, i16* %9, align 2
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @qat_hal_put_rel_wr_xfer(%struct.icp_qat_fw_loader_handle* %27, i8 zeroext %28, i8 zeroext %29, i32 %30, i16 zeroext %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %35 = load i8, i8* %7, align 1
  %36 = load i32, i32* @CTX_ENABLES, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %34, i8 zeroext %35, i32 %36, i32 %37)
  %39 = load i32, i32* %12, align 4
  ret i32 %39
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @qat_hal_put_rel_wr_xfer(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
