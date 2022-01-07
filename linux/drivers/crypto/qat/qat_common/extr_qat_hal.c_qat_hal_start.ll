; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i64 }

@FCU_CONTROL = common dso_local global i32 0, align 4
@FCU_CTRL_CMD_START = common dso_local global i32 0, align 4
@FW_AUTH_WAIT_PERIOD = common dso_local global i32 0, align 4
@FCU_STATUS = common dso_local global i32 0, align 4
@FCU_STS_DONE_POS = common dso_local global i32 0, align 4
@FW_AUTH_MAX_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"QAT: start error (AE 0x%x FCU_STS = 0x%x)\0A\00", align 1
@ICP_QAT_UCLO_AE_ALL_CTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qat_hal_start(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %10 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %15 = load i32, i32* @FCU_CONTROL, align 4
  %16 = load i32, i32* @FCU_CTRL_CMD_START, align 4
  %17 = call i32 @SET_CAP_CSR(%struct.icp_qat_fw_loader_handle* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %31, %13
  %19 = load i32, i32* @FW_AUTH_WAIT_PERIOD, align 4
  %20 = call i32 @msleep(i32 %19)
  %21 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %22 = load i32, i32* @FCU_STATUS, align 4
  %23 = call i32 @GET_CAP_CSR(%struct.icp_qat_fw_loader_handle* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @FCU_STS_DONE_POS, align 4
  %26 = lshr i32 %24, %25
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %52

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @FW_AUTH_MAX_RETRY, align 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %18, label %36

36:                                               ; preds = %31
  %37 = load i8, i8* %5, align 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8 zeroext %37, i32 %38)
  br label %52

40:                                               ; preds = %3
  %41 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %42 = load i8, i8* %5, align 1
  %43 = load i32, i32* %6, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @ICP_QAT_UCLO_AE_ALL_CTX, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle* %41, i8 zeroext %42, i32 %46, i32 65536)
  %48 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %49 = load i8, i8* %5, align 1
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @qat_hal_enable_ctx(%struct.icp_qat_fw_loader_handle* %48, i8 zeroext %49, i32 %50)
  br label %52

52:                                               ; preds = %29, %40, %36
  ret void
}

declare dso_local i32 @SET_CAP_CSR(%struct.icp_qat_fw_loader_handle*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @GET_CAP_CSR(%struct.icp_qat_fw_loader_handle*, i32) #1

declare dso_local i32 @pr_err(i8*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @qat_hal_enable_ctx(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
