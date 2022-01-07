; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_device.c_dev_dax_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_device.c_dev_dax_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.dev_dax = type { i32, %struct.TYPE_10__, %struct.TYPE_6__*, %struct.dax_device* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { %struct.resource }
%struct.resource = type { i32 }
%struct.dax_device = type { i32 }
%struct.inode = type { %struct.dev_dax* }
%struct.cdev = type { i32, %struct.TYPE_10__, %struct.TYPE_6__*, %struct.dax_device* }

@.str = private unnamed_addr constant [30 x i8] c"could not reserve region %pR\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MEMORY_DEVICE_DEVDAX = common dso_local global i32 0, align 4
@dax_fops = common dso_local global i32 0, align 4
@dev_dax_cdev_del = common dso_local global i32 0, align 4
@dev_dax_kill = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_dax_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dev_dax*, align 8
  %5 = alloca %struct.dax_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.cdev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.dev_dax* @to_dev_dax(%struct.device* %11)
  store %struct.dev_dax* %12, %struct.dev_dax** %4, align 8
  %13 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %14 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %13, i32 0, i32 3
  %15 = load %struct.dax_device*, %struct.dax_device** %14, align 8
  store %struct.dax_device* %15, %struct.dax_device** %5, align 8
  %16 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %17 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.resource* %19, %struct.resource** %6, align 8
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.resource*, %struct.resource** %6, align 8
  %25 = call i32 @resource_size(%struct.resource* %24)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @dev_name(%struct.device* %26)
  %28 = call i32 @devm_request_mem_region(%struct.device* %20, i32 %23, i32 %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.resource* %32)
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %116

36:                                               ; preds = %1
  %37 = load i32, i32* @MEMORY_DEVICE_DEVDAX, align 4
  %38 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %39 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %43 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %42, i32 0, i32 1
  %44 = call i8* @devm_memremap_pages(%struct.device* %41, %struct.TYPE_10__* %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %116

51:                                               ; preds = %36
  %52 = load %struct.dax_device*, %struct.dax_device** %5, align 8
  %53 = call %struct.inode* @dax_inode(%struct.dax_device* %52)
  store %struct.inode* %53, %struct.inode** %7, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load %struct.dev_dax*, %struct.dev_dax** %55, align 8
  %57 = bitcast %struct.dev_dax* %56 to %struct.cdev*
  store %struct.cdev* %57, %struct.cdev** %8, align 8
  %58 = load %struct.cdev*, %struct.cdev** %8, align 8
  %59 = bitcast %struct.cdev* %58 to %struct.dev_dax*
  %60 = call i32 @cdev_init(%struct.dev_dax* %59, i32* @dax_fops)
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %51
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cdev*, %struct.cdev** %8, align 8
  %74 = getelementptr inbounds %struct.cdev, %struct.cdev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %83

75:                                               ; preds = %51
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cdev*, %struct.cdev** %8, align 8
  %82 = getelementptr inbounds %struct.cdev, %struct.cdev* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %75, %65
  %84 = load %struct.cdev*, %struct.cdev** %8, align 8
  %85 = bitcast %struct.cdev* %84 to %struct.dev_dax*
  %86 = load %struct.device*, %struct.device** %3, align 8
  %87 = getelementptr inbounds %struct.device, %struct.device* %86, i32 0, i32 1
  %88 = call i32 @cdev_set_parent(%struct.dev_dax* %85, i32* %87)
  %89 = load %struct.cdev*, %struct.cdev** %8, align 8
  %90 = bitcast %struct.cdev* %89 to %struct.dev_dax*
  %91 = load %struct.device*, %struct.device** %3, align 8
  %92 = getelementptr inbounds %struct.device, %struct.device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @cdev_add(%struct.dev_dax* %90, i32 %93, i32 1)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %2, align 4
  br label %116

99:                                               ; preds = %83
  %100 = load %struct.device*, %struct.device** %3, align 8
  %101 = load i32, i32* @dev_dax_cdev_del, align 4
  %102 = load %struct.cdev*, %struct.cdev** %8, align 8
  %103 = bitcast %struct.cdev* %102 to %struct.dev_dax*
  %104 = call i32 @devm_add_action_or_reset(%struct.device* %100, i32 %101, %struct.dev_dax* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %2, align 4
  br label %116

109:                                              ; preds = %99
  %110 = load %struct.dax_device*, %struct.dax_device** %5, align 8
  %111 = call i32 @run_dax(%struct.dax_device* %110)
  %112 = load %struct.device*, %struct.device** %3, align 8
  %113 = load i32, i32* @dev_dax_kill, align 4
  %114 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %115 = call i32 @devm_add_action_or_reset(%struct.device* %112, i32 %113, %struct.dev_dax* %114)
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %109, %107, %97, %48, %30
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.dev_dax* @to_dev_dax(%struct.device*) #1

declare dso_local i32 @devm_request_mem_region(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, %struct.resource*) #1

declare dso_local i8* @devm_memremap_pages(%struct.device*, %struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.inode* @dax_inode(%struct.dax_device*) #1

declare dso_local i32 @cdev_init(%struct.dev_dax*, i32*) #1

declare dso_local i32 @cdev_set_parent(%struct.dev_dax*, i32*) #1

declare dso_local i32 @cdev_add(%struct.dev_dax*, i32, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.dev_dax*) #1

declare dso_local i32 @run_dax(%struct.dax_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
