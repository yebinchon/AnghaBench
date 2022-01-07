; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_create_fan_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_create_fan_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.f71882fg_data = type { i32, i32, i32* }

@.str = private unnamed_addr constant [58 x i8] c"Invalid (reserved) pwm settings: 0x%02x, skipping fan %d\0A\00", align 1
@fxxxx_fan_attr = common dso_local global i32** null, align 8
@f71882fg_fan_has_beep = common dso_local global i64* null, align 8
@fxxxx_fan_beep_attr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Fan: %d is in %s mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"duty-cycle\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RPM\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"Auto pwm controlled by raw digital data, disabling pwm auto_point sysfs attributes for fan %d\0A\00", align 1
@f71862fg_auto_pwm_attr = common dso_local global i32** null, align 8
@f71869_auto_pwm_attr = common dso_local global i32** null, align 8
@f8000_auto_pwm_attr = common dso_local global i32** null, align 8
@fxxxx_auto_pwm_attr = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @f71882fg_create_fan_sysfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f71882fg_create_fan_sysfs_files(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f71882fg_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = call %struct.f71882fg_data* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.f71882fg_data* %9, %struct.f71882fg_data** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %11 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %44 [
    i32 135, label %13
    i32 134, label %24
    i32 128, label %35
  ]

13:                                               ; preds = %2
  %14 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %15 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 2
  %19 = ashr i32 %16, %18
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %13
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %26 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %28, 2
  %30 = ashr i32 %27, %29
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %24
  br label %45

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %40 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %35
  br label %45

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %44, %43, %34, %23
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %52 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %54, 2
  %56 = ashr i32 %53, %55
  %57 = and i32 %56, 3
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %59)
  store i32 0, i32* %3, align 4
  br label %214

61:                                               ; preds = %45
  %62 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %63 = load i32**, i32*** @fxxxx_fan_attr, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32**, i32*** @fxxxx_fan_attr, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @ARRAY_SIZE(i32* %71)
  %73 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %62, i32* %68, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %214

78:                                               ; preds = %61
  %79 = load i64*, i64** @f71882fg_fan_has_beep, align 8
  %80 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %81 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %78
  %88 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %89 = load i32*, i32** @fxxxx_fan_beep_attr, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %88, i32* %92, i32 1)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %214

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %78
  %100 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  %104 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %105 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = mul nsw i32 2, %107
  %109 = shl i32 1, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %114 = call i32 @dev_info(i32* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %103, i8* %113)
  %115 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %116 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %155 [
    i32 136, label %118
    i32 137, label %118
    i32 133, label %118
    i32 132, label %118
    i32 129, label %118
    i32 130, label %118
    i32 131, label %118
  ]

118:                                              ; preds = %99, %99, %99, %99, %99, %99, %99
  %119 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @F71882FG_REG_POINT_MAPPING(i32 %120)
  %122 = call i32 @f71882fg_read8(%struct.f71882fg_data* %119, i32 %121)
  %123 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %124 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %130 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 128
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %118
  %139 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %140 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 3
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %138, %118
  %149 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  %153 = call i32 @dev_warn(i32* %150, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  store i32 0, i32* %3, align 4
  br label %214

154:                                              ; preds = %138
  br label %156

155:                                              ; preds = %99
  br label %156

156:                                              ; preds = %155, %154
  %157 = load %struct.f71882fg_data*, %struct.f71882fg_data** %6, align 8
  %158 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  switch i32 %159, label %199 [
    i32 134, label %160
    i32 136, label %173
    i32 133, label %173
    i32 128, label %186
  ]

160:                                              ; preds = %156
  %161 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %162 = load i32**, i32*** @f71862fg_auto_pwm_attr, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32**, i32*** @f71862fg_auto_pwm_attr, align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @ARRAY_SIZE(i32* %170)
  %172 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %161, i32* %167, i32 %171)
  store i32 %172, i32* %7, align 4
  br label %212

173:                                              ; preds = %156, %156
  %174 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %175 = load i32**, i32*** @f71869_auto_pwm_attr, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32**, i32*** @f71869_auto_pwm_attr, align 8
  %182 = getelementptr inbounds i32*, i32** %181, i64 0
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @ARRAY_SIZE(i32* %183)
  %185 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %174, i32* %180, i32 %184)
  store i32 %185, i32* %7, align 4
  br label %212

186:                                              ; preds = %156
  %187 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %188 = load i32**, i32*** @f8000_auto_pwm_attr, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32**, i32*** @f8000_auto_pwm_attr, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @ARRAY_SIZE(i32* %196)
  %198 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %187, i32* %193, i32 %197)
  store i32 %198, i32* %7, align 4
  br label %212

199:                                              ; preds = %156
  %200 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %201 = load i32**, i32*** @fxxxx_auto_pwm_attr, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32**, i32*** @fxxxx_auto_pwm_attr, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 0
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @ARRAY_SIZE(i32* %209)
  %211 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %200, i32* %206, i32 %210)
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %199, %186, %173, %160
  %213 = load i32, i32* %7, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %148, %96, %76, %48
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local %struct.f71882fg_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @f71882fg_create_sysfs_files(%struct.platform_device*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_POINT_MAPPING(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
