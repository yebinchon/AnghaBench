; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_init_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_init_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { %struct.led_classdev**, %struct.TYPE_3__* }
%struct.led_classdev = type { i8*, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hid_report = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unsupported LED_STATE report\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"can't allocate memory for LED %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s::GPO%d\00", align 1
@picolcd_led_get_brightness = common dso_local global i32 0, align 4
@picolcd_led_set_brightness = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"can't register LED %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picolcd_init_leds(%struct.picolcd_data* %0, %struct.hid_report* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.picolcd_data*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.led_classdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.picolcd_data* %0, %struct.picolcd_data** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  %12 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %13 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i8* @dev_name(%struct.device* %16)
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %18, 8
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %22 = icmp ne %struct.hid_report* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %167

26:                                               ; preds = %2
  %27 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %28 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %49, label %31

31:                                               ; preds = %26
  %32 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %33 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %42 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %40, %31, %26
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %167

54:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %126, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %129

58:                                               ; preds = %55
  %59 = load i64, i64* %8, align 8
  %60 = add i64 32, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.led_classdev* @kzalloc(i32 %61, i32 %62)
  store %struct.led_classdev* %63, %struct.led_classdev** %7, align 8
  %64 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %65 = icmp ne %struct.led_classdev* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %130

72:                                               ; preds = %58
  %73 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %74 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %73, i64 1
  %75 = bitcast %struct.led_classdev* %74 to i8*
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i8* @dev_name(%struct.device* %78)
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @snprintf(i8* %76, i64 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %79, i32 %80)
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %84 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %86 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %88 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load i32, i32* @picolcd_led_get_brightness, align 4
  %90 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %91 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @picolcd_led_set_brightness, align 4
  %93 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %94 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %96 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %97 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %96, i32 0, i32 0
  %98 = load %struct.led_classdev**, %struct.led_classdev*** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %98, i64 %100
  store %struct.led_classdev* %95, %struct.led_classdev** %101, align 8
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %104 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %103, i32 0, i32 0
  %105 = load %struct.led_classdev**, %struct.led_classdev*** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %105, i64 %107
  %109 = load %struct.led_classdev*, %struct.led_classdev** %108, align 8
  %110 = call i32 @led_classdev_register(%struct.device* %102, %struct.led_classdev* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %72
  %114 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %115 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %114, i32 0, i32 0
  %116 = load %struct.led_classdev**, %struct.led_classdev*** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %116, i64 %118
  store %struct.led_classdev* null, %struct.led_classdev** %119, align 8
  %120 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %121 = call i32 @kfree(%struct.led_classdev* %120)
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %130

125:                                              ; preds = %72
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %55

129:                                              ; preds = %55
  store i32 0, i32* %3, align 4
  br label %167

130:                                              ; preds = %113, %66
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %162, %130
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 8
  br i1 %133, label %134, label %165

134:                                              ; preds = %131
  %135 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %136 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %135, i32 0, i32 0
  %137 = load %struct.led_classdev**, %struct.led_classdev*** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %137, i64 %139
  %141 = load %struct.led_classdev*, %struct.led_classdev** %140, align 8
  %142 = icmp ne %struct.led_classdev* %141, null
  br i1 %142, label %143, label %161

143:                                              ; preds = %134
  %144 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %145 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %144, i32 0, i32 0
  %146 = load %struct.led_classdev**, %struct.led_classdev*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %146, i64 %148
  %150 = load %struct.led_classdev*, %struct.led_classdev** %149, align 8
  store %struct.led_classdev* %150, %struct.led_classdev** %7, align 8
  %151 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %152 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %151, i32 0, i32 0
  %153 = load %struct.led_classdev**, %struct.led_classdev*** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %153, i64 %155
  store %struct.led_classdev* null, %struct.led_classdev** %156, align 8
  %157 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %158 = call i32 @led_classdev_unregister(%struct.led_classdev* %157)
  %159 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %160 = call i32 @kfree(%struct.led_classdev* %159)
  br label %161

161:                                              ; preds = %143, %134
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %131

165:                                              ; preds = %131
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %129, %49, %23
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.led_classdev* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.led_classdev*) #1

declare dso_local i32 @kfree(%struct.led_classdev*) #1

declare dso_local i32 @led_classdev_unregister(%struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
