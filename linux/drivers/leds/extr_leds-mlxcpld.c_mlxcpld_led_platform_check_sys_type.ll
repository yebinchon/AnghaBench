; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxcpld.c_mlxcpld_led_platform_check_sys_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxcpld.c_mlxcpld_led_platform_check_sys_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMI_PRODUCT_NAME = common dso_local global i32 0, align 4
@MLXCPLD_LED_PLATFORM_DEFAULT = common dso_local global i32 0, align 4
@mlx_product_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mlxcpld_led_platform_check_sys_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_led_platform_check_sys_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @DMI_PRODUCT_NAME, align 4
  %5 = call i8* @dmi_get_system_info(i32 %4)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @MLXCPLD_LED_PLATFORM_DEFAULT, align 4
  store i32 %9, i32* %1, align 4
  br label %33

10:                                               ; preds = %0
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32*, i32** @mlx_product_names, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = load i32*, i32** @mlx_product_names, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strstr(i8* %17, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %1, align 4
  br label %33

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load i32, i32* @MLXCPLD_LED_PLATFORM_DEFAULT, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %31, %25, %8
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i8* @dmi_get_system_info(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @strstr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
