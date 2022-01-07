; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_clear_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_clear_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }

@ICP_QAT_UCLO_MAX_GPR_REG = common dso_local global i16 0, align 2
@ICP_SR_RD_ABS = common dso_local global i32 0, align 4
@ICP_DR_RD_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*)* @qat_hal_clear_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_hal_clear_xfer(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %2, align 8
  store i8 0, i8* %3, align 1
  br label %5

5:                                                ; preds = %37, %1
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %9 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %5
  store i16 0, i16* %4, align 2
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i16, i16* %4, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @ICP_QAT_UCLO_MAX_GPR_REG, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %24 = load i8, i8* %3, align 1
  %25 = load i32, i32* @ICP_SR_RD_ABS, align 4
  %26 = load i16, i16* %4, align 2
  %27 = call i32 @qat_hal_init_rd_xfer(%struct.icp_qat_fw_loader_handle* %23, i8 zeroext %24, i32 0, i32 %25, i16 zeroext %26, i32 0)
  %28 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %29 = load i8, i8* %3, align 1
  %30 = load i32, i32* @ICP_DR_RD_ABS, align 4
  %31 = load i16, i16* %4, align 2
  %32 = call i32 @qat_hal_init_rd_xfer(%struct.icp_qat_fw_loader_handle* %28, i8 zeroext %29, i32 0, i32 %30, i16 zeroext %31, i32 0)
  br label %33

33:                                               ; preds = %22
  %34 = load i16, i16* %4, align 2
  %35 = add i16 %34, 1
  store i16 %35, i16* %4, align 2
  br label %16

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i8, i8* %3, align 1
  %39 = add i8 %38, 1
  store i8 %39, i8* %3, align 1
  br label %5

40:                                               ; preds = %5
  ret void
}

declare dso_local i32 @qat_hal_init_rd_xfer(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
