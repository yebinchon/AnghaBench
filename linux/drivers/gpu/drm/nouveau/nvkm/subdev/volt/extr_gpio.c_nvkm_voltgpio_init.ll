; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gpio.c_nvkm_voltgpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gpio.c_nvkm_voltgpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { i32, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_gpio* }
%struct.nvkm_gpio = type { i32 }
%struct.dcb_gpio_func = type { i32 }

@tags = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"VID bit %d has no GPIO\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_voltgpio_init(%struct.nvkm_volt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_volt*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_gpio*, align 8
  %6 = alloca %struct.dcb_gpio_func, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %3, align 8
  %9 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %9, i32 0, i32 1
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %4, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %14, align 8
  store %struct.nvkm_gpio* %15, %struct.nvkm_gpio** %5, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %59, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** @tags, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  %22 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %21
  %30 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %31 = load i32*, i32** @tags, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nvkm_gpio_find(%struct.nvkm_gpio* %30, i32 0, i32 %35, i32 255, %struct.dcb_gpio_func* %6)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %63

46:                                               ; preds = %39
  %47 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @nvkm_debug(%struct.nvkm_subdev* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %54 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %46, %29
  br label %58

58:                                               ; preds = %57, %21
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %16

62:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %44
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvkm_gpio_find(%struct.nvkm_gpio*, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
