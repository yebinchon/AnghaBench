; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_rd_ae_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_rd_ae_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CSR_RETRY_TIMES = common dso_local global i32 0, align 4
@LOCAL_CSR_STATUS = common dso_local global i32 0, align 4
@LCS_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"QAT: Read CSR timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i32)* @qat_hal_rd_ae_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @CSR_RETRY_TIMES, align 4
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %26, %3
  %12 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %13 = load i8, i8* %6, align 1
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @GET_AE_CSR(%struct.icp_qat_fw_loader_handle* %12, i8 zeroext %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %17 = load i8, i8* %6, align 1
  %18 = load i32, i32* @LOCAL_CSR_STATUS, align 4
  %19 = call i32 @GET_AE_CSR(%struct.icp_qat_fw_loader_handle* %16, i8 zeroext %17, i32 %18)
  %20 = load i32, i32* @LCS_STATUS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %11, label %30

30:                                               ; preds = %26
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @GET_AE_CSR(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
