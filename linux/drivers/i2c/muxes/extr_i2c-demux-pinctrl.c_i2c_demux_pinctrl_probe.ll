; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_demux_pinctrl_priv = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.device_node* }
%struct.property = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"i2c-parent\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Need at least two I2C masters to switch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@chan = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"i2c-bus-name\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"can't get phandle for parent %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@dev_attr_available_masters = common dso_local global i32 0, align 4
@dev_attr_current_master = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_demux_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_demux_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.i2c_demux_pinctrl_priv*, align 8
  %6 = alloca %struct.property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i32 @of_count_phandle_with_args(%struct.device_node* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %193

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %30 = load i32, i32* @chan, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @struct_size(%struct.i2c_demux_pinctrl_priv* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.i2c_demux_pinctrl_priv* @devm_kzalloc(%struct.TYPE_10__* %28, i32 %32, i32 %33)
  store %struct.i2c_demux_pinctrl_priv* %34, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.property* @devm_kcalloc(%struct.TYPE_10__* %36, i32 %37, i32 24, i32 %38)
  store %struct.property* %39, %struct.property** %6, align 8
  %40 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %41 = icmp ne %struct.i2c_demux_pinctrl_priv* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load %struct.property*, %struct.property** %6, align 8
  %44 = icmp ne %struct.property* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %26
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %193

48:                                               ; preds = %42
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %50, i32 0, i32 3
  %52 = call i32 @of_property_read_string(%struct.device_node* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %2, align 4
  br label %193

57:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %128, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %58
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %64)
  store %struct.device_node* %65, %struct.device_node** %11, align 8
  %66 = load %struct.device_node*, %struct.device_node** %11, align 8
  %67 = icmp ne %struct.device_node* %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %165

75:                                               ; preds = %62
  %76 = load %struct.device_node*, %struct.device_node** %11, align 8
  %77 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store %struct.device_node* %76, %struct.device_node** %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @devm_kstrdup(%struct.TYPE_10__* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load %struct.property*, %struct.property** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.property, %struct.property* %88, i64 %90
  %92 = getelementptr inbounds %struct.property, %struct.property* %91, i32 0, i32 2
  store i8* %87, i8** %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @devm_kstrdup(%struct.TYPE_10__* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load %struct.property*, %struct.property** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.property, %struct.property* %97, i64 %99
  %101 = getelementptr inbounds %struct.property, %struct.property* %100, i32 0, i32 1
  store i8* %96, i8** %101, align 8
  %102 = load %struct.property*, %struct.property** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.property, %struct.property* %102, i64 %104
  %106 = getelementptr inbounds %struct.property, %struct.property* %105, i32 0, i32 0
  store i32 3, i32* %106, align 8
  %107 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %108 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = call i32 @of_changeset_init(i32* %113)
  %115 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %116 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.device_node*, %struct.device_node** %11, align 8
  %123 = load %struct.property*, %struct.property** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.property, %struct.property* %123, i64 %125
  %127 = call i32 @of_changeset_update_property(i32* %121, %struct.device_node* %122, %struct.property* %126)
  br label %128

128:                                              ; preds = %75
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %58

131:                                              ; preds = %58
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %134 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %138 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %137, i32 0, i32 2
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %138, align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %141 = call i32 @platform_set_drvdata(%struct.platform_device* %139, %struct.i2c_demux_pinctrl_priv* %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_no_callbacks(%struct.TYPE_10__* %143)
  %145 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %146 = call i32 @i2c_demux_activate_master(%struct.i2c_demux_pinctrl_priv* %145, i32 0)
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @device_create_file(%struct.TYPE_10__* %148, i32* @dev_attr_available_masters)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %131
  br label %165

153:                                              ; preds = %131
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @device_create_file(%struct.TYPE_10__* %155, i32* @dev_attr_current_master)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %161

160:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %193

161:                                              ; preds = %159
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i32 @device_remove_file(%struct.TYPE_10__* %163, i32* @dev_attr_available_masters)
  br label %165

165:                                              ; preds = %161, %152, %68
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %188, %165
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %166
  %171 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %172 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %171, i32 0, i32 1
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load %struct.device_node*, %struct.device_node** %177, align 8
  %179 = call i32 @of_node_put(%struct.device_node* %178)
  %180 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %5, align 8
  %181 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %180, i32 0, i32 1
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = call i32 @of_changeset_destroy(i32* %186)
  br label %188

188:                                              ; preds = %170
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %166

191:                                              ; preds = %166
  %192 = load i32, i32* %10, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %191, %160, %55, %45, %20
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.i2c_demux_pinctrl_priv* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.i2c_demux_pinctrl_priv*, i32, i32) #1

declare dso_local %struct.property* @devm_kcalloc(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i8* @devm_kstrdup(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @of_changeset_init(i32*) #1

declare dso_local i32 @of_changeset_update_property(i32*, %struct.device_node*, %struct.property*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_demux_pinctrl_priv*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.TYPE_10__*) #1

declare dso_local i32 @i2c_demux_activate_master(%struct.i2c_demux_pinctrl_priv*, i32) #1

declare dso_local i32 @device_create_file(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_changeset_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
