; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_set_ae_nn_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_set_ae_nn_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CTX_ENABLES = common dso_local global i32 0, align 4
@IGNORE_W1C_MASK = common dso_local global i32 0, align 4
@CE_NN_MODE_BITPOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qat_hal_set_ae_nn_mode(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %10 = load i8, i8* %5, align 1
  %11 = load i32, i32* @CTX_ENABLES, align 4
  %12 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %9, i8 zeroext %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @IGNORE_W1C_MASK, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CE_NN_MODE_BITPOS, align 4
  %22 = call i32 @SET_BIT(i32 %20, i32 %21)
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CE_NN_MODE_BITPOS, align 4
  %26 = call i32 @CLR_BIT(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %22, %19 ], [ %26, %23 ]
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %34 = load i8, i8* %5, align 1
  %35 = load i32, i32* @CTX_ENABLES, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %33, i8 zeroext %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %27
  ret i32 0
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @CLR_BIT(i32, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
