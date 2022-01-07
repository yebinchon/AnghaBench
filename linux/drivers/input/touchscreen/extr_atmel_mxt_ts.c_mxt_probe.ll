; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mxt_data = type { i64, i32, i32, i32, i32, i32, %struct.i2c_client*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"i2c-%u-%04x/input0\00", align 1
@chromebook_T9_suspend_dmi = common dso_local global i32 0, align 4
@MXT_SUSPEND_T9_CTRL = common dso_local global i32 0, align 4
@MXT_SUSPEND_DEEP_SLEEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get reset gpio: %d\0A\00", align 1
@mxt_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@MXT_RESET_GPIO_TIME = common dso_local global i32 0, align 4
@MXT_RESET_INVALID_CHG = common dso_local global i32 0, align 4
@mxt_attr_group = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failure %d creating sysfs group\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mxt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mxt_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = call i32 @device_property_present(%struct.TYPE_9__* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %174

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = call i64 @ACPI_COMPANION(%struct.TYPE_9__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 64
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %174

28:                                               ; preds = %20, %15
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mxt_data* @devm_kzalloc(%struct.TYPE_9__* %30, i32 48, i32 %31)
  store %struct.mxt_data* %32, %struct.mxt_data** %6, align 8
  %33 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %34 = icmp ne %struct.mxt_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %174

38:                                               ; preds = %28
  %39 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %40 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snprintf(i32 %41, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %53 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %52, i32 0, i32 6
  store %struct.i2c_client* %51, %struct.i2c_client** %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %58 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %61 = call i32 @i2c_set_clientdata(%struct.i2c_client* %59, %struct.mxt_data* %60)
  %62 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %63 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %62, i32 0, i32 4
  %64 = call i32 @init_completion(i32* %63)
  %65 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %66 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %65, i32 0, i32 3
  %67 = call i32 @init_completion(i32* %66)
  %68 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %69 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %68, i32 0, i32 2
  %70 = call i32 @init_completion(i32* %69)
  %71 = load i32, i32* @chromebook_T9_suspend_dmi, align 4
  %72 = call i64 @dmi_check_system(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %38
  %75 = load i32, i32* @MXT_SUSPEND_T9_CTRL, align 4
  br label %78

76:                                               ; preds = %38
  %77 = load i32, i32* @MXT_SUSPEND_DEEP_SLEEP, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %81 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %83 = call i32 @mxt_parse_device_properties(%struct.mxt_data* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %174

88:                                               ; preds = %78
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 1
  %91 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %92 = call i64 @devm_gpiod_get_optional(%struct.TYPE_9__* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %94 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %96 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @IS_ERR(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %88
  %101 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %102 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @PTR_ERR(i64 %103)
  store i32 %104, i32* %7, align 4
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 1
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %174

110:                                              ; preds = %88
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 1
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @mxt_interrupt, align 4
  %117 = load i32, i32* @IRQF_ONESHOT, align 4
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %122 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %112, i32 %115, i32* null, i32 %116, i32 %117, i32 %120, %struct.mxt_data* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %110
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 1
  %128 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %174

130:                                              ; preds = %110
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @disable_irq(i32 %133)
  %135 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %136 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %130
  %140 = load i32, i32* @MXT_RESET_GPIO_TIME, align 4
  %141 = call i32 @msleep(i32 %140)
  %142 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %143 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @gpiod_set_value(i64 %144, i32 1)
  %146 = load i32, i32* @MXT_RESET_INVALID_CHG, align 4
  %147 = call i32 @msleep(i32 %146)
  br label %148

148:                                              ; preds = %139, %130
  %149 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %150 = call i32 @mxt_initialize(%struct.mxt_data* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %174

155:                                              ; preds = %148
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = call i32 @sysfs_create_group(i32* %158, i32* @mxt_attr_group)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 1
  %165 = load i32, i32* %7, align 4
  %166 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  br label %168

167:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %174

168:                                              ; preds = %162
  %169 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %170 = call i32 @mxt_free_input_device(%struct.mxt_data* %169)
  %171 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %172 = call i32 @mxt_free_object_table(%struct.mxt_data* %171)
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %168, %167, %153, %125, %100, %86, %35, %25, %12
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @device_property_present(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @ACPI_COMPANION(%struct.TYPE_9__*) #1

declare dso_local %struct.mxt_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mxt_data*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @mxt_parse_device_properties(%struct.mxt_data*) #1

declare dso_local i64 @devm_gpiod_get_optional(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32*, i32, i32, i32, %struct.mxt_data*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @mxt_initialize(%struct.mxt_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @mxt_free_input_device(%struct.mxt_data*) #1

declare dso_local i32 @mxt_free_object_table(%struct.mxt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
