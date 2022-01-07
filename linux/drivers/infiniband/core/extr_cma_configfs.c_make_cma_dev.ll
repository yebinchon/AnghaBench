; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_make_cma_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_make_cma_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.cma_device = type { i32 }
%struct.cma_dev_group = type { %struct.config_group, %struct.config_group, i32 }

@ENODEV = common dso_local global i32 0, align 4
@filter_by_name = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@cma_ports_group_type = common dso_local global i32 0, align 4
@cma_device_group_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @make_cma_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @make_cma_dev(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cma_device*, align 8
  %8 = alloca %struct.cma_dev_group*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @filter_by_name, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.cma_device* @cma_enum_devices_by_ibdev(i32 %11, i8* %12)
  store %struct.cma_device* %13, %struct.cma_device** %7, align 8
  store %struct.cma_dev_group* null, %struct.cma_dev_group** %8, align 8
  %14 = load %struct.cma_device*, %struct.cma_device** %7, align 8
  %15 = icmp ne %struct.cma_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %54

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.cma_dev_group* @kzalloc(i32 12, i32 %18)
  store %struct.cma_dev_group* %19, %struct.cma_dev_group** %8, align 8
  %20 = load %struct.cma_dev_group*, %struct.cma_dev_group** %8, align 8
  %21 = icmp ne %struct.cma_dev_group* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %54

25:                                               ; preds = %17
  %26 = load %struct.cma_dev_group*, %struct.cma_dev_group** %8, align 8
  %27 = getelementptr inbounds %struct.cma_dev_group, %struct.cma_dev_group* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlcpy(i32 %28, i8* %29, i32 4)
  %31 = load %struct.cma_dev_group*, %struct.cma_dev_group** %8, align 8
  %32 = getelementptr inbounds %struct.cma_dev_group, %struct.cma_dev_group* %31, i32 0, i32 1
  %33 = call i32 @config_group_init_type_name(%struct.config_group* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @cma_ports_group_type)
  %34 = load %struct.cma_dev_group*, %struct.cma_dev_group** %8, align 8
  %35 = load %struct.cma_device*, %struct.cma_device** %7, align 8
  %36 = call i32 @make_cma_ports(%struct.cma_dev_group* %34, %struct.cma_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %54

40:                                               ; preds = %25
  %41 = load %struct.cma_dev_group*, %struct.cma_dev_group** %8, align 8
  %42 = getelementptr inbounds %struct.cma_dev_group, %struct.cma_dev_group* %41, i32 0, i32 0
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @config_group_init_type_name(%struct.config_group* %42, i8* %43, i32* @cma_device_group_type)
  %45 = load %struct.cma_dev_group*, %struct.cma_dev_group** %8, align 8
  %46 = getelementptr inbounds %struct.cma_dev_group, %struct.cma_dev_group* %45, i32 0, i32 1
  %47 = load %struct.cma_dev_group*, %struct.cma_dev_group** %8, align 8
  %48 = getelementptr inbounds %struct.cma_dev_group, %struct.cma_dev_group* %47, i32 0, i32 0
  %49 = call i32 @configfs_add_default_group(%struct.config_group* %46, %struct.config_group* %48)
  %50 = load %struct.cma_device*, %struct.cma_device** %7, align 8
  %51 = call i32 @cma_deref_dev(%struct.cma_device* %50)
  %52 = load %struct.cma_dev_group*, %struct.cma_dev_group** %8, align 8
  %53 = getelementptr inbounds %struct.cma_dev_group, %struct.cma_dev_group* %52, i32 0, i32 0
  store %struct.config_group* %53, %struct.config_group** %3, align 8
  br label %65

54:                                               ; preds = %39, %22, %16
  %55 = load %struct.cma_device*, %struct.cma_device** %7, align 8
  %56 = icmp ne %struct.cma_device* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.cma_device*, %struct.cma_device** %7, align 8
  %59 = call i32 @cma_deref_dev(%struct.cma_device* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.cma_dev_group*, %struct.cma_dev_group** %8, align 8
  %62 = call i32 @kfree(%struct.cma_dev_group* %61)
  %63 = load i32, i32* %6, align 4
  %64 = call %struct.config_group* @ERR_PTR(i32 %63)
  store %struct.config_group* %64, %struct.config_group** %3, align 8
  br label %65

65:                                               ; preds = %60, %40
  %66 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %66
}

declare dso_local %struct.cma_device* @cma_enum_devices_by_ibdev(i32, i8*) #1

declare dso_local %struct.cma_dev_group* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @make_cma_ports(%struct.cma_dev_group*, %struct.cma_device*) #1

declare dso_local i32 @configfs_add_default_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i32 @cma_deref_dev(%struct.cma_device*) #1

declare dso_local i32 @kfree(%struct.cma_dev_group*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
