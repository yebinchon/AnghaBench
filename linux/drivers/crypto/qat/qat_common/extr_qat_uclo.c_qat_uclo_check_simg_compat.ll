; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_check_simg_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_check_simg_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.icp_qat_suof_img_hdr = type { i64 }
%struct.icp_qat_simg_ae_mode = type { i32, i32, i32 }

@PID_MAJOR_REV = common dso_local global i32 0, align 4
@PID_MINOR_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"QAT: incompatible product type %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"QAT: incompatible device majver 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_suof_img_hdr*)* @qat_uclo_check_simg_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_check_simg_compat(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_suof_img_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca %struct.icp_qat_suof_img_hdr*, align 8
  %6 = alloca %struct.icp_qat_simg_ae_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store %struct.icp_qat_suof_img_hdr* %1, %struct.icp_qat_suof_img_hdr** %5, align 8
  store %struct.icp_qat_simg_ae_mode* null, %struct.icp_qat_simg_ae_mode** %6, align 8
  %10 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %11 = call i32 @qat_uclo_get_dev_type(%struct.icp_qat_fw_loader_handle* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.icp_qat_simg_ae_mode*
  store %struct.icp_qat_simg_ae_mode* %15, %struct.icp_qat_simg_ae_mode** %6, align 8
  %16 = load i32, i32* @PID_MAJOR_REV, align 4
  %17 = load i32, i32* @PID_MINOR_REV, align 4
  %18 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %19 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %17, %22
  %24 = or i32 %16, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.icp_qat_simg_ae_mode*, %struct.icp_qat_simg_ae_mode** %6, align 8
  %26 = getelementptr inbounds %struct.icp_qat_simg_ae_mode, %struct.icp_qat_simg_ae_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.icp_qat_simg_ae_mode*, %struct.icp_qat_simg_ae_mode** %6, align 8
  %32 = getelementptr inbounds %struct.icp_qat_simg_ae_mode, %struct.icp_qat_simg_ae_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %57

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.icp_qat_simg_ae_mode*, %struct.icp_qat_simg_ae_mode** %6, align 8
  %42 = getelementptr inbounds %struct.icp_qat_simg_ae_mode, %struct.icp_qat_simg_ae_mode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ugt i32 %40, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.icp_qat_simg_ae_mode*, %struct.icp_qat_simg_ae_mode** %6, align 8
  %48 = getelementptr inbounds %struct.icp_qat_simg_ae_mode, %struct.icp_qat_simg_ae_mode* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45, %37
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %51, %30
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @qat_uclo_get_dev_type(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
