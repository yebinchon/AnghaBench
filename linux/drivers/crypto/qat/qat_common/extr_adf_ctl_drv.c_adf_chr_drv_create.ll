; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_ctl_drv.c_adf_chr_drv_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_ctl_drv.c_adf_chr_drv_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.device*, i32, i32 }
%struct.device = type { i32 }

@DEVICE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"QAT: unable to allocate chrdev region\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adf_ctl_drv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"QAT: class_create failed for adf_ctl\0A\00", align 1
@adf_ctl_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"QAT: cdev add failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"QAT: failed to create device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @adf_chr_drv_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_chr_drv_create() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = load i32, i32* @DEVICE_NAME, align 4
  %5 = call i64 @alloc_chrdev_region(i32* %2, i32 0, i32 1, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EFAULT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %51

11:                                               ; preds = %0
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = load i32, i32* @DEVICE_NAME, align 4
  %14 = call %struct.device* @class_create(i32 %12, i32 %13)
  store %struct.device* %14, %struct.device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @adf_ctl_drv, i32 0, i32 0), align 8
  %15 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @adf_ctl_drv, i32 0, i32 0), align 8
  %16 = call i64 @IS_ERR(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %46

20:                                               ; preds = %11
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @MAJOR(i32 %21)
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @adf_ctl_drv, i32 0, i32 2), align 4
  %23 = call i32 @cdev_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @adf_ctl_drv, i32 0, i32 1), i32* @adf_ctl_ops)
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @cdev_add(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @adf_ctl_drv, i32 0, i32 1), i32 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %43

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @adf_ctl_drv, i32 0, i32 0), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @adf_ctl_drv, i32 0, i32 2), align 4
  %32 = call i32 @MKDEV(i32 %31, i32 0)
  %33 = load i32, i32* @DEVICE_NAME, align 4
  %34 = call %struct.device* @device_create(%struct.device* %30, i32* null, i32 %32, i32* null, i32 %33)
  store %struct.device* %34, %struct.device** %3, align 8
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i64 @IS_ERR(%struct.device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %41

40:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %51

41:                                               ; preds = %38
  %42 = call i32 @cdev_del(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @adf_ctl_drv, i32 0, i32 1))
  br label %43

43:                                               ; preds = %41, %27
  %44 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @adf_ctl_drv, i32 0, i32 0), align 8
  %45 = call i32 @class_destroy(%struct.device* %44)
  br label %46

46:                                               ; preds = %43, %18
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @unregister_chrdev_region(i32 %47, i32 1)
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %46, %40, %7
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i64 @alloc_chrdev_region(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.device* @class_create(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i64 @cdev_add(i32*, i32, i32) #1

declare dso_local %struct.device* @device_create(%struct.device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @class_destroy(%struct.device*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
