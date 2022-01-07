; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.resource = type { i64, i64 }
%struct.vt8231_data = type { i8*, i32, i32, i32, i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@VT8231_EXTENT = common dso_local global i32 0, align 4
@vt8231_driver = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vt8231\00", align 1
@vt8231_group = common dso_local global i32 0, align 4
@VT8231_REG_UCH_CONFIG = common dso_local global i32 0, align 4
@vt8231_group_temps = common dso_local global i32* null, align 8
@vt8231_group_volts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vt8231_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8231_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.vt8231_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_IO, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load %struct.resource*, %struct.resource** %4, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @VT8231_EXTENT, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vt8231_driver, i32 0, i32 0, i32 0), align 4
  %18 = call i32 @devm_request_region(%struct.TYPE_9__* %12, i64 %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dev_err(%struct.TYPE_9__* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %190

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.vt8231_data* @devm_kzalloc(%struct.TYPE_9__* %34, i32 32, i32 %35)
  store %struct.vt8231_data* %36, %struct.vt8231_data** %5, align 8
  %37 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %38 = icmp ne %struct.vt8231_data* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %190

42:                                               ; preds = %32
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.vt8231_data* %44)
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %50 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %52 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %54 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %53, i32 0, i32 3
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %57 = call i32 @vt8231_init_device(%struct.vt8231_data* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = call i32 @sysfs_create_group(i32* %60, i32* @vt8231_group)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %42
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %190

66:                                               ; preds = %42
  %67 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %68 = load i32, i32* @VT8231_REG_UCH_CONFIG, align 4
  %69 = call i32 @vt8231_read_value(%struct.vt8231_data* %67, i32 %68)
  %70 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %71 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %98, %66
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** @vt8231_group_temps, align 8
  %75 = call i32 @ARRAY_SIZE(i32* %74)
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %80 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ISTEMP(i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32*, i32** @vt8231_group_temps, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @sysfs_create_group(i32* %87, i32* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %148

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %72

101:                                              ; preds = %72
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %128, %101
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** @vt8231_group_volts, align 8
  %105 = call i32 @ARRAY_SIZE(i32* %104)
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %110 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @ISVOLT(i32 %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %107
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32*, i32** @vt8231_group_volts, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @sysfs_create_group(i32* %117, i32* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %148

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %107
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %102

131:                                              ; preds = %102
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @hwmon_device_register(%struct.TYPE_9__* %133)
  %135 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %136 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %138 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @IS_ERR(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %144 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @PTR_ERR(i32 %145)
  store i32 %146, i32* %6, align 4
  br label %148

147:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %190

148:                                              ; preds = %142, %125, %95
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %163, %148
  %150 = load i32, i32* %7, align 4
  %151 = load i32*, i32** @vt8231_group_volts, align 8
  %152 = call i32 @ARRAY_SIZE(i32* %151)
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32*, i32** @vt8231_group_volts, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = call i32 @sysfs_remove_group(i32* %157, i32* %161)
  br label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %149

166:                                              ; preds = %149
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %181, %166
  %168 = load i32, i32* %7, align 4
  %169 = load i32*, i32** @vt8231_group_temps, align 8
  %170 = call i32 @ARRAY_SIZE(i32* %169)
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32*, i32** @vt8231_group_temps, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = call i32 @sysfs_remove_group(i32* %175, i32* %179)
  br label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %167

184:                                              ; preds = %167
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = call i32 @sysfs_remove_group(i32* %187, i32* @vt8231_group)
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %184, %147, %64, %39, %20
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.TYPE_9__*, i64, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i64, i64) #1

declare dso_local %struct.vt8231_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vt8231_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vt8231_init_device(%struct.vt8231_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @vt8231_read_value(%struct.vt8231_data*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @ISTEMP(i32, i32) #1

declare dso_local i64 @ISVOLT(i32, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
