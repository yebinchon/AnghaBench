; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_find_regulator_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_find_regulator_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"wlf,ldoena\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"wlf,ldo1ena\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"wlf,ldo2ena\00", align 1
@__const.of_find_regulator_gpio.whitelist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)], align 16
@CONFIG_REGULATOR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.device*, i8*, i32*)* @of_find_regulator_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @of_find_regulator_gpio(%struct.device* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i8*], align 16
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.gpio_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = bitcast [3 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([3 x i8*]* @__const.of_find_regulator_gpio.whitelist to i8*), i64 24, i1 false)
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %9, align 8
  %16 = load i32, i32* @CONFIG_REGULATOR, align 4
  %17 = call i32 @IS_ENABLED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.gpio_desc* @ERR_PTR(i32 %21)
  store %struct.gpio_desc* %22, %struct.gpio_desc** %4, align 8
  br label %48

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.gpio_desc* @ERR_PTR(i32 %28)
  store %struct.gpio_desc* %29, %struct.gpio_desc** %4, align 8
  br label %48

30:                                               ; preds = %23
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %32 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(i8** %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @match_string(i8** %31, i32 %33, i8* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.gpio_desc* @ERR_PTR(i32 %40)
  store %struct.gpio_desc* %41, %struct.gpio_desc** %4, align 8
  br label %48

42:                                               ; preds = %30
  %43 = load %struct.device_node*, %struct.device_node** %9, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node* %43, i8* %44, i32 0, i32* %45)
  store %struct.gpio_desc* %46, %struct.gpio_desc** %10, align 8
  %47 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  store %struct.gpio_desc* %47, %struct.gpio_desc** %4, align 8
  br label %48

48:                                               ; preds = %42, %38, %26, %19
  %49 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  ret %struct.gpio_desc* %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @IS_ENABLED(i32) #2

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #2

declare dso_local i32 @match_string(i8**, i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node*, i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
