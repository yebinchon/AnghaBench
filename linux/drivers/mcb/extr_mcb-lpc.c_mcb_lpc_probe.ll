; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-lpc.c_mcb_lpc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-lpc.c_mcb_lpc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.priv = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No Memory resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to request IO memory\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Cannot ioremap\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Found %d cells\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcb_lpc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcb_lpc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.priv* @devm_kzalloc(i32* %8, i32 16, i32 %9)
  store %struct.priv* %10, %struct.priv** %5, align 8
  %11 = load %struct.priv*, %struct.priv** %5, align 8
  %12 = icmp ne %struct.priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %128

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.TYPE_3__* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  %20 = load %struct.priv*, %struct.priv** %5, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 2
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %21, align 8
  %22 = load %struct.priv*, %struct.priv** %5, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %128

32:                                               ; preds = %16
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.priv*, %struct.priv** %5, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.priv*, %struct.priv** %5, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 @resource_size(%struct.TYPE_3__* %42)
  %44 = load i32, i32* @KBUILD_MODNAME, align 4
  %45 = call %struct.resource* @devm_request_mem_region(i32* %34, i32 %39, i32 %43, i32 %44)
  store %struct.resource* %45, %struct.resource** %4, align 8
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = icmp ne %struct.resource* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %32
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %128

54:                                               ; preds = %32
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.priv*, %struct.priv** %5, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.priv*, %struct.priv** %5, align 8
  %63 = getelementptr inbounds %struct.priv, %struct.priv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @resource_size(%struct.TYPE_3__* %64)
  %66 = call i32 @devm_ioremap(i32* %56, i32 %61, i32 %65)
  %67 = load %struct.priv*, %struct.priv** %5, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.priv*, %struct.priv** %5, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %54
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %128

79:                                               ; preds = %54
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load %struct.priv*, %struct.priv** %5, align 8
  %82 = call i32 @platform_set_drvdata(%struct.platform_device* %80, %struct.priv* %81)
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @mcb_alloc_bus(i32* %84)
  %86 = load %struct.priv*, %struct.priv** %5, align 8
  %87 = getelementptr inbounds %struct.priv, %struct.priv* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.priv*, %struct.priv** %5, align 8
  %89 = getelementptr inbounds %struct.priv, %struct.priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @IS_ERR(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %79
  %94 = load %struct.priv*, %struct.priv** %5, align 8
  %95 = getelementptr inbounds %struct.priv, %struct.priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @PTR_ERR(i32 %96)
  store i32 %97, i32* %2, align 4
  br label %128

98:                                               ; preds = %79
  %99 = load %struct.priv*, %struct.priv** %5, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.priv*, %struct.priv** %5, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.priv*, %struct.priv** %5, align 8
  %108 = getelementptr inbounds %struct.priv, %struct.priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @chameleon_parse_cells(i32 %101, i32 %106, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %98
  %114 = load %struct.priv*, %struct.priv** %5, align 8
  %115 = getelementptr inbounds %struct.priv, %struct.priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @mcb_release_bus(i32 %116)
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %128

119:                                              ; preds = %98
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @dev_dbg(i32* %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load %struct.priv*, %struct.priv** %5, align 8
  %125 = getelementptr inbounds %struct.priv, %struct.priv* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @mcb_bus_add_devices(i32 %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %119, %113, %93, %73, %48, %26, %13
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.resource* @devm_request_mem_region(i32*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.priv*) #1

declare dso_local i32 @mcb_alloc_bus(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @chameleon_parse_cells(i32, i32, i32) #1

declare dso_local i32 @mcb_release_bus(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mcb_bus_add_devices(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
