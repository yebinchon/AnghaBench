; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_wait_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_wait_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@ACS_ABO_BITPOS = common dso_local global i32 0, align 4
@MAX_RETRY_TIMES = common dso_local global i32 0, align 4
@PROFILE_COUNT = common dso_local global i32 0, align 4
@ACTIVE_CTX_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"QAT: wait_num_cycles time out\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i32, i32)* @qat_hal_wait_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_wait_cycles(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @ACS_ABO_BITPOS, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @MAX_RETRY_TIMES, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %19 = load i8, i8* %7, align 1
  %20 = load i32, i32* @PROFILE_COUNT, align 4
  %21 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %18, i8 zeroext %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 65535
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %67, %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %13, align 4
  %31 = icmp ne i32 %29, 0
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %68

34:                                               ; preds = %32
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %39 = load i8, i8* %7, align 1
  %40 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %41 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %38, i8 zeroext %39, i32 %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %44 = load i8, i8* %7, align 1
  %45 = load i32, i32* @PROFILE_COUNT, align 4
  %46 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %43, i8 zeroext %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 65535
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 65536
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %42
  %58 = load i32, i32* %14, align 4
  %59 = icmp sge i32 %58, 8
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @ACS_ABO_BITPOS, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %76

67:                                               ; preds = %60, %57
  br label %24

68:                                               ; preds = %32
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EFAULT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %76

75:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %71, %66
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
