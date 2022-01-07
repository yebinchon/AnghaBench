; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_ctl_drv.c_adf_ctl_ioctl_dev_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_ctl_drv.c_adf_ctl_ioctl_dev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.adf_user_cfg_ctl_data = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"QAT: Device %d not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ADF_CFG_ALL_DEVICES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"QAT: Stopping all acceleration devices.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"QAT: Stopping acceleration device qat_dev%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i64)* @adf_ctl_ioctl_dev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_ctl_ioctl_dev_stop(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.adf_user_cfg_ctl_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @adf_ctl_alloc_resources(%struct.adf_user_cfg_ctl_data** %9, i64 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %18 = getelementptr inbounds %struct.adf_user_cfg_ctl_data, %struct.adf_user_cfg_ctl_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @adf_devmgr_verify_id(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %24 = getelementptr inbounds %struct.adf_user_cfg_ctl_data, %struct.adf_user_cfg_ctl_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %55

29:                                               ; preds = %16
  %30 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %31 = getelementptr inbounds %struct.adf_user_cfg_ctl_data, %struct.adf_user_cfg_ctl_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @adf_ctl_is_device_in_use(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %55

37:                                               ; preds = %29
  %38 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %39 = getelementptr inbounds %struct.adf_user_cfg_ctl_data, %struct.adf_user_cfg_ctl_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADF_CFG_ALL_DEVICES, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %50

45:                                               ; preds = %37
  %46 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %47 = getelementptr inbounds %struct.adf_user_cfg_ctl_data, %struct.adf_user_cfg_ctl_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %45, %43
  %51 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %52 = getelementptr inbounds %struct.adf_user_cfg_ctl_data, %struct.adf_user_cfg_ctl_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @adf_ctl_stop_devices(i64 %53)
  br label %55

55:                                               ; preds = %50, %36, %22
  %56 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %57 = call i32 @kfree(%struct.adf_user_cfg_ctl_data* %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @adf_ctl_alloc_resources(%struct.adf_user_cfg_ctl_data**, i64) #1

declare dso_local i64 @adf_devmgr_verify_id(i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @adf_ctl_is_device_in_use(i64) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @adf_ctl_stop_devices(i64) #1

declare dso_local i32 @kfree(%struct.adf_user_cfg_ctl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
