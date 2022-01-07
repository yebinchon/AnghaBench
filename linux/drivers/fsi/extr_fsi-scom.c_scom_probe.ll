; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_scom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_scom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsi_device = type { i32 }
%struct.scom_device = type { %struct.TYPE_6__, i32, %struct.fsi_device*, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.device*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@fsi_cdev_type = common dso_local global i32 0, align 4
@scom_free = common dso_local global i32 0, align 4
@fsi_dev_scom = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"scom%d\00", align 1
@scom_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error %d creating char device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @scom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scom_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fsi_device*, align 8
  %5 = alloca %struct.scom_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.fsi_device* @to_fsi_dev(%struct.device* %8)
  store %struct.fsi_device* %9, %struct.fsi_device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.scom_device* @kzalloc(i32 48, i32 %10)
  store %struct.scom_device* %11, %struct.scom_device** %5, align 8
  %12 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %13 = icmp ne %struct.scom_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %93

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %20 = call i32 @dev_set_drvdata(%struct.device* %18, %struct.scom_device* %19)
  %21 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %22 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %21, i32 0, i32 3
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 @get_device(%struct.device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %17
  %28 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %29 = call i32 @kfree(%struct.scom_device* %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %93

32:                                               ; preds = %17
  %33 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %34 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %35 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %34, i32 0, i32 2
  store %struct.fsi_device* %33, %struct.fsi_device** %35, align 8
  %36 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %37 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32* @fsi_cdev_type, i32** %38, align 8
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %41 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store %struct.device* %39, %struct.device** %42, align 8
  %43 = load i32, i32* @scom_free, align 4
  %44 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %45 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %48 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %47, i32 0, i32 0
  %49 = call i32 @device_initialize(%struct.TYPE_6__* %48)
  %50 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %51 = load i32, i32* @fsi_dev_scom, align 4
  %52 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %53 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = call i32 @fsi_get_new_minor(%struct.fsi_device* %50, i32 %51, i32* %54, i32* %7)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %32
  br label %88

59:                                               ; preds = %32
  %60 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %61 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @dev_set_name(%struct.TYPE_6__* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %65 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %64, i32 0, i32 1
  %66 = call i32 @cdev_init(i32* %65, i32* @scom_fops)
  %67 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %68 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %67, i32 0, i32 1
  %69 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %70 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %69, i32 0, i32 0
  %71 = call i32 @cdev_device_add(i32* %68, %struct.TYPE_6__* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %59
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %78 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %77, i32 0, i32 0
  %79 = call i32 @dev_name(%struct.TYPE_6__* %78)
  %80 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %79)
  br label %82

81:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %93

82:                                               ; preds = %74
  %83 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %84 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @fsi_free_minor(i32 %86)
  br label %88

88:                                               ; preds = %82, %58
  %89 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %90 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %89, i32 0, i32 0
  %91 = call i32 @put_device(%struct.TYPE_6__* %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %81, %27, %14
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.fsi_device* @to_fsi_dev(%struct.device*) #1

declare dso_local %struct.scom_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.scom_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.scom_device*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @fsi_get_new_minor(%struct.fsi_device*, i32, i32*, i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_device_add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @fsi_free_minor(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
