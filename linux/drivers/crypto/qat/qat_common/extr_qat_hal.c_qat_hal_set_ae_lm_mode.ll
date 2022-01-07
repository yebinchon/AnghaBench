; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_set_ae_lm_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_set_ae_lm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CTX_ENABLES = common dso_local global i32 0, align 4
@IGNORE_W1C_MASK = common dso_local global i32 0, align 4
@CE_LMADDR_0_GLOBAL_BITPOS = common dso_local global i32 0, align 4
@CE_LMADDR_1_GLOBAL_BITPOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"QAT: lmType = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qat_hal_set_ae_lm_mode(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %12 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %13 = load i8, i8* %7, align 1
  %14 = load i32, i32* @CTX_ENABLES, align 4
  %15 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %12, i8 zeroext %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @IGNORE_W1C_MASK, align 4
  %17 = load i32, i32* %10, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %48 [
    i32 129, label %20
    i32 128, label %34
  ]

20:                                               ; preds = %4
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @CE_LMADDR_0_GLOBAL_BITPOS, align 4
  %27 = call i32 @SET_BIT(i32 %25, i32 %26)
  br label %32

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CE_LMADDR_0_GLOBAL_BITPOS, align 4
  %31 = call i32 @CLR_BIT(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %27, %24 ], [ %31, %28 ]
  store i32 %33, i32* %11, align 4
  br label %53

34:                                               ; preds = %4
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @CE_LMADDR_1_GLOBAL_BITPOS, align 4
  %41 = call i32 @SET_BIT(i32 %39, i32 %40)
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @CE_LMADDR_1_GLOBAL_BITPOS, align 4
  %45 = call i32 @CLR_BIT(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  store i32 %47, i32* %11, align 4
  br label %53

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %64

53:                                               ; preds = %46, %32
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %59 = load i8, i8* %7, align 1
  %60 = load i32, i32* @CTX_ENABLES, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %58, i8 zeroext %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %53
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @CLR_BIT(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
