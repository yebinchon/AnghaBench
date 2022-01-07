; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_admin.c_adf_send_admin_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_admin.c_adf_send_admin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { %struct.TYPE_3__*, %struct.adf_hw_device_data* }
%struct.TYPE_3__ = type { i32 }
%struct.adf_hw_device_data = type { i32 (%struct.adf_hw_device_data*)* }
%struct.icp_qat_fw_init_admin_req = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.icp_qat_fw_init_admin_resp = type { i32, i32, %struct.TYPE_4__, i32 }

@ICP_QAT_FW_CONSTANTS_CFG = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_accel_dev*, i32)* @adf_send_admin_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_send_admin_cmd(%struct.adf_accel_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adf_accel_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adf_hw_device_data*, align 8
  %7 = alloca %struct.icp_qat_fw_init_admin_req, align 8
  %8 = alloca %struct.icp_qat_fw_init_admin_resp, align 8
  %9 = alloca i32, align 4
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %11 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %10, i32 0, i32 1
  %12 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %11, align 8
  store %struct.adf_hw_device_data* %12, %struct.adf_hw_device_data** %6, align 8
  %13 = bitcast %struct.icp_qat_fw_init_admin_req* %7 to %struct.icp_qat_fw_init_admin_resp*
  %14 = call i32 @memset(%struct.icp_qat_fw_init_admin_resp* %13, i32 0, i32 24)
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.icp_qat_fw_init_admin_req, %struct.icp_qat_fw_init_admin_req* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ICP_QAT_FW_CONSTANTS_CFG, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.icp_qat_fw_init_admin_req, %struct.icp_qat_fw_init_admin_req* %7, i32 0, i32 1
  store i32 1024, i32* %21, align 4
  %22 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %23 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.icp_qat_fw_init_admin_req, %struct.icp_qat_fw_init_admin_req* %7, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  br label %28

28:                                               ; preds = %20, %2
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %6, align 8
  %32 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %31, i32 0, i32 0
  %33 = load i32 (%struct.adf_hw_device_data*)*, i32 (%struct.adf_hw_device_data*)** %32, align 8
  %34 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %6, align 8
  %35 = call i32 %33(%struct.adf_hw_device_data* %34)
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = call i32 @memset(%struct.icp_qat_fw_init_admin_resp* %8, i32 0, i32 24)
  %39 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = bitcast %struct.icp_qat_fw_init_admin_req* %7 to %struct.icp_qat_fw_init_admin_resp*
  %42 = call i64 @adf_put_admin_msg_sync(%struct.adf_accel_dev* %39, i32 %40, %struct.icp_qat_fw_init_admin_resp* %41, %struct.icp_qat_fw_init_admin_resp* %8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.icp_qat_fw_init_admin_resp, %struct.icp_qat_fw_init_admin_resp* %8, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %37
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %29

56:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.icp_qat_fw_init_admin_resp*, i32, i32) #1

declare dso_local i64 @adf_put_admin_msg_sync(%struct.adf_accel_dev*, i32, %struct.icp_qat_fw_init_admin_resp*, %struct.icp_qat_fw_init_admin_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
