; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-syscon.c_syscon_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-syscon.c_syscon_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node*, %struct.device* }
%struct.device_node = type { i32 }
%struct.regmap = type { i32 }
%struct.syscon_led = type { i32, i32, i32, %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [26 x i8] c"no parent for syscon LED\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"no regmap for syscon LED parent\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"default-state\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@syscon_led_set = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"registered LED %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @syscon_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.syscon_led*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %6, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %186

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load %struct.device_node*, %struct.device_node** %29, align 8
  %31 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %30)
  store %struct.regmap* %31, %struct.regmap** %7, align 8
  %32 = load %struct.regmap*, %struct.regmap** %7, align 8
  %33 = call i64 @IS_ERR(%struct.regmap* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.regmap*, %struct.regmap** %7, align 8
  %39 = call i32 @PTR_ERR(%struct.regmap* %38)
  store i32 %39, i32* %2, align 4
  br label %186

40:                                               ; preds = %27
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.syscon_led* @devm_kzalloc(%struct.device* %41, i32 40, i32 %42)
  store %struct.syscon_led* %43, %struct.syscon_led** %8, align 8
  %44 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %45 = icmp ne %struct.syscon_led* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %186

49:                                               ; preds = %40
  %50 = load %struct.regmap*, %struct.regmap** %7, align 8
  %51 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %52 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %51, i32 0, i32 4
  store %struct.regmap* %50, %struct.regmap** %52, align 8
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %55 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %54, i32 0, i32 0
  %56 = call i64 @of_property_read_u32(%struct.device_node* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %186

61:                                               ; preds = %49
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %64 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %63, i32 0, i32 1
  %65 = call i64 @of_property_read_u32(%struct.device_node* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %186

70:                                               ; preds = %61
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = call i8* @of_get_property(%struct.device_node* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %81

75:                                               ; preds = %70
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = getelementptr inbounds %struct.device_node, %struct.device_node* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  br label %81

81:                                               ; preds = %75, %74
  %82 = phi i8* [ %72, %74 ], [ %80, %75 ]
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %85 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.device_node*, %struct.device_node** %5, align 8
  %88 = call i8* @of_get_property(%struct.device_node* %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %89 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %90 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load %struct.device_node*, %struct.device_node** %5, align 8
  %93 = call i8* @of_get_property(%struct.device_node* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i8* %93, i8** %9, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %163

96:                                               ; preds = %81
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %96
  %101 = load %struct.regmap*, %struct.regmap** %7, align 8
  %102 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %103 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @regmap_read(%struct.regmap* %101, i32 %104, i32* %11)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %2, align 4
  br label %186

110:                                              ; preds = %100
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %113 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %121 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  br label %162

122:                                              ; preds = %96
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %122
  %127 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %128 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %127, i32 0, i32 2
  store i32 1, i32* %128, align 8
  %129 = load %struct.regmap*, %struct.regmap** %7, align 8
  %130 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %131 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %134 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %137 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @regmap_update_bits(%struct.regmap* %129, i32 %132, i32 %135, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %126
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %2, align 4
  br label %186

144:                                              ; preds = %126
  br label %161

145:                                              ; preds = %122
  %146 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %147 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %146, i32 0, i32 2
  store i32 0, i32* %147, align 8
  %148 = load %struct.regmap*, %struct.regmap** %7, align 8
  %149 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %150 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %153 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @regmap_update_bits(%struct.regmap* %148, i32 %151, i32 %154, i32 0)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %2, align 4
  br label %186

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %144
  br label %162

162:                                              ; preds = %161, %110
  br label %163

163:                                              ; preds = %162, %81
  %164 = load i32, i32* @syscon_led_set, align 4
  %165 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %166 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %170 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %169, i32 0, i32 3
  %171 = call i32 @devm_led_classdev_register(%struct.device* %168, %struct.TYPE_2__* %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %2, align 4
  br label %186

176:                                              ; preds = %163
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %179 = call i32 @platform_set_drvdata(%struct.platform_device* %177, %struct.syscon_led* %178)
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = load %struct.syscon_led*, %struct.syscon_led** %8, align 8
  %182 = getelementptr inbounds %struct.syscon_led, %struct.syscon_led* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @dev_info(%struct.device* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %184)
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %176, %174, %158, %142, %108, %67, %58, %46, %35, %22
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.syscon_led* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @devm_led_classdev_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.syscon_led*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
