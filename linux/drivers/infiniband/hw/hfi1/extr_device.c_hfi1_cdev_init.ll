; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_device.c_hfi1_cdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_device.c_hfi1_cdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 }
%struct.cdev = type { i32, i32 }
%struct.device = type { i32 }
%struct.kobject = type { i32 }

@hfi1_dev = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not add cdev for minor %d, %s (err %d)\0A\00", align 1
@user_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Could not create device for minor %d, %s (err %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_cdev_init(i32 %0, i8* %1, %struct.file_operations* %2, %struct.cdev* %3, %struct.device** %4, i32 %5, %struct.kobject* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca %struct.cdev*, align 8
  %12 = alloca %struct.device**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.kobject*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store %struct.file_operations* %2, %struct.file_operations** %10, align 8
  store %struct.cdev* %3, %struct.cdev** %11, align 8
  store %struct.device** %4, %struct.device*** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.kobject* %6, %struct.kobject** %14, align 8
  %18 = load i32, i32* @hfi1_dev, align 4
  %19 = call i32 @MAJOR(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @MKDEV(i32 %19, i32 %20)
  store i32 %21, i32* %15, align 4
  store %struct.device* null, %struct.device** %16, align 8
  %22 = load %struct.cdev*, %struct.cdev** %11, align 8
  %23 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %24 = call i32 @cdev_init(%struct.cdev* %22, %struct.file_operations* %23)
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = load %struct.cdev*, %struct.cdev** %11, align 8
  %27 = getelementptr inbounds %struct.cdev, %struct.cdev* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cdev*, %struct.cdev** %11, align 8
  %29 = load %struct.kobject*, %struct.kobject** %14, align 8
  %30 = call i32 @cdev_set_parent(%struct.cdev* %28, %struct.kobject* %29)
  %31 = load %struct.cdev*, %struct.cdev** %11, align 8
  %32 = getelementptr inbounds %struct.cdev, %struct.cdev* %31, i32 0, i32 0
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @kobject_set_name(i32* %32, i8* %33)
  %35 = load %struct.cdev*, %struct.cdev** %11, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @cdev_add(%struct.cdev* %35, i32 %36, i32 1)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %7
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %42, i32 %44)
  br label %74

46:                                               ; preds = %7
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @user_class, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call %struct.device* @device_create(i32 %50, i32* null, i32 %51, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store %struct.device* %53, %struct.device** %16, align 8
  br label %59

54:                                               ; preds = %46
  %55 = load i32, i32* @class, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call %struct.device* @device_create(i32 %55, i32* null, i32 %56, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  store %struct.device* %58, %struct.device** %16, align 8
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.device*, %struct.device** %16, align 8
  %61 = call i64 @IS_ERR(%struct.device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.device*, %struct.device** %16, align 8
  %65 = call i32 @PTR_ERR(%struct.device* %64)
  store i32 %65, i32* %17, align 4
  store %struct.device* null, %struct.device** %16, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %66, i8* %67, i32 %69)
  %71 = load %struct.cdev*, %struct.cdev** %11, align 8
  %72 = call i32 @cdev_del(%struct.cdev* %71)
  br label %73

73:                                               ; preds = %63, %59
  br label %74

74:                                               ; preds = %73, %40
  %75 = load %struct.device*, %struct.device** %16, align 8
  %76 = load %struct.device**, %struct.device*** %12, align 8
  store %struct.device* %75, %struct.device** %76, align 8
  %77 = load i32, i32* %17, align 4
  ret i32 %77
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @cdev_init(%struct.cdev*, %struct.file_operations*) #1

declare dso_local i32 @cdev_set_parent(%struct.cdev*, %struct.kobject*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*) #1

declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i8*, i32) #1

declare dso_local %struct.device* @device_create(i32, i32*, i32, i32*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @cdev_del(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
