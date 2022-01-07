; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_auth_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_auth_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }
%struct.icp_qat_fw_auth_desc = type { i32, i32 }

@FCU_DRAM_ADDR_HI = common dso_local global i32 0, align 4
@BITS_IN_DWORD = common dso_local global i32 0, align 4
@FCU_DRAM_ADDR_LO = common dso_local global i32 0, align 4
@FCU_CONTROL = common dso_local global i32 0, align 4
@FCU_CTRL_CMD_AUTH = common dso_local global i32 0, align 4
@FW_AUTH_WAIT_PERIOD = common dso_local global i32 0, align 4
@FCU_STATUS = common dso_local global i32 0, align 4
@FCU_AUTH_STS_MASK = common dso_local global i32 0, align 4
@FCU_STS_VERI_FAIL = common dso_local global i32 0, align 4
@FCU_STS_AUTHFWLD_POS = common dso_local global i32 0, align 4
@FCU_STS_VERI_DONE = common dso_local global i32 0, align 4
@FW_AUTH_MAX_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"QAT: authentication error (FCU_STATUS = 0x%x),retry = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_auth_desc*)* @qat_uclo_auth_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_auth_fw(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_auth_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca %struct.icp_qat_fw_auth_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store %struct.icp_qat_fw_auth_desc* %1, %struct.icp_qat_fw_auth_desc** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %5, align 8
  %10 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %5, align 8
  %13 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ADD_ADDR(i32 %11, i32 %14)
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %20 = load i32, i32* @FCU_DRAM_ADDR_HI, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @BITS_IN_DWORD, align 4
  %23 = ashr i32 %21, %22
  %24 = call i32 @SET_CAP_CSR(%struct.icp_qat_fw_loader_handle* %19, i32 %20, i32 %23)
  %25 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %26 = load i32, i32* @FCU_DRAM_ADDR_LO, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @SET_CAP_CSR(%struct.icp_qat_fw_loader_handle* %25, i32 %26, i32 %27)
  %29 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %30 = load i32, i32* @FCU_CONTROL, align 4
  %31 = load i32, i32* @FCU_CTRL_CMD_AUTH, align 4
  %32 = call i32 @SET_CAP_CSR(%struct.icp_qat_fw_loader_handle* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %60, %2
  %34 = load i32, i32* @FW_AUTH_WAIT_PERIOD, align 4
  %35 = call i32 @msleep(i32 %34)
  %36 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %37 = load i32, i32* @FCU_STATUS, align 4
  %38 = call i32 @GET_CAP_CSR(%struct.icp_qat_fw_loader_handle* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @FCU_AUTH_STS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @FCU_STS_VERI_FAIL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %66

45:                                               ; preds = %33
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @FCU_STS_AUTHFWLD_POS, align 4
  %48 = lshr i32 %46, %47
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FCU_AUTH_STS_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @FCU_STS_VERI_DONE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %74

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @FW_AUTH_MAX_RETRY, align 4
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %33, label %65

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %44
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @FCU_AUTH_STS_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %66, %57
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ADD_ADDR(i32, i32) #1

declare dso_local i32 @SET_CAP_CSR(%struct.icp_qat_fw_loader_handle*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @GET_CAP_CSR(%struct.icp_qat_fw_loader_handle*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
