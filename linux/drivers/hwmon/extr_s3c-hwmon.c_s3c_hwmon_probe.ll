; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c_hwmon_pdata = type { %struct.s3c_hwmon_chcfg** }
%struct.s3c_hwmon_chcfg = type { i32, i64 }
%struct.s3c_hwmon = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot register adc\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"error registering with hwmon\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"channel %d multiplier too large\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"channel %d divider zero\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"error creating channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c_hwmon_pdata*, align 8
  %5 = alloca %struct.s3c_hwmon*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s3c_hwmon_chcfg*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.s3c_hwmon_pdata* @dev_get_platdata(i32* %10)
  store %struct.s3c_hwmon_pdata* %11, %struct.s3c_hwmon_pdata** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.s3c_hwmon_pdata*, %struct.s3c_hwmon_pdata** %4, align 8
  %13 = icmp ne %struct.s3c_hwmon_pdata* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %183

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.s3c_hwmon* @devm_kzalloc(i32* %22, i32 24, i32 %23)
  store %struct.s3c_hwmon* %24, %struct.s3c_hwmon** %5, align 8
  %25 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %26 = icmp eq %struct.s3c_hwmon* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %183

30:                                               ; preds = %20
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.s3c_hwmon* %32)
  %34 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %35 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %34, i32 0, i32 3
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = call i32 @s3c_adc_register(%struct.platform_device* %37, i32* null, i32* null, i32 0)
  %39 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %40 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %42 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %30
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %51 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %183

54:                                               ; preds = %30
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @s3c_hwmon_add_raw(i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %177

61:                                               ; preds = %54
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @hwmon_device_register(i32* %63)
  %65 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %66 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %68 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %77 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %6, align 4
  br label %173

80:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %164, %80
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.s3c_hwmon_pdata*, %struct.s3c_hwmon_pdata** %4, align 8
  %84 = getelementptr inbounds %struct.s3c_hwmon_pdata, %struct.s3c_hwmon_pdata* %83, i32 0, i32 0
  %85 = load %struct.s3c_hwmon_chcfg**, %struct.s3c_hwmon_chcfg*** %84, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.s3c_hwmon_chcfg** %85)
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %167

88:                                               ; preds = %81
  %89 = load %struct.s3c_hwmon_pdata*, %struct.s3c_hwmon_pdata** %4, align 8
  %90 = getelementptr inbounds %struct.s3c_hwmon_pdata, %struct.s3c_hwmon_pdata* %89, i32 0, i32 0
  %91 = load %struct.s3c_hwmon_chcfg**, %struct.s3c_hwmon_chcfg*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %91, i64 %93
  %95 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %94, align 8
  store %struct.s3c_hwmon_chcfg* %95, %struct.s3c_hwmon_chcfg** %8, align 8
  %96 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %8, align 8
  %97 = icmp ne %struct.s3c_hwmon_chcfg* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  br label %164

99:                                               ; preds = %88
  %100 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %8, align 8
  %101 = getelementptr inbounds %struct.s3c_hwmon_chcfg, %struct.s3c_hwmon_chcfg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %102, 65536
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @dev_warn(i32* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %8, align 8
  %111 = getelementptr inbounds %struct.s3c_hwmon_chcfg, %struct.s3c_hwmon_chcfg* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* %7, align 4
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %164

119:                                              ; preds = %109
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.s3c_hwmon_pdata*, %struct.s3c_hwmon_pdata** %4, align 8
  %123 = getelementptr inbounds %struct.s3c_hwmon_pdata, %struct.s3c_hwmon_pdata* %122, i32 0, i32 0
  %124 = load %struct.s3c_hwmon_chcfg**, %struct.s3c_hwmon_chcfg*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %124, i64 %126
  %128 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %127, align 8
  %129 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %130 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @s3c_hwmon_create_attr(i32* %121, %struct.s3c_hwmon_chcfg* %128, i32* %134, i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %119
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* %7, align 4
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %159, %139
  %147 = load i32, i32* %7, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %153 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = call i32 @s3c_hwmon_remove_attr(i32* %151, i32* %157)
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %7, align 4
  br label %146

162:                                              ; preds = %146
  br label %168

163:                                              ; preds = %119
  br label %164

164:                                              ; preds = %163, %114, %98
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %81

167:                                              ; preds = %81
  store i32 0, i32* %2, align 4
  br label %183

168:                                              ; preds = %162
  %169 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %170 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @hwmon_device_unregister(i32 %171)
  br label %173

173:                                              ; preds = %168, %72
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = call i32 @s3c_hwmon_remove_raw(i32* %175)
  br label %177

177:                                              ; preds = %173, %60
  %178 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %5, align 8
  %179 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @s3c_adc_release(i32 %180)
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %177, %167, %46, %27, %14
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.s3c_hwmon_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.s3c_hwmon* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c_hwmon*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @s3c_adc_register(%struct.platform_device*, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @s3c_hwmon_add_raw(i32*) #1

declare dso_local i32 @hwmon_device_register(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.s3c_hwmon_chcfg**) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @s3c_hwmon_create_attr(i32*, %struct.s3c_hwmon_chcfg*, i32*, i32) #1

declare dso_local i32 @s3c_hwmon_remove_attr(i32*, i32*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @s3c_hwmon_remove_raw(i32*) #1

declare dso_local i32 @s3c_adc_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
