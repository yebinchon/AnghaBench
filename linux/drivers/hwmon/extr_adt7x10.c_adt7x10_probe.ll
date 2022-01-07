; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7x10_ops = type { i32 }
%struct.adt7x10_data = type { i8*, i32, i32, i32, i32, %struct.adt7x10_ops* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADT7X10_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't read config? %d\0A\00", align 1
@ADT7X10_MODE_MASK = common dso_local global i32 0, align 4
@ADT7X10_CT_POLARITY = common dso_local global i32 0, align 4
@ADT7X10_INT_POLARITY = common dso_local global i32 0, align 4
@ADT7X10_FULL = common dso_local global i32 0, align 4
@ADT7X10_RESOLUTION = common dso_local global i32 0, align 4
@ADT7X10_EVENT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Config %02x\0A\00", align 1
@adt7x10_group = common dso_local global i32 0, align 4
@dev_attr_name = common dso_local global i32 0, align 4
@adt7x10_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adt7x10_probe(%struct.device* %0, i8* %1, i32 %2, %struct.adt7x10_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.adt7x10_ops*, align 8
  %10 = alloca %struct.adt7x10_data*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.adt7x10_ops* %3, %struct.adt7x10_ops** %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.adt7x10_data* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.adt7x10_data* %14, %struct.adt7x10_data** %10, align 8
  %15 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %16 = icmp ne %struct.adt7x10_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %175

20:                                               ; preds = %4
  %21 = load %struct.adt7x10_ops*, %struct.adt7x10_ops** %9, align 8
  %22 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %23 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %22, i32 0, i32 5
  store %struct.adt7x10_ops* %21, %struct.adt7x10_ops** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %26 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %29 = call i32 @dev_set_drvdata(%struct.device* %27, %struct.adt7x10_data* %28)
  %30 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %31 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %30, i32 0, i32 4
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* @ADT7X10_CONFIG, align 4
  %35 = call i32 @adt7x10_read_byte(%struct.device* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %20
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %175

43:                                               ; preds = %20
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %46 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %48 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %51 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ADT7X10_MODE_MASK, align 4
  %53 = load i32, i32* @ADT7X10_CT_POLARITY, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ADT7X10_INT_POLARITY, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %59 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @ADT7X10_FULL, align 4
  %63 = load i32, i32* @ADT7X10_RESOLUTION, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ADT7X10_EVENT_MODE, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %68 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %72 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %75 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %43
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load i32, i32* @ADT7X10_CONFIG, align 4
  %81 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %82 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @adt7x10_write_byte(%struct.device* %79, i32 %80, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %175

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %43
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %93 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = call i32 @adt7x10_fill_cache(%struct.device* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %167

101:                                              ; preds = %90
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = getelementptr inbounds %struct.device, %struct.device* %102, i32 0, i32 0
  %104 = call i32 @sysfs_create_group(i32* %103, i32* @adt7x10_group)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %167

108:                                              ; preds = %101
  %109 = load i8*, i8** %7, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = call i32 @device_create_file(%struct.device* %112, i32* @dev_attr_name)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %163

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %108
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = call i32 @hwmon_device_register(%struct.device* %119)
  %121 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %122 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %124 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %130 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @PTR_ERR(i32 %131)
  store i32 %132, i32* %11, align 4
  br label %156

133:                                              ; preds = %118
  %134 = load i32, i32* %8, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @adt7x10_irq_handler, align 4
  %139 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %140 = load i32, i32* @IRQF_ONESHOT, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.device*, %struct.device** %6, align 8
  %143 = call i32 @dev_name(%struct.device* %142)
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = call i32 @request_threaded_irq(i32 %137, i32* null, i32 %138, i32 %141, i32 %143, %struct.device* %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %151

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149, %133
  store i32 0, i32* %5, align 4
  br label %175

151:                                              ; preds = %148
  %152 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %153 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @hwmon_device_unregister(i32 %154)
  br label %156

156:                                              ; preds = %151, %128
  %157 = load i8*, i8** %7, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.device*, %struct.device** %6, align 8
  %161 = call i32 @device_remove_file(%struct.device* %160, i32* @dev_attr_name)
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %116
  %164 = load %struct.device*, %struct.device** %6, align 8
  %165 = getelementptr inbounds %struct.device, %struct.device* %164, i32 0, i32 0
  %166 = call i32 @sysfs_remove_group(i32* %165, i32* @adt7x10_group)
  br label %167

167:                                              ; preds = %163, %107, %100
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = load i32, i32* @ADT7X10_CONFIG, align 4
  %170 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %171 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @adt7x10_write_byte(%struct.device* %168, i32 %169, i32 %172)
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %167, %150, %87, %38, %17
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local %struct.adt7x10_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.adt7x10_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adt7x10_read_byte(%struct.device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @adt7x10_write_byte(%struct.device*, i32, i32) #1

declare dso_local i32 @adt7x10_fill_cache(%struct.device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
