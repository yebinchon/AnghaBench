; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.soc_button_info = type { i32, i32, i64, i32, i32, i32 }
%struct.gpio_keys_button = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.gpio_keys_platform_data = type { i32, i32, %struct.gpio_keys_button* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gpio-keys\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed registering gpio-keys: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (%struct.platform_device*, %struct.soc_button_info*, i32)* @soc_button_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @soc_button_device_create(%struct.platform_device* %0, %struct.soc_button_info* %1, i32 %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.soc_button_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.soc_button_info*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.gpio_keys_button*, align 8
  %11 = alloca %struct.gpio_keys_platform_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.soc_button_info* %1, %struct.soc_button_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.soc_button_info*, %struct.soc_button_info** %6, align 8
  store %struct.soc_button_info* %15, %struct.soc_button_info** %8, align 8
  br label %16

16:                                               ; preds = %31, %3
  %17 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %18 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %23 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %27, %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %33 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %32, i32 1
  store %struct.soc_button_info* %33, %struct.soc_button_info** %8, align 8
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 32, %38
  %40 = add i64 16, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.gpio_keys_platform_data* @devm_kzalloc(i32* %36, i32 %41, i32 %42)
  store %struct.gpio_keys_platform_data* %43, %struct.gpio_keys_platform_data** %11, align 8
  %44 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %45 = icmp ne %struct.gpio_keys_platform_data* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.platform_device* @ERR_PTR(i32 %48)
  store %struct.platform_device* %49, %struct.platform_device** %4, align 8
  br label %172

50:                                               ; preds = %34
  %51 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %52 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %51, i64 1
  %53 = bitcast %struct.gpio_keys_platform_data* %52 to i8*
  %54 = bitcast i8* %53 to %struct.gpio_keys_button*
  store %struct.gpio_keys_button* %54, %struct.gpio_keys_button** %10, align 8
  store i32 0, i32* %12, align 4
  %55 = load %struct.soc_button_info*, %struct.soc_button_info** %6, align 8
  store %struct.soc_button_info* %55, %struct.soc_button_info** %8, align 8
  br label %56

56:                                               ; preds = %130, %50
  %57 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %58 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %133

61:                                               ; preds = %56
  %62 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %63 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %130

68:                                               ; preds = %61
  %69 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %72 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @soc_button_lookup_gpio(i32* %70, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @gpio_is_valid(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  br label %130

79:                                               ; preds = %68
  %80 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %81 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %83, i64 %85
  %87 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %86, i32 0, i32 6
  store i32 %82, i32* %87, align 4
  %88 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %89 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %91, i64 %93
  %95 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %94, i32 0, i32 5
  store i32 %90, i32* %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %97, i64 %99
  %101 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %100, i32 0, i32 0
  store i32 %96, i32* %101, align 8
  %102 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %102, i64 %104
  %106 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %108 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %110, i64 %112
  %114 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %113, i32 0, i32 4
  store i64 %109, i64* %114, align 8
  %115 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %116 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %118, i64 %120
  %122 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %121, i32 0, i32 3
  store i32 %117, i32* %122, align 4
  %123 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %123, i64 %125
  %127 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %126, i32 0, i32 2
  store i32 50, i32* %127, align 8
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %79, %78, %67
  %131 = load %struct.soc_button_info*, %struct.soc_button_info** %8, align 8
  %132 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %131, i32 1
  store %struct.soc_button_info* %132, %struct.soc_button_info** %8, align 8
  br label %56

133:                                              ; preds = %56
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %14, align 4
  br label %165

139:                                              ; preds = %133
  %140 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %141 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %142 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %141, i32 0, i32 2
  store %struct.gpio_keys_button* %140, %struct.gpio_keys_button** %142, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %145 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %148 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %152 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %153 = call %struct.platform_device* @platform_device_register_resndata(i32* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %151, i32* null, i32 0, %struct.gpio_keys_platform_data* %152, i32 16)
  store %struct.platform_device* %153, %struct.platform_device** %9, align 8
  %154 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %155 = call i32 @PTR_ERR_OR_ZERO(%struct.platform_device* %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %139
  %159 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @dev_err(i32* %160, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  br label %165

163:                                              ; preds = %139
  %164 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %164, %struct.platform_device** %4, align 8
  br label %172

165:                                              ; preds = %158, %136
  %166 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %169 = call i32 @devm_kfree(i32* %167, %struct.gpio_keys_platform_data* %168)
  %170 = load i32, i32* %14, align 4
  %171 = call %struct.platform_device* @ERR_PTR(i32 %170)
  store %struct.platform_device* %171, %struct.platform_device** %4, align 8
  br label %172

172:                                              ; preds = %165, %163, %46
  %173 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  ret %struct.platform_device* %173
}

declare dso_local %struct.gpio_keys_platform_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

declare dso_local i32 @soc_button_lookup_gpio(i32*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local %struct.platform_device* @platform_device_register_resndata(i32*, i8*, i32, i32*, i32, %struct.gpio_keys_platform_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.gpio_keys_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
