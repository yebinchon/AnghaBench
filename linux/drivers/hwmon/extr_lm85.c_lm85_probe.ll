; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_lm85_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_lm85_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.lm85_data = type { i32, i32, i32**, i32, i8*, i8*, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm1027_freq_map = common dso_local global i8* null, align 8
@lm96000_freq_map = common dso_local global i8* null, align 8
@lm85_freq_map = common dso_local global i8* null, align 8
@lm85_group = common dso_local global i32 0, align 4
@lm85_group_minctl = common dso_local global i32 0, align 4
@lm85_group_temp_off = common dso_local global i32 0, align 4
@LM85_REG_VID = common dso_local global i32 0, align 4
@lm85_group_in4 = common dso_local global i32 0, align 4
@lm85_group_in567 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm85_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm85_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.lm85_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lm85_data* @devm_kzalloc(%struct.device* %13, i32 56, i32 %14)
  store %struct.lm85_data* %15, %struct.lm85_data** %8, align 8
  %16 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %17 = icmp ne %struct.lm85_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %165

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %24 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %23, i32 0, i32 7
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = call i64 @of_device_get_match_data(%struct.device* %32)
  %34 = trunc i64 %33 to i32
  %35 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %36 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %43

37:                                               ; preds = %21
  %38 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %42 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %45 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %44, i32 0, i32 6
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %48 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %66 [
    i32 135, label %50
    i32 134, label %50
    i32 133, label %50
    i32 132, label %50
    i32 131, label %50
    i32 130, label %50
    i32 129, label %50
    i32 128, label %58
  ]

50:                                               ; preds = %43, %43, %43, %43, %43, %43, %43
  %51 = load i8*, i8** @adm1027_freq_map, align 8
  %52 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %53 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @adm1027_freq_map, align 8
  %55 = call i8* @ARRAY_SIZE(i8* %54)
  %56 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %57 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  br label %74

58:                                               ; preds = %43
  %59 = load i8*, i8** @lm96000_freq_map, align 8
  %60 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %61 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @lm96000_freq_map, align 8
  %63 = call i8* @ARRAY_SIZE(i8* %62)
  %64 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %65 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  br label %74

66:                                               ; preds = %43
  %67 = load i8*, i8** @lm85_freq_map, align 8
  %68 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %69 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @lm85_freq_map, align 8
  %71 = call i8* @ARRAY_SIZE(i8* %70)
  %72 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %73 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %66, %58, %50
  %75 = call i32 (...) @vid_which_vrm()
  %76 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %77 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = call i32 @lm85_init_client(%struct.i2c_client* %78)
  %80 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %81 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32*, i32** %82, i64 %85
  store i32* @lm85_group, i32** %86, align 8
  %87 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %88 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 129
  br i1 %90, label %91, label %106

91:                                               ; preds = %74
  %92 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %93 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %92, i32 0, i32 2
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32*, i32** %94, i64 %97
  store i32* @lm85_group_minctl, i32** %98, align 8
  %99 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %100 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %99, i32 0, i32 2
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32*, i32** %101, i64 %104
  store i32* @lm85_group_temp_off, i32** %105, align 8
  br label %106

106:                                              ; preds = %91, %74
  %107 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %108 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 134
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %113 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 133
  br i1 %115, label %116, label %127

116:                                              ; preds = %111, %106
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = load i32, i32* @LM85_REG_VID, align 4
  %119 = call i32 @lm85_read_value(%struct.i2c_client* %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %120, 128
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %125 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %116
  br label %127

127:                                              ; preds = %126, %111
  %128 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %129 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %127
  %133 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %134 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %133, i32 0, i32 2
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32*, i32** %135, i64 %138
  store i32* @lm85_group_in4, i32** %139, align 8
  br label %140

140:                                              ; preds = %132, %127
  %141 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %142 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 132
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %147 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %146, i32 0, i32 2
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32*, i32** %148, i64 %151
  store i32* @lm85_group_in567, i32** %152, align 8
  br label %153

153:                                              ; preds = %145, %140
  %154 = load %struct.device*, %struct.device** %6, align 8
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %159 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %160 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %159, i32 0, i32 2
  %161 = load i32**, i32*** %160, align 8
  %162 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %154, i32 %157, %struct.lm85_data* %158, i32** %161)
  store %struct.device* %162, %struct.device** %7, align 8
  %163 = load %struct.device*, %struct.device** %7, align 8
  %164 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %163)
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %153, %18
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.lm85_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @lm85_init_client(%struct.i2c_client*) #1

declare dso_local i32 @lm85_read_value(%struct.i2c_client*, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.lm85_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
