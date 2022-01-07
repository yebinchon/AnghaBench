; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pwm.c_led_pwm_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pwm.c_led_pwm_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.led_pwm_priv = type { i64, %struct.led_pwm_data* }
%struct.led_pwm_data = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, i32)*, i32, i32, i32, i32 }
%struct.led_pwm = type { i64, i32, i32, i32, i32 }
%struct.fwnode_handle = type { i32 }
%struct.pwm_args = type { i64 }

@LED_OFF = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to request PWM for %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to register PWM led for %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.led_pwm_priv*, %struct.led_pwm*, %struct.fwnode_handle*)* @led_pwm_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_pwm_add(%struct.device* %0, %struct.led_pwm_priv* %1, %struct.led_pwm* %2, %struct.fwnode_handle* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.led_pwm_priv*, align 8
  %8 = alloca %struct.led_pwm*, align 8
  %9 = alloca %struct.fwnode_handle*, align 8
  %10 = alloca %struct.led_pwm_data*, align 8
  %11 = alloca %struct.pwm_args, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.led_pwm_priv* %1, %struct.led_pwm_priv** %7, align 8
  store %struct.led_pwm* %2, %struct.led_pwm** %8, align 8
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %9, align 8
  %13 = load %struct.led_pwm_priv*, %struct.led_pwm_priv** %7, align 8
  %14 = getelementptr inbounds %struct.led_pwm_priv, %struct.led_pwm_priv* %13, i32 0, i32 1
  %15 = load %struct.led_pwm_data*, %struct.led_pwm_data** %14, align 8
  %16 = load %struct.led_pwm_priv*, %struct.led_pwm_priv** %7, align 8
  %17 = getelementptr inbounds %struct.led_pwm_priv, %struct.led_pwm_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %15, i64 %18
  store %struct.led_pwm_data* %19, %struct.led_pwm_data** %10, align 8
  %20 = load %struct.led_pwm*, %struct.led_pwm** %8, align 8
  %21 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %24 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.led_pwm*, %struct.led_pwm** %8, align 8
  %26 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %29 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  %31 = load %struct.led_pwm*, %struct.led_pwm** %8, align 8
  %32 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %35 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @LED_OFF, align 4
  %38 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %39 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.led_pwm*, %struct.led_pwm** %8, align 8
  %42 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %45 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %48 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %49 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %52 = icmp ne %struct.fwnode_handle* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %4
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %56 = call i32 @devm_fwnode_pwm_get(%struct.device* %54, %struct.fwnode_handle* %55, i32* null)
  %57 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %58 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %67

59:                                               ; preds = %4
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load %struct.led_pwm*, %struct.led_pwm** %8, align 8
  %62 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @devm_pwm_get(%struct.device* %60, i32 %63)
  %65 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %66 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %59, %53
  %68 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %69 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %75 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @EPROBE_DEFER, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = load %struct.led_pwm*, %struct.led_pwm** %8, align 8
  %85 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %73
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %150

91:                                               ; preds = %67
  %92 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %93 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 (%struct.TYPE_3__*, i32)* @led_pwm_set, i32 (%struct.TYPE_3__*, i32)** %94, align 8
  %95 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %96 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pwm_apply_args(i32 %97)
  %99 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %100 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @pwm_get_args(i32 %101, %struct.pwm_args* %11)
  %103 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %11, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %106 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %108 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %91
  %112 = load %struct.led_pwm*, %struct.led_pwm** %8, align 8
  %113 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.led_pwm*, %struct.led_pwm** %8, align 8
  %118 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %121 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %116, %111, %91
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %125 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %124, i32 0, i32 1
  %126 = call i32 @devm_led_classdev_register(%struct.device* %123, %struct.TYPE_3__* %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %122
  %130 = load %struct.led_pwm_priv*, %struct.led_pwm_priv** %7, align 8
  %131 = getelementptr inbounds %struct.led_pwm_priv, %struct.led_pwm_priv* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %135 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %134, i32 0, i32 1
  %136 = load %struct.led_pwm_data*, %struct.led_pwm_data** %10, align 8
  %137 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @led_pwm_set(%struct.TYPE_3__* %135, i32 %139)
  br label %148

141:                                              ; preds = %122
  %142 = load %struct.device*, %struct.device** %6, align 8
  %143 = load %struct.led_pwm*, %struct.led_pwm** %8, align 8
  %144 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @dev_err(%struct.device* %142, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %141, %129
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %89
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @devm_fwnode_pwm_get(%struct.device*, %struct.fwnode_handle*, i32*) #1

declare dso_local i32 @devm_pwm_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @led_pwm_set(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pwm_apply_args(i32) #1

declare dso_local i32 @pwm_get_args(i32, %struct.pwm_args*) #1

declare dso_local i32 @devm_led_classdev_register(%struct.device*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
