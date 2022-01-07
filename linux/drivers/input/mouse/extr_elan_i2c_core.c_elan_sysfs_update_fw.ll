; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_sysfs_update_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_sysfs_update_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.elan_tp_data = type { i64, i64, i32, i32 }
%struct.firmware = type { i32* }

@elan_sysfs_update_fw.signature = internal constant [6 x i32] [i32 170, i32 85, i32 204, i32 51, i32 255, i32 255], align 16
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETP_FW_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to allocate memory for firmware name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"requesting fw '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to request firmware: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"signature mismatch (expected %*ph, got %*ph)\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @elan_sysfs_update_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_sysfs_update_fw(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elan_tp_data*, align 8
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.elan_tp_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.elan_tp_data* %16, %struct.elan_tp_data** %10, align 8
  %17 = load %struct.elan_tp_data*, %struct.elan_tp_data** %10, align 8
  %18 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %97

24:                                               ; preds = %4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* @ETP_FW_NAME, align 4
  %27 = load %struct.elan_tp_data*, %struct.elan_tp_data** %10, align 8
  %28 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @kasprintf(i32 %25, i32 %26, i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %97

38:                                               ; preds = %24
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @dev_info(%struct.device* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 @request_firmware(%struct.firmware** %11, i8* %42, %struct.device* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %97

54:                                               ; preds = %38
  %55 = load %struct.firmware*, %struct.firmware** %11, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.elan_tp_data*, %struct.elan_tp_data** %10, align 8
  %59 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i64 @memcmp(i32* %62, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @elan_sysfs_update_fw.signature, i64 0, i64 0), i32 24)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 24, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @elan_sysfs_update_fw.signature, i64 0, i64 0), i32 24, i32* %67)
  %69 = load i32, i32* @EBADF, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %85

71:                                               ; preds = %54
  %72 = load %struct.elan_tp_data*, %struct.elan_tp_data** %10, align 8
  %73 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %72, i32 0, i32 2
  %74 = call i32 @mutex_lock_interruptible(i32* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %85

78:                                               ; preds = %71
  %79 = load %struct.elan_tp_data*, %struct.elan_tp_data** %10, align 8
  %80 = load %struct.firmware*, %struct.firmware** %11, align 8
  %81 = call i32 @elan_update_firmware(%struct.elan_tp_data* %79, %struct.firmware* %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.elan_tp_data*, %struct.elan_tp_data** %10, align 8
  %83 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %82, i32 0, i32 2
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %78, %77, %65
  %86 = load %struct.firmware*, %struct.firmware** %11, align 8
  %87 = call i32 @release_firmware(%struct.firmware* %86)
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = sext i32 %88 to i64
  br label %94

92:                                               ; preds = %85
  %93 = load i64, i64* %9, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %49, %33, %21
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.elan_tp_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @kasprintf(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @elan_update_firmware(%struct.elan_tp_data*, %struct.firmware*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
