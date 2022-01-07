; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_lm87_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_lm87_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm87_data = type { i32*, i32, i32**, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHAN_VCC_5V = common dso_local global i32 0, align 4
@lm87_group = common dso_local global i32 0, align 4
@lm87_group_in6 = common dso_local global i32 0, align 4
@lm87_group_fan1 = common dso_local global i32 0, align 4
@lm87_group_in7 = common dso_local global i32 0, align 4
@lm87_group_fan2 = common dso_local global i32 0, align 4
@CHAN_TEMP3 = common dso_local global i32 0, align 4
@lm87_group_temp3 = common dso_local global i32 0, align 4
@lm87_group_in0_5 = common dso_local global i32 0, align 4
@CHAN_NO_VID = common dso_local global i32 0, align 4
@lm87_group_vid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm87_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm87_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm87_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.lm87_data* @devm_kzalloc(i32* %11, i32 32, i32 %12)
  store %struct.lm87_data* %13, %struct.lm87_data** %6, align 8
  %14 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %15 = icmp ne %struct.lm87_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %179

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.lm87_data* %21)
  %23 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %24 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %23, i32 0, i32 4
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = call i32 @lm87_init_client(%struct.i2c_client* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %179

32:                                               ; preds = %19
  %33 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %34 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 2500, i32* %36, align 4
  %37 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %38 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 2700, i32* %40, align 4
  %41 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %42 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CHAN_VCC_5V, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 5000, i32 3300
  %49 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %50 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %48, i32* %52, align 4
  %53 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %54 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 5000, i32* %56, align 4
  %57 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %58 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 12000, i32* %60, align 4
  %61 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %62 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 2700, i32* %64, align 4
  %65 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %66 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  store i32 1875, i32* %68, align 4
  %69 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %70 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  store i32 1875, i32* %72, align 4
  %73 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %74 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds i32*, i32** %75, i64 %78
  store i32* @lm87_group, i32** %79, align 8
  %80 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %81 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @CHAN_NO_FAN(i32 0)
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %32
  %87 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %88 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %87, i32 0, i32 2
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i32*, i32** %89, i64 %92
  store i32* @lm87_group_in6, i32** %93, align 8
  br label %102

94:                                               ; preds = %32
  %95 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %96 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %95, i32 0, i32 2
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  store i32* @lm87_group_fan1, i32** %101, align 8
  br label %102

102:                                              ; preds = %94, %86
  %103 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %104 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @CHAN_NO_FAN(i32 1)
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %111 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %110, i32 0, i32 2
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = zext i32 %113 to i64
  %116 = getelementptr inbounds i32*, i32** %112, i64 %115
  store i32* @lm87_group_in7, i32** %116, align 8
  br label %125

117:                                              ; preds = %102
  %118 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %119 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %118, i32 0, i32 2
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds i32*, i32** %120, i64 %123
  store i32* @lm87_group_fan2, i32** %124, align 8
  br label %125

125:                                              ; preds = %117, %109
  %126 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %127 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CHAN_TEMP3, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %134 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %133, i32 0, i32 2
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %9, align 4
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds i32*, i32** %135, i64 %138
  store i32* @lm87_group_temp3, i32** %139, align 8
  br label %148

140:                                              ; preds = %125
  %141 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %142 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %141, i32 0, i32 2
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %9, align 4
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds i32*, i32** %143, i64 %146
  store i32* @lm87_group_in0_5, i32** %147, align 8
  br label %148

148:                                              ; preds = %140, %132
  %149 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %150 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @CHAN_NO_VID, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %148
  %156 = call i32 (...) @vid_which_vrm()
  %157 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %158 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %160 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %159, i32 0, i32 2
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %9, align 4
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds i32*, i32** %161, i64 %164
  store i32* @lm87_group_vid, i32** %165, align 8
  br label %166

166:                                              ; preds = %155, %148
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 1
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %174 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %173, i32 0, i32 2
  %175 = load i32**, i32*** %174, align 8
  %176 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %168, i32 %171, %struct.i2c_client* %172, i32** %175)
  store %struct.device* %176, %struct.device** %7, align 8
  %177 = load %struct.device*, %struct.device** %7, align 8
  %178 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %177)
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %166, %30, %16
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.lm87_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm87_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm87_init_client(%struct.i2c_client*) #1

declare dso_local i32 @CHAN_NO_FAN(i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.i2c_client*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
