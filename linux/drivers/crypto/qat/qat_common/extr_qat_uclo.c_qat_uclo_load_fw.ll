; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.icp_qat_fw_auth_desc = type { i32 }
%struct.icp_qat_simg_ae_mode = type { i32 }

@FCU_LOADED_AE_POS = common dso_local global i32 0, align 4
@ICP_QAT_CSS_FWSK_PUB_LEN = common dso_local global i64 0, align 8
@ICP_QAT_CSS_SIGNATURE_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"QAT: AE %d is active\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FCU_CONTROL = common dso_local global i32 0, align 4
@FCU_CTRL_CMD_LOAD = common dso_local global i32 0, align 4
@FCU_CTRL_AE_POS = common dso_local global i32 0, align 4
@FW_AUTH_WAIT_PERIOD = common dso_local global i32 0, align 4
@FCU_STATUS = common dso_local global i32 0, align 4
@FCU_AUTH_STS_MASK = common dso_local global i32 0, align 4
@FCU_STS_LOAD_DONE = common dso_local global i32 0, align 4
@FW_AUTH_MAX_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"QAT: firmware load failed timeout %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_auth_desc*)* @qat_uclo_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_load_fw(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_auth_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca %struct.icp_qat_fw_auth_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_simg_ae_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store %struct.icp_qat_fw_auth_desc* %1, %struct.icp_qat_fw_auth_desc** %5, align 8
  %11 = load i32, i32* @FCU_LOADED_AE_POS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %5, align 8
  %13 = ptrtoint %struct.icp_qat_fw_auth_desc* %12 to i64
  %14 = add i64 %13, 4
  %15 = add i64 %14, 4
  %16 = load i64, i64* @ICP_QAT_CSS_FWSK_PUB_LEN, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* @ICP_QAT_CSS_SIGNATURE_LEN, align 8
  %19 = add i64 %17, %18
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.icp_qat_simg_ae_mode*
  store %struct.icp_qat_simg_ae_mode* %21, %struct.icp_qat_simg_ae_mode** %8, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %94, %2
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %25 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %23, %28
  br i1 %29, label %30, label %97

30:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  %31 = load %struct.icp_qat_simg_ae_mode*, %struct.icp_qat_simg_ae_mode** %8, align 8
  %32 = getelementptr inbounds %struct.icp_qat_simg_ae_mode, %struct.icp_qat_simg_ae_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = lshr i32 %33, %34
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %94

39:                                               ; preds = %30
  %40 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @qat_hal_check_ae_active(%struct.icp_qat_fw_loader_handle* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %98

49:                                               ; preds = %39
  %50 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %51 = load i32, i32* @FCU_CONTROL, align 4
  %52 = load i32, i32* @FCU_CTRL_CMD_LOAD, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @FCU_CTRL_AE_POS, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  %57 = call i32 @SET_CAP_CSR(%struct.icp_qat_fw_loader_handle* %50, i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %79, %49
  %59 = load i32, i32* @FW_AUTH_WAIT_PERIOD, align 4
  %60 = call i32 @msleep(i32 %59)
  %61 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %62 = load i32, i32* @FCU_STATUS, align 4
  %63 = call i32 @GET_CAP_CSR(%struct.icp_qat_fw_loader_handle* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @FCU_AUTH_STS_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @FCU_STS_LOAD_DONE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = lshr i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %84

78:                                               ; preds = %69, %58
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @FW_AUTH_MAX_RETRY, align 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %58, label %84

84:                                               ; preds = %79, %77
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @FW_AUTH_MAX_RETRY, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %98

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %38
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %22

97:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %88, %44
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @qat_hal_check_ae_active(%struct.icp_qat_fw_loader_handle*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @SET_CAP_CSR(%struct.icp_qat_fw_loader_handle*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @GET_CAP_CSR(%struct.icp_qat_fw_loader_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
