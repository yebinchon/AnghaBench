; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_bus.c___devm_create_dev_dax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_bus.c___devm_create_dev_dax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_dax = type { i32, %struct.dax_region*, %struct.dax_device*, %struct.device, i32 }
%struct.dax_device = type { i32 }
%struct.device = type { i32, i32, %struct.device*, i32, i32*, i32 }
%struct.dax_region = type { %struct.device*, i32, i32, i32 }
%struct.dev_pagemap = type { i32 }
%struct.inode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DAXDEV_F_SYNC = common dso_local global i32 0, align 4
@DEV_DAX_BUS = common dso_local global i32 0, align 4
@dax_bus_type = common dso_local global i32 0, align 4
@dax_class = common dso_local global i32 0, align 4
@dax_attribute_groups = common dso_local global i32 0, align 4
@dev_dax_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dax%d.%d\00", align 1
@unregister_dev_dax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dev_dax* @__devm_create_dev_dax(%struct.dax_region* %0, i32 %1, %struct.dev_pagemap* %2, i32 %3) #0 {
  %5 = alloca %struct.dev_dax*, align 8
  %6 = alloca %struct.dax_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_pagemap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.dax_device*, align 8
  %12 = alloca %struct.dev_dax*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  store %struct.dax_region* %0, %struct.dax_region** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dev_pagemap* %2, %struct.dev_pagemap** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dax_region*, %struct.dax_region** %6, align 8
  %17 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.dev_dax* @ERR_PTR(i32 %25)
  store %struct.dev_dax* %26, %struct.dev_dax** %5, align 8
  br label %131

27:                                               ; preds = %4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.dev_dax* @kzalloc(i32 72, i32 %28)
  store %struct.dev_dax* %29, %struct.dev_dax** %12, align 8
  %30 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  %31 = icmp ne %struct.dev_dax* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.dev_dax* @ERR_PTR(i32 %34)
  store %struct.dev_dax* %35, %struct.dev_dax** %5, align 8
  br label %131

36:                                               ; preds = %27
  %37 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  %38 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %37, i32 0, i32 4
  %39 = load %struct.dev_pagemap*, %struct.dev_pagemap** %8, align 8
  %40 = call i32 @memcpy(i32* %38, %struct.dev_pagemap* %39, i32 4)
  %41 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  %42 = load i32, i32* @DAXDEV_F_SYNC, align 4
  %43 = call %struct.dax_device* @alloc_dax(%struct.dev_dax* %41, i32* null, i32* null, i32 %42)
  store %struct.dax_device* %43, %struct.dax_device** %11, align 8
  %44 = load %struct.dax_device*, %struct.dax_device** %11, align 8
  %45 = icmp ne %struct.dax_device* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %126

47:                                               ; preds = %36
  %48 = load %struct.dax_device*, %struct.dax_device** %11, align 8
  %49 = call i32 @kill_dax(%struct.dax_device* %48)
  %50 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  %51 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %50, i32 0, i32 3
  store %struct.device* %51, %struct.device** %14, align 8
  %52 = load %struct.device*, %struct.device** %14, align 8
  %53 = call i32 @device_initialize(%struct.device* %52)
  %54 = load %struct.dax_device*, %struct.dax_device** %11, align 8
  %55 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  %56 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %55, i32 0, i32 2
  store %struct.dax_device* %54, %struct.dax_device** %56, align 8
  %57 = load %struct.dax_region*, %struct.dax_region** %6, align 8
  %58 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  %59 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %58, i32 0, i32 1
  store %struct.dax_region* %57, %struct.dax_region** %59, align 8
  %60 = load %struct.dax_region*, %struct.dax_region** %6, align 8
  %61 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  %64 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.dax_region*, %struct.dax_region** %6, align 8
  %66 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %65, i32 0, i32 2
  %67 = call i32 @kref_get(i32* %66)
  %68 = load %struct.dax_device*, %struct.dax_device** %11, align 8
  %69 = call %struct.inode* @dax_inode(%struct.dax_device* %68)
  store %struct.inode* %69, %struct.inode** %13, align 8
  %70 = load %struct.inode*, %struct.inode** %13, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.device*, %struct.device** %14, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @DEV_DAX_BUS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %47
  %79 = load %struct.device*, %struct.device** %14, align 8
  %80 = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 4
  store i32* @dax_bus_type, i32** %80, align 8
  br label %85

81:                                               ; preds = %47
  %82 = load i32, i32* @dax_class, align 4
  %83 = load %struct.device*, %struct.device** %14, align 8
  %84 = getelementptr inbounds %struct.device, %struct.device* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.device*, %struct.device** %10, align 8
  %87 = load %struct.device*, %struct.device** %14, align 8
  %88 = getelementptr inbounds %struct.device, %struct.device* %87, i32 0, i32 2
  store %struct.device* %86, %struct.device** %88, align 8
  %89 = load i32, i32* @dax_attribute_groups, align 4
  %90 = load %struct.device*, %struct.device** %14, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @dev_dax_release, align 4
  %93 = load %struct.device*, %struct.device** %14, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.device*, %struct.device** %14, align 8
  %96 = load %struct.dax_region*, %struct.dax_region** %6, align 8
  %97 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @dev_set_name(%struct.device* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.device*, %struct.device** %14, align 8
  %102 = call i32 @device_add(%struct.device* %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %85
  %106 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  %107 = call i32 @kill_dev_dax(%struct.dev_dax* %106)
  %108 = load %struct.device*, %struct.device** %14, align 8
  %109 = call i32 @put_device(%struct.device* %108)
  %110 = load i32, i32* %15, align 4
  %111 = call %struct.dev_dax* @ERR_PTR(i32 %110)
  store %struct.dev_dax* %111, %struct.dev_dax** %5, align 8
  br label %131

112:                                              ; preds = %85
  %113 = load %struct.dax_region*, %struct.dax_region** %6, align 8
  %114 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %113, i32 0, i32 0
  %115 = load %struct.device*, %struct.device** %114, align 8
  %116 = load i32, i32* @unregister_dev_dax, align 4
  %117 = load %struct.device*, %struct.device** %14, align 8
  %118 = call i32 @devm_add_action_or_reset(%struct.device* %115, i32 %116, %struct.device* %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %15, align 4
  %123 = call %struct.dev_dax* @ERR_PTR(i32 %122)
  store %struct.dev_dax* %123, %struct.dev_dax** %5, align 8
  br label %131

124:                                              ; preds = %112
  %125 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  store %struct.dev_dax* %125, %struct.dev_dax** %5, align 8
  br label %131

126:                                              ; preds = %46
  %127 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  %128 = call i32 @kfree(%struct.dev_dax* %127)
  %129 = load i32, i32* %15, align 4
  %130 = call %struct.dev_dax* @ERR_PTR(i32 %129)
  store %struct.dev_dax* %130, %struct.dev_dax** %5, align 8
  br label %131

131:                                              ; preds = %126, %124, %121, %105, %32, %23
  %132 = load %struct.dev_dax*, %struct.dev_dax** %5, align 8
  ret %struct.dev_dax* %132
}

declare dso_local %struct.dev_dax* @ERR_PTR(i32) #1

declare dso_local %struct.dev_dax* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dev_pagemap*, i32) #1

declare dso_local %struct.dax_device* @alloc_dax(%struct.dev_dax*, i32*, i32*, i32) #1

declare dso_local i32 @kill_dax(%struct.dax_device*) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.inode* @dax_inode(%struct.dax_device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @kill_dev_dax(%struct.dev_dax*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.device*) #1

declare dso_local i32 @kfree(%struct.dev_dax*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
