; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.soc_device_data = type { i32 (%struct.device.0*)*, %struct.soc_button_info* }
%struct.device.0 = type opaque
%struct.soc_button_info = type { %struct.device }
%struct.soc_button_data = type { %struct.soc_button_info** }

@.str = private unnamed_addr constant [31 x i8] c"no GPIO attached, ignoring...\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUTTON_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @soc_button_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_button_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.soc_device_data*, align 8
  %6 = alloca %struct.soc_button_info*, align 8
  %7 = alloca %struct.soc_button_data*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.soc_device_data* @acpi_device_get_match_data(%struct.device* %13)
  store %struct.soc_device_data* %14, %struct.soc_device_data** %5, align 8
  %15 = load %struct.soc_device_data*, %struct.soc_device_data** %5, align 8
  %16 = icmp ne %struct.soc_device_data* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.soc_device_data*, %struct.soc_device_data** %5, align 8
  %19 = getelementptr inbounds %struct.soc_device_data, %struct.soc_device_data* %18, i32 0, i32 0
  %20 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %19, align 8
  %21 = icmp ne i32 (%struct.device.0*)* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.soc_device_data*, %struct.soc_device_data** %5, align 8
  %24 = getelementptr inbounds %struct.soc_device_data, %struct.soc_device_data* %23, i32 0, i32 0
  %25 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %24, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = bitcast %struct.device* %26 to %struct.device.0*
  %28 = call i32 %25(%struct.device.0* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %2, align 4
  br label %153

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %17, %1
  %35 = load %struct.soc_device_data*, %struct.soc_device_data** %5, align 8
  %36 = icmp ne %struct.soc_device_data* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.soc_device_data*, %struct.soc_device_data** %5, align 8
  %39 = getelementptr inbounds %struct.soc_device_data, %struct.soc_device_data* %38, i32 0, i32 1
  %40 = load %struct.soc_button_info*, %struct.soc_button_info** %39, align 8
  %41 = icmp ne %struct.soc_button_info* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.soc_device_data*, %struct.soc_device_data** %5, align 8
  %44 = getelementptr inbounds %struct.soc_device_data, %struct.soc_device_data* %43, i32 0, i32 1
  %45 = load %struct.soc_button_info*, %struct.soc_button_info** %44, align 8
  store %struct.soc_button_info* %45, %struct.soc_button_info** %6, align 8
  br label %56

46:                                               ; preds = %37, %34
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call %struct.soc_button_info* @soc_button_get_button_info(%struct.device* %47)
  store %struct.soc_button_info* %48, %struct.soc_button_info** %6, align 8
  %49 = load %struct.soc_button_info*, %struct.soc_button_info** %6, align 8
  %50 = call i64 @IS_ERR(%struct.soc_button_info* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.soc_button_info*, %struct.soc_button_info** %6, align 8
  %54 = call i32 @PTR_ERR(%struct.soc_button_info* %53)
  store i32 %54, i32* %2, align 4
  br label %153

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @gpiod_count(%struct.device* %57, i32* null)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %153

66:                                               ; preds = %56
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.soc_button_data* @devm_kzalloc(%struct.device* %67, i32 8, i32 %68)
  store %struct.soc_button_data* %69, %struct.soc_button_data** %7, align 8
  %70 = load %struct.soc_button_data*, %struct.soc_button_data** %7, align 8
  %71 = icmp ne %struct.soc_button_data* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %153

75:                                               ; preds = %66
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = bitcast %struct.platform_device* %76 to %struct.soc_button_info*
  %78 = load %struct.soc_button_data*, %struct.soc_button_data** %7, align 8
  %79 = call i32 @platform_set_drvdata(%struct.soc_button_info* %77, %struct.soc_button_data* %78)
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %120, %75
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @BUTTON_TYPES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %80
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = bitcast %struct.platform_device* %85 to %struct.soc_button_info*
  %87 = load %struct.soc_button_info*, %struct.soc_button_info** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call %struct.soc_button_info* @soc_button_device_create(%struct.soc_button_info* %86, %struct.soc_button_info* %87, i32 %90)
  %92 = bitcast %struct.soc_button_info* %91 to %struct.platform_device*
  store %struct.platform_device* %92, %struct.platform_device** %8, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %94 = bitcast %struct.platform_device* %93 to %struct.soc_button_info*
  %95 = call i64 @IS_ERR(%struct.soc_button_info* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %84
  %98 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %99 = bitcast %struct.platform_device* %98 to %struct.soc_button_info*
  %100 = call i32 @PTR_ERR(%struct.soc_button_info* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = bitcast %struct.platform_device* %106 to %struct.soc_button_info*
  %108 = call i32 @soc_button_remove(%struct.soc_button_info* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %2, align 4
  br label %153

110:                                              ; preds = %97
  br label %120

111:                                              ; preds = %84
  %112 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %113 = bitcast %struct.platform_device* %112 to %struct.soc_button_info*
  %114 = load %struct.soc_button_data*, %struct.soc_button_data** %7, align 8
  %115 = getelementptr inbounds %struct.soc_button_data, %struct.soc_button_data* %114, i32 0, i32 0
  %116 = load %struct.soc_button_info**, %struct.soc_button_info*** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.soc_button_info*, %struct.soc_button_info** %116, i64 %118
  store %struct.soc_button_info* %113, %struct.soc_button_info** %119, align 8
  br label %120

120:                                              ; preds = %111, %110
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %80

123:                                              ; preds = %80
  %124 = load %struct.soc_button_data*, %struct.soc_button_data** %7, align 8
  %125 = getelementptr inbounds %struct.soc_button_data, %struct.soc_button_data* %124, i32 0, i32 0
  %126 = load %struct.soc_button_info**, %struct.soc_button_info*** %125, align 8
  %127 = getelementptr inbounds %struct.soc_button_info*, %struct.soc_button_info** %126, i64 0
  %128 = load %struct.soc_button_info*, %struct.soc_button_info** %127, align 8
  %129 = icmp ne %struct.soc_button_info* %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %123
  %131 = load %struct.soc_button_data*, %struct.soc_button_data** %7, align 8
  %132 = getelementptr inbounds %struct.soc_button_data, %struct.soc_button_data* %131, i32 0, i32 0
  %133 = load %struct.soc_button_info**, %struct.soc_button_info*** %132, align 8
  %134 = getelementptr inbounds %struct.soc_button_info*, %struct.soc_button_info** %133, i64 1
  %135 = load %struct.soc_button_info*, %struct.soc_button_info** %134, align 8
  %136 = icmp ne %struct.soc_button_info* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %153

140:                                              ; preds = %130, %123
  %141 = load %struct.soc_device_data*, %struct.soc_device_data** %5, align 8
  %142 = icmp ne %struct.soc_device_data* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.soc_device_data*, %struct.soc_device_data** %5, align 8
  %145 = getelementptr inbounds %struct.soc_device_data, %struct.soc_device_data* %144, i32 0, i32 1
  %146 = load %struct.soc_button_info*, %struct.soc_button_info** %145, align 8
  %147 = icmp ne %struct.soc_button_info* %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %143, %140
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load %struct.soc_button_info*, %struct.soc_button_info** %6, align 8
  %151 = call i32 @devm_kfree(%struct.device* %149, %struct.soc_button_info* %150)
  br label %152

152:                                              ; preds = %148, %143
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %137, %105, %72, %61, %52, %31
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.soc_device_data* @acpi_device_get_match_data(%struct.device*) #1

declare dso_local %struct.soc_button_info* @soc_button_get_button_info(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.soc_button_info*) #1

declare dso_local i32 @PTR_ERR(%struct.soc_button_info*) #1

declare dso_local i32 @gpiod_count(%struct.device*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.soc_button_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.soc_button_info*, %struct.soc_button_data*) #1

declare dso_local %struct.soc_button_info* @soc_button_device_create(%struct.soc_button_info*, %struct.soc_button_info*, i32) #1

declare dso_local i32 @soc_button_remove(%struct.soc_button_info*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.soc_button_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
