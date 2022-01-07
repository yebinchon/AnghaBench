; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_of_gpio_twl4030.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_of_gpio_twl4030.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.twl4030_gpio_platform_data = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ti,use-leds\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ti,debounce\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ti,mmc-cd\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ti,pullups\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ti,pulldowns\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.twl4030_gpio_platform_data* (%struct.device*, %struct.twl4030_gpio_platform_data*)* @of_gpio_twl4030 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.twl4030_gpio_platform_data* @of_gpio_twl4030(%struct.device* %0, %struct.twl4030_gpio_platform_data* %1) #0 {
  %3 = alloca %struct.twl4030_gpio_platform_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.twl4030_gpio_platform_data*, align 8
  %6 = alloca %struct.twl4030_gpio_platform_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.twl4030_gpio_platform_data* %1, %struct.twl4030_gpio_platform_data** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.twl4030_gpio_platform_data* @devm_kzalloc(%struct.device* %7, i32 20, i32 %8)
  store %struct.twl4030_gpio_platform_data* %9, %struct.twl4030_gpio_platform_data** %6, align 8
  %10 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %6, align 8
  %11 = icmp ne %struct.twl4030_gpio_platform_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.twl4030_gpio_platform_data* null, %struct.twl4030_gpio_platform_data** %3, align 8
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %5, align 8
  %15 = icmp ne %struct.twl4030_gpio_platform_data* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %6, align 8
  %18 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %5, align 8
  %19 = bitcast %struct.twl4030_gpio_platform_data* %17 to i8*
  %20 = bitcast %struct.twl4030_gpio_platform_data* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 20, i1 false)
  br label %21

21:                                               ; preds = %16, %13
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @of_property_read_bool(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %6, align 8
  %27 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %6, align 8
  %32 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %31, i32 0, i32 3
  %33 = call i32 @of_property_read_u32(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %6, align 8
  %38 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %37, i32 0, i32 2
  %39 = call i32 @of_property_read_u32(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %6, align 8
  %44 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %43, i32 0, i32 1
  %45 = call i32 @of_property_read_u32(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %44)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %6, align 8
  %50 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %49, i32 0, i32 0
  %51 = call i32 @of_property_read_u32(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %50)
  %52 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %6, align 8
  store %struct.twl4030_gpio_platform_data* %52, %struct.twl4030_gpio_platform_data** %3, align 8
  br label %53

53:                                               ; preds = %21, %12
  %54 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %3, align 8
  ret %struct.twl4030_gpio_platform_data* %54
}

declare dso_local %struct.twl4030_gpio_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
