; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_wr_mimage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_wr_mimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.icp_qat_fw_auth_desc = type { i32 }

@ADF_C3XXX_PCI_DEVICE_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"QAT: C3XXX doesn't support unsigned MMP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qat_uclo_wr_mimage(%struct.icp_qat_fw_loader_handle* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_fw_auth_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.icp_qat_fw_auth_desc* null, %struct.icp_qat_fw_auth_desc** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %11 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @qat_uclo_map_auth_fw(%struct.icp_qat_fw_loader_handle* %15, i8* %16, i32 %17, %struct.icp_qat_fw_auth_desc** %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %22 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %8, align 8
  %23 = call i32 @qat_uclo_auth_fw(%struct.icp_qat_fw_loader_handle* %21, %struct.icp_qat_fw_auth_desc* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %26 = call i32 @qat_uclo_ummap_auth_fw(%struct.icp_qat_fw_loader_handle* %25, %struct.icp_qat_fw_auth_desc** %8)
  br label %44

27:                                               ; preds = %3
  %28 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %29 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ADF_C3XXX_PCI_DEVICE_ID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @qat_uclo_wr_sram_by_words(%struct.icp_qat_fw_loader_handle* %40, i32 0, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %24
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @qat_uclo_map_auth_fw(%struct.icp_qat_fw_loader_handle*, i8*, i32, %struct.icp_qat_fw_auth_desc**) #1

declare dso_local i32 @qat_uclo_auth_fw(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_auth_desc*) #1

declare dso_local i32 @qat_uclo_ummap_auth_fw(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_auth_desc**) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @qat_uclo_wr_sram_by_words(%struct.icp_qat_fw_loader_handle*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
