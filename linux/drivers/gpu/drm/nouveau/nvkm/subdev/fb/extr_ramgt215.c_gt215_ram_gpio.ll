; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_ram_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_ram_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_ramfuc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_gpio* }
%struct.nvkm_gpio = type { i32 }
%struct.dcb_gpio_func = type { i32, i32* }

@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gt215_ramfuc*, i32, i64)* @gt215_ram_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gt215_ram_gpio(%struct.gt215_ramfuc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.gt215_ramfuc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_gpio*, align 8
  %8 = alloca %struct.dcb_gpio_func, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.gt215_ramfuc* %0, %struct.gt215_ramfuc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %4, align 8
  %14 = getelementptr inbounds %struct.gt215_ramfuc, %struct.gt215_ramfuc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %20, align 8
  store %struct.nvkm_gpio* %21, %struct.nvkm_gpio** %7, align 8
  %22 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %25 = call i64 @nvkm_gpio_get(%struct.nvkm_gpio* %22, i32 0, i32 %23, i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %96

28:                                               ; preds = %3
  %29 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %32 = call i32 @nvkm_gpio_find(%struct.nvkm_gpio* %29, i32 0, i32 %30, i32 %31, %struct.dcb_gpio_func* %8)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %96

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 3
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %9, align 8
  %41 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 7
  %44 = shl i32 %43, 2
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %10, align 8
  %46 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %4, align 8
  %47 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %47, i64 %48
  %50 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ram_rd32(%struct.gt215_ramfuc* %46, i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 8, %55
  %57 = sext i32 %56 to i64
  %58 = and i64 %53, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %36
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %60, %36
  %67 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %8, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %4, align 8
  %81 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %81, i64 %82
  %84 = load i64, i64* %10, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 3, %85
  %87 = load i64, i64* %6, align 8
  %88 = or i64 %87, 2
  %89 = load i64, i64* %10, align 8
  %90 = shl i64 %88, %89
  %91 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %83, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ram_mask(%struct.gt215_ramfuc* %80, i32 %92, i32 %86, i64 %90)
  %94 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %4, align 8
  %95 = call i32 @ram_nsec(%struct.gt215_ramfuc* %94, i32 20000)
  br label %96

96:                                               ; preds = %35, %79, %3
  ret void
}

declare dso_local i64 @nvkm_gpio_get(%struct.nvkm_gpio*, i32, i32, i32) #1

declare dso_local i32 @nvkm_gpio_find(%struct.nvkm_gpio*, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local i64 @ram_rd32(%struct.gt215_ramfuc*, i32) #1

declare dso_local i32 @ram_mask(%struct.gt215_ramfuc*, i32, i32, i64) #1

declare dso_local i32 @ram_nsec(%struct.gt215_ramfuc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
