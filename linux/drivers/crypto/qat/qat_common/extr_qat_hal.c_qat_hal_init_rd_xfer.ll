; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_init_rd_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_init_rd_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@ICP_QAT_UCLO_MAX_XFER_REG = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"QAT: write rd xfer fail\0A\00", align 1
@ICP_QAT_UCLO_MAX_CTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qat_hal_init_rd_xfer(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8 0, i8* %16, align 1
  %18 = load i16, i16* %12, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @ICP_QAT_UCLO_MAX_XFER_REG, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %75

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %72, %26
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %33 = load i8, i8* %9, align 1
  %34 = load i16, i16* %12, align 2
  %35 = call i32 @qat_hal_convert_abs_to_rel(%struct.icp_qat_fw_loader_handle* %32, i8 zeroext %33, i16 zeroext %34, i16* %15, i8* %16)
  %36 = load i32, i32* %11, align 4
  %37 = sub i32 %36, 3
  store i32 %37, i32* %17, align 4
  br label %47

38:                                               ; preds = %27
  %39 = load i16, i16* %12, align 2
  store i16 %39, i16* %15, align 2
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %17, align 4
  %41 = load i8, i8* %16, align 1
  %42 = bitcast i8* %10 to i64*
  %43 = call i32 @test_bit(i8 zeroext %41, i64* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %62

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %49 = load i8, i8* %9, align 1
  %50 = load i8, i8* %16, align 1
  %51 = load i32, i32* %17, align 4
  %52 = load i16, i16* %15, align 2
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @qat_hal_put_rel_rd_xfer(%struct.icp_qat_fw_loader_handle* %48, i8 zeroext %49, i8 zeroext %50, i32 %51, i16 zeroext %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %75

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i8, i8* %10, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8, i8* %16, align 1
  %68 = add i8 %67, 1
  store i8 %68, i8* %16, align 1
  %69 = zext i8 %67 to i32
  %70 = load i32, i32* @ICP_QAT_UCLO_MAX_CTX, align 4
  %71 = icmp slt i32 %69, %70
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi i1 [ false, %62 ], [ %71, %66 ]
  br i1 %73, label %27, label %74

74:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %57, %23
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @qat_hal_convert_abs_to_rel(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i16 zeroext, i16*, i8*) #1

declare dso_local i32 @test_bit(i8 zeroext, i64*) #1

declare dso_local i32 @qat_hal_put_rel_rd_xfer(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32, i16 zeroext, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
