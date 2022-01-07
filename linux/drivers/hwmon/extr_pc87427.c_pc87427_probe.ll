; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pc87427_sio_data = type { i64* }
%struct.pc87427_data = type { i64*, i8*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pc87427\00", align 1
@dev_attr_name = common dso_local global i32 0, align 4
@pc87427_group_fan = common dso_local global i32* null, align 8
@pc87427_group_pwm = common dso_local global i32* null, align 8
@pc87427_group_temp = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Class registration failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pc87427_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pc87427_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pc87427_sio_data*, align 8
  %5 = alloca %struct.pc87427_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.pc87427_sio_data* @dev_get_platdata(%struct.TYPE_8__* %10)
  store %struct.pc87427_sio_data* %11, %struct.pc87427_sio_data** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pc87427_data* @devm_kzalloc(%struct.TYPE_8__* %13, i32 40, i32 %14)
  store %struct.pc87427_data* %15, %struct.pc87427_data** %5, align 8
  %16 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %17 = icmp ne %struct.pc87427_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %194

21:                                               ; preds = %1
  %22 = load %struct.pc87427_sio_data*, %struct.pc87427_sio_data** %4, align 8
  %23 = getelementptr inbounds %struct.pc87427_sio_data, %struct.pc87427_sio_data* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %28 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %26, i64* %30, align 8
  %31 = load %struct.pc87427_sio_data*, %struct.pc87427_sio_data** %4, align 8
  %32 = getelementptr inbounds %struct.pc87427_sio_data, %struct.pc87427_sio_data* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %37 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 %35, i64* %39, align 8
  %40 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %41 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %48 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = add nsw i32 %46, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pc87427_request_regions(%struct.platform_device* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %21
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %194

62:                                               ; preds = %21
  %63 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %64 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %63, i32 0, i32 6
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %67 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %66, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %70 = call i32 @platform_set_drvdata(%struct.platform_device* %68, %struct.pc87427_data* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @pc87427_init_device(%struct.TYPE_8__* %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @device_create_file(%struct.TYPE_8__* %75, i32* @dev_attr_name)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %194

81:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %107, %81
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %87 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %107

94:                                               ; preds = %85
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** @pc87427_group_fan, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @sysfs_create_group(i32* %97, i32* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %189

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %93
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %82

110:                                              ; preds = %82
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %136, %110
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %139

114:                                              ; preds = %111
  %115 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %116 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = shl i32 1, %118
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  br label %136

123:                                              ; preds = %114
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32*, i32** @pc87427_group_pwm, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @sysfs_create_group(i32* %126, i32* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %189

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %122
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %111

139:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %165, %139
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %141, 6
  br i1 %142, label %143, label %168

143:                                              ; preds = %140
  %144 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %145 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = shl i32 1, %147
  %149 = and i32 %146, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %143
  br label %165

152:                                              ; preds = %143
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32*, i32** @pc87427_group_temp, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = call i32 @sysfs_create_group(i32* %155, i32* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  br label %189

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164, %151
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %140

168:                                              ; preds = %140
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = call i32 @hwmon_device_register(%struct.TYPE_8__* %170)
  %172 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %173 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %175 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @IS_ERR(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %168
  %180 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %181 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @PTR_ERR(i32 %182)
  store i32 %183, i32* %7, align 4
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @dev_err(%struct.TYPE_8__* %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  br label %189

188:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %194

189:                                              ; preds = %179, %163, %134, %105
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = call i32 @pc87427_remove_files(%struct.TYPE_8__* %191)
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %189, %188, %79, %60, %18
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.pc87427_sio_data* @dev_get_platdata(%struct.TYPE_8__*) #1

declare dso_local %struct.pc87427_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pc87427_request_regions(%struct.platform_device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pc87427_data*) #1

declare dso_local i32 @pc87427_init_device(%struct.TYPE_8__*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @pc87427_remove_files(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
