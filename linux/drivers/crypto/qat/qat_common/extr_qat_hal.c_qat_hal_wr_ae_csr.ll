; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_wr_ae_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_wr_ae_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CSR_RETRY_TIMES = common dso_local global i32 0, align 4
@LOCAL_CSR_STATUS = common dso_local global i32 0, align 4
@LCS_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"QAT: Write CSR Timeout\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i32, i32)* @qat_hal_wr_ae_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @CSR_RETRY_TIMES, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %27, %4
  %13 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %14 = load i8, i8* %7, align 1
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @SET_AE_CSR(%struct.icp_qat_fw_loader_handle* %13, i8 zeroext %14, i32 %15, i32 %16)
  %18 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %19 = load i8, i8* %7, align 1
  %20 = load i32, i32* @LOCAL_CSR_STATUS, align 4
  %21 = call i32 @GET_AE_CSR(%struct.icp_qat_fw_loader_handle* %18, i8 zeroext %19, i32 %20)
  %22 = load i32, i32* @LCS_STATUS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %35

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %12, label %31

31:                                               ; preds = %27
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @SET_AE_CSR(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @GET_AE_CSR(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
