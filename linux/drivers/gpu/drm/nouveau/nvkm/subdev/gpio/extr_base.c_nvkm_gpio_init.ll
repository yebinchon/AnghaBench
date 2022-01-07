; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_base.c_nvkm_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_base.c_nvkm_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_gpio = type { i32 }
%struct.dcb_gpio_func = type { i32, i32 }

@gpio_reset_ids = common dso_local global i32 0, align 4
@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"NvPowerChecks\00", align 1
@power_checks = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [101 x i8] c"GPU is missing power, check its power cables.  Boot with nouveau.config=NvPowerChecks=0 to disable.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_gpio_init(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_gpio*, align 8
  %5 = alloca %struct.dcb_gpio_func, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  %8 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %9 = call %struct.nvkm_gpio* @nvkm_gpio(%struct.nvkm_subdev* %8)
  store %struct.nvkm_gpio* %9, %struct.nvkm_gpio** %4, align 8
  %10 = load i32, i32* @gpio_reset_ids, align 4
  %11 = call i64 @dmi_check_system(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %4, align 8
  %15 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %16 = call i32 @nvkm_gpio_reset(%struct.nvkm_gpio* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nvkm_boolopt(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %59, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** @power_checks, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  %32 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %4, align 8
  %33 = load i32*, i32** @power_checks, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %39 = call i32 @nvkm_gpio_find(%struct.nvkm_gpio* %32, i32 0, i32 %37, i32 %38, %struct.dcb_gpio_func* %5)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %59

43:                                               ; preds = %31
  %44 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %4, align 8
  %45 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %44, i32 0, i32 %46, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %59

53:                                               ; preds = %43
  %54 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %4, align 8
  %55 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %54, i32 0, i32 0
  %56 = call i32 @nvkm_error(i32* %55, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %52, %42
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %26

62:                                               ; preds = %26
  br label %63

63:                                               ; preds = %62, %17
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.nvkm_gpio* @nvkm_gpio(%struct.nvkm_subdev*) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @nvkm_gpio_reset(%struct.nvkm_gpio*, i32) #1

declare dso_local i64 @nvkm_boolopt(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvkm_gpio_find(%struct.nvkm_gpio*, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local i32 @nvkm_gpio_get(%struct.nvkm_gpio*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
