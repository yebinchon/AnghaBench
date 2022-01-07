; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_w83792d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_w83792d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83792d_data = type { i32, i8**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@W83792D_REG_FAN_MIN = common dso_local global i32* null, align 8
@w83792d_group = common dso_local global i32 0, align 4
@W83792D_REG_GPIO_EN = common dso_local global i32 0, align 4
@w83792d_group_fan = common dso_local global i32* null, align 8
@W83792D_REG_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83792d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83792d_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.w83792d_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.w83792d_data* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.w83792d_data* %15, %struct.w83792d_data** %6, align 8
  %16 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %17 = icmp ne %struct.w83792d_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %167

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.w83792d_data* %23)
  %25 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %26 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i32 @w83792d_detect_subclients(%struct.i2c_client* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %167

34:                                               ; preds = %21
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @w83792d_init_client(%struct.i2c_client* %35)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %54, %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 7
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32*, i32** @W83792D_REG_FAN_MIN, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @w83792d_read_value(%struct.i2c_client* %41, i32 %46)
  %48 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %49 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %47, i8** %53, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = call i32 @sysfs_create_group(i32* %59, i32* @w83792d_group)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %167

65:                                               ; preds = %57
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32, i32* @W83792D_REG_GPIO_EN, align 4
  %68 = call i8* @w83792d_read_value(%struct.i2c_client* %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 64
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %65
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 0
  %76 = load i32*, i32** @w83792d_group_fan, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = call i32 @sysfs_create_group(i32* %75, i32* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %145

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %65
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %83
  %88 = load %struct.device*, %struct.device** %7, align 8
  %89 = getelementptr inbounds %struct.device, %struct.device* %88, i32 0, i32 0
  %90 = load i32*, i32** @w83792d_group_fan, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = call i32 @sysfs_create_group(i32* %89, i32* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %145

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %83
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load i32, i32* @W83792D_REG_PIN, align 4
  %100 = call i8* @w83792d_read_value(%struct.i2c_client* %98, i32 %99)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 64
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = load %struct.device*, %struct.device** %7, align 8
  %107 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 0
  %108 = load i32*, i32** @w83792d_group_fan, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = call i32 @sysfs_create_group(i32* %107, i32* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %145

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %97
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = getelementptr inbounds %struct.device, %struct.device* %120, i32 0, i32 0
  %122 = load i32*, i32** @w83792d_group_fan, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = call i32 @sysfs_create_group(i32* %121, i32* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %145

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %115
  %130 = load %struct.device*, %struct.device** %7, align 8
  %131 = call i32 @hwmon_device_register(%struct.device* %130)
  %132 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %133 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %135 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @IS_ERR(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %129
  %140 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %141 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @PTR_ERR(i32 %142)
  store i32 %143, i32* %10, align 4
  br label %145

144:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %167

145:                                              ; preds = %139, %127, %113, %95, %81
  %146 = load %struct.device*, %struct.device** %7, align 8
  %147 = getelementptr inbounds %struct.device, %struct.device* %146, i32 0, i32 0
  %148 = call i32 @sysfs_remove_group(i32* %147, i32* @w83792d_group)
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %162, %145
  %150 = load i32, i32* %8, align 4
  %151 = load i32*, i32** @w83792d_group_fan, align 8
  %152 = call i32 @ARRAY_SIZE(i32* %151)
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.device*, %struct.device** %7, align 8
  %156 = getelementptr inbounds %struct.device, %struct.device* %155, i32 0, i32 0
  %157 = load i32*, i32** @w83792d_group_fan, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = call i32 @sysfs_remove_group(i32* %156, i32* %160)
  br label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %149

165:                                              ; preds = %149
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %144, %63, %32, %18
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.w83792d_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83792d_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w83792d_detect_subclients(%struct.i2c_client*) #1

declare dso_local i32 @w83792d_init_client(%struct.i2c_client*) #1

declare dso_local i8* @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
