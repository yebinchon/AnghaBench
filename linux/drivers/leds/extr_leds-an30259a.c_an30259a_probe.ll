; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-an30259a.c_an30259a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-an30259a.c_an30259a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.an30259a = type { i32, i32, %struct.TYPE_4__*, i32, %struct.i2c_client* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.led_init_data = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@an30259a_regmap_config = common dso_local global i32 0, align 4
@an30259a_brightness_set = common dso_local global i32 0, align 4
@an30259a_blink_set = common dso_local global i32 0, align 4
@AN30259A_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @an30259a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an30259a_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.an30259a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.led_init_data, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.an30259a* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.an30259a* %11, %struct.an30259a** %4, align 8
  %12 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %13 = icmp ne %struct.an30259a* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %107

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %20 = call i32 @an30259a_dt_init(%struct.i2c_client* %18, %struct.an30259a* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %107

25:                                               ; preds = %17
  %26 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %27 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %26, i32 0, i32 1
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %31 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %30, i32 0, i32 4
  store %struct.i2c_client* %29, %struct.i2c_client** %31, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %34 = call i32 @i2c_set_clientdata(%struct.i2c_client* %32, %struct.an30259a* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %35, i32* @an30259a_regmap_config)
  %37 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %38 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %98, %25
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %42 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %39
  %46 = bitcast %struct.led_init_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 16, i1 false)
  %47 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %48 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = call i32 @an30259a_init_default_state(%struct.TYPE_4__* %52)
  %54 = load i32, i32* @an30259a_brightness_set, align 4
  %55 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %56 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %54, i32* %62, align 4
  %63 = load i32, i32* @an30259a_blink_set, align 4
  %64 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %65 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %63, i32* %71, align 4
  %72 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %73 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %7, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @AN30259A_NAME, align 4
  %82 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %7, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %83, align 8
  %84 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %87 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @devm_led_classdev_register_ext(i32* %85, %struct.TYPE_3__* %92, %struct.led_init_data* %7)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %45
  br label %102

97:                                               ; preds = %45
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %39

101:                                              ; preds = %39
  store i32 0, i32* %2, align 4
  br label %107

102:                                              ; preds = %96
  %103 = load %struct.an30259a*, %struct.an30259a** %4, align 8
  %104 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %103, i32 0, i32 1
  %105 = call i32 @mutex_destroy(i32* %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %101, %23, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.an30259a* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @an30259a_dt_init(%struct.i2c_client*, %struct.an30259a*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.an30259a*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @an30259a_init_default_state(%struct.TYPE_4__*) #1

declare dso_local i32 @devm_led_classdev_register_ext(i32*, %struct.TYPE_3__*, %struct.led_init_data*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
