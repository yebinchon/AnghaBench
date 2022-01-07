; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_rcar_priv = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.gpio_rcar_info = type { i32, i32 }
%struct.of_phandle_args = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@RCAR_MAX_GPIO_PER_BANK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid number of gpio lines %u, using %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_rcar_priv*, i32*)* @gpio_rcar_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_rcar_parse_dt(%struct.gpio_rcar_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.gpio_rcar_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.gpio_rcar_info*, align 8
  %7 = alloca %struct.of_phandle_args, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_rcar_priv* %0, %struct.gpio_rcar_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %3, align 8
  %10 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %3, align 8
  %15 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call %struct.gpio_rcar_info* @of_device_get_match_data(%struct.TYPE_3__* %16)
  store %struct.gpio_rcar_info* %17, %struct.gpio_rcar_info** %6, align 8
  %18 = load %struct.gpio_rcar_info*, %struct.gpio_rcar_info** %6, align 8
  %19 = getelementptr inbounds %struct.gpio_rcar_info, %struct.gpio_rcar_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %3, align 8
  %22 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.gpio_rcar_info*, %struct.gpio_rcar_info** %6, align 8
  %24 = getelementptr inbounds %struct.gpio_rcar_info, %struct.gpio_rcar_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %3, align 8
  %27 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 3, i32 0, %struct.of_phandle_args* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @RCAR_MAX_GPIO_PER_BANK, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi i32 [ %36, %32 ], [ %38, %37 ]
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RCAR_MAX_GPIO_PER_BANK, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45, %39
  %51 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %3, align 8
  %52 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RCAR_MAX_GPIO_PER_BANK, align 4
  %57 = call i32 @dev_warn(%struct.TYPE_3__* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @RCAR_MAX_GPIO_PER_BANK, align 4
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %45
  ret i32 0
}

declare dso_local %struct.gpio_rcar_info* @of_device_get_match_data(%struct.TYPE_3__*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
