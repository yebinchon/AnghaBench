; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_set_ae_ctx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_set_ae_ctx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"QAT: bad ctx mode=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CTX_ENABLES = common dso_local global i32 0, align 4
@IGNORE_W1C_MASK = common dso_local global i32 0, align 4
@CE_INUSE_CONTEXTS_BITPOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qat_hal_set_ae_ctx_mode(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load i8, i8* %7, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 8
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i8, i8* %7, align 1
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 zeroext %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %13, %3
  %23 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %24 = load i8, i8* %6, align 1
  %25 = load i32, i32* @CTX_ENABLES, align 4
  %26 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %23, i8 zeroext %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @IGNORE_W1C_MASK, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @CE_INUSE_CONTEXTS_BITPOS, align 4
  %36 = call i32 @SET_BIT(i32 %34, i32 %35)
  br label %41

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @CE_INUSE_CONTEXTS_BITPOS, align 4
  %40 = call i32 @CLR_BIT(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %36, %33 ], [ %40, %37 ]
  store i32 %42, i32* %9, align 4
  %43 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %44 = load i8, i8* %6, align 1
  %45 = load i32, i32* @CTX_ENABLES, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %43, i8 zeroext %44, i32 %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @pr_err(i8*, i8 zeroext) #1

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
