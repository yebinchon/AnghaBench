; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3692x_led = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32, i32*, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.led_init_data = type { i8*, i32, %struct.fwnode_handle* }

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to get enable gpio: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vled\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"No LED Child node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"reg DT property missing\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"led register err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3692x_led*)* @lm3692x_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3692x_probe_dt(%struct.lm3692x_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3692x_led*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.led_init_data, align 8
  %6 = alloca i32, align 4
  store %struct.lm3692x_led* %0, %struct.lm3692x_led** %3, align 8
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %4, align 8
  %7 = bitcast %struct.led_init_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %9 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %13 = call i32* @devm_gpiod_get_optional(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %15 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %14, i32 0, i32 4
  store i32* %13, i32** %15, align 8
  %16 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %17 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @IS_ERR(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %23 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @PTR_ERR(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %27 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %113

33:                                               ; preds = %1
  %34 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %35 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32* @devm_regulator_get(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %40 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %42 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %48 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %46, %33
  %50 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %51 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %55 = call %struct.fwnode_handle* @device_get_next_child_node(i32* %53, %struct.fwnode_handle* %54)
  store %struct.fwnode_handle* %55, %struct.fwnode_handle** %4, align 8
  %56 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %57 = icmp ne %struct.fwnode_handle* %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %49
  %59 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %60 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %113

66:                                               ; preds = %49
  %67 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %68 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %69 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %70)
  %72 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %73 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %74 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %73, i32 0, i32 2
  %75 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %80 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %113

85:                                               ; preds = %66
  %86 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %87 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %5, i32 0, i32 2
  store %struct.fwnode_handle* %86, %struct.fwnode_handle** %87, align 8
  %88 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %89 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %5, i32 0, i32 1
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %94, align 8
  %95 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %96 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %100 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %99, i32 0, i32 1
  %101 = call i32 @devm_led_classdev_register_ext(i32* %98, %struct.TYPE_4__* %100, %struct.led_init_data* %5)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %85
  %105 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %106 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %104, %78, %58, %21
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @devm_gpiod_get_optional(i32*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32* @devm_regulator_get(i32*, i8*) #2

declare dso_local %struct.fwnode_handle* @device_get_next_child_node(i32*, %struct.fwnode_handle*) #2

declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i32*) #2

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i32*) #2

declare dso_local i32 @devm_led_classdev_register_ext(i32*, %struct.TYPE_4__*, %struct.led_init_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
