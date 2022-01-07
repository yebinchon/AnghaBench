; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ambakmi.c_amba_kmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ambakmi.c_amba_kmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.amba_id = type { i32 }
%struct.amba_kmi_port = type { i32, %struct.amba_kmi_port*, i32, i32, %struct.TYPE_5__, %struct.amba_kmi_port*, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.serio = type { i32, %struct.serio*, i32, i32, %struct.TYPE_5__, %struct.serio*, i32, i32, i32, i32, i32, %struct.TYPE_4__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SERIO_8042 = common dso_local global i32 0, align 4
@amba_kmi_write = common dso_local global i32 0, align 4
@amba_kmi_open = common dso_local global i32 0, align 4
@amba_kmi_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"KMIREFCLK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @amba_kmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amba_kmi_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca %struct.amba_kmi_port*, align 8
  %7 = alloca %struct.serio*, align 8
  %8 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %9 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %10 = call i32 @amba_request_regions(%struct.amba_device* %9, i32* null)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %134

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.serio* @kzalloc(i32 64, i32 %16)
  %18 = bitcast %struct.serio* %17 to %struct.amba_kmi_port*
  store %struct.amba_kmi_port* %18, %struct.amba_kmi_port** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.serio* @kzalloc(i32 64, i32 %19)
  store %struct.serio* %20, %struct.serio** %7, align 8
  %21 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %22 = icmp ne %struct.amba_kmi_port* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.serio*, %struct.serio** %7, align 8
  %25 = icmp ne %struct.serio* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %125

29:                                               ; preds = %23
  %30 = load i32, i32* @SERIO_8042, align 4
  %31 = load %struct.serio*, %struct.serio** %7, align 8
  %32 = getelementptr inbounds %struct.serio, %struct.serio* %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @amba_kmi_write, align 4
  %35 = load %struct.serio*, %struct.serio** %7, align 8
  %36 = getelementptr inbounds %struct.serio, %struct.serio* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @amba_kmi_open, align 4
  %38 = load %struct.serio*, %struct.serio** %7, align 8
  %39 = getelementptr inbounds %struct.serio, %struct.serio* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @amba_kmi_close, align 4
  %41 = load %struct.serio*, %struct.serio** %7, align 8
  %42 = getelementptr inbounds %struct.serio, %struct.serio* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load %struct.serio*, %struct.serio** %7, align 8
  %44 = getelementptr inbounds %struct.serio, %struct.serio* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %47 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %46, i32 0, i32 1
  %48 = call i32 @dev_name(i32* %47)
  %49 = call i32 @strlcpy(i32 %45, i32 %48, i32 4)
  %50 = load %struct.serio*, %struct.serio** %7, align 8
  %51 = getelementptr inbounds %struct.serio, %struct.serio* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %54 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %53, i32 0, i32 1
  %55 = call i32 @dev_name(i32* %54)
  %56 = call i32 @strlcpy(i32 %52, i32 %55, i32 4)
  %57 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %58 = bitcast %struct.amba_kmi_port* %57 to %struct.serio*
  %59 = load %struct.serio*, %struct.serio** %7, align 8
  %60 = getelementptr inbounds %struct.serio, %struct.serio* %59, i32 0, i32 5
  store %struct.serio* %58, %struct.serio** %60, align 8
  %61 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %62 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %61, i32 0, i32 1
  %63 = load %struct.serio*, %struct.serio** %7, align 8
  %64 = getelementptr inbounds %struct.serio, %struct.serio* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32* %62, i32** %65, align 8
  %66 = load %struct.serio*, %struct.serio** %7, align 8
  %67 = bitcast %struct.serio* %66 to %struct.amba_kmi_port*
  %68 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %69 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %68, i32 0, i32 1
  store %struct.amba_kmi_port* %67, %struct.amba_kmi_port** %69, align 8
  %70 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %71 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %75 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %74, i32 0, i32 2
  %76 = call i32 @resource_size(%struct.TYPE_6__* %75)
  %77 = call i32 @ioremap(i32 %73, i32 %76)
  %78 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %79 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %81 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %29
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %125

87:                                               ; preds = %29
  %88 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %89 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %88, i32 0, i32 1
  %90 = call i32 @clk_get(i32* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %92 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %94 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @IS_ERR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %100 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PTR_ERR(i32 %101)
  store i32 %102, i32* %8, align 4
  br label %120

103:                                              ; preds = %87
  %104 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %105 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %110 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %112 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %113 = bitcast %struct.amba_kmi_port* %112 to %struct.serio*
  %114 = call i32 @amba_set_drvdata(%struct.amba_device* %111, %struct.serio* %113)
  %115 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %116 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %115, i32 0, i32 1
  %117 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %116, align 8
  %118 = bitcast %struct.amba_kmi_port* %117 to %struct.serio*
  %119 = call i32 @serio_register_port(%struct.serio* %118)
  store i32 0, i32* %3, align 4
  br label %134

120:                                              ; preds = %98
  %121 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %122 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @iounmap(i32 %123)
  br label %125

125:                                              ; preds = %120, %84, %26
  %126 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %6, align 8
  %127 = bitcast %struct.amba_kmi_port* %126 to %struct.serio*
  %128 = call i32 @kfree(%struct.serio* %127)
  %129 = load %struct.serio*, %struct.serio** %7, align 8
  %130 = call i32 @kfree(%struct.serio* %129)
  %131 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %132 = call i32 @amba_release_regions(%struct.amba_device* %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %125, %103, %13
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @amba_request_regions(%struct.amba_device*, i32*) #1

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_6__*) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.serio*) #1

declare dso_local i32 @serio_register_port(%struct.serio*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.serio*) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
