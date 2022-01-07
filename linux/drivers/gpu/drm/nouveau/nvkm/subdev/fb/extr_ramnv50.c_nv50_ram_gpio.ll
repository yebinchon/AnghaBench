; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_ram_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_ram_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_ramseq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_gpio* }
%struct.nvkm_gpio = type { i32 }
%struct.dcb_gpio_func = type { i32, i32* }

@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_ramseq*, i32, i64)* @nv50_ram_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_ram_gpio(%struct.nv50_ramseq* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.nv50_ramseq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_gpio*, align 8
  %8 = alloca %struct.dcb_gpio_func, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.nv50_ramseq* %0, %struct.nv50_ramseq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %4, align 8
  %14 = getelementptr inbounds %struct.nv50_ramseq, %struct.nv50_ramseq* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %19, align 8
  store %struct.nvkm_gpio* %20, %struct.nvkm_gpio** %7, align 8
  %21 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %24 = call i64 @nvkm_gpio_get(%struct.nvkm_gpio* %21, i32 0, i32 %22, i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %95

27:                                               ; preds = %3
  %28 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %31 = call i32 @nvkm_gpio_find(%struct.nvkm_gpio* %28, i32 0, i32 %29, i32 %30, %struct.dcb_gpio_func* %8)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %95

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 3
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  %40 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 7
  %43 = shl i32 %42, 2
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %4, align 8
  %46 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %46, i64 %47
  %49 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ram_rd32(%struct.nv50_ramseq* %45, i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 8, %54
  %56 = sext i32 %55 to i64
  %57 = and i64 %52, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %35
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %59, %35
  %66 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %8, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %72, %65
  %79 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %4, align 8
  %80 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %80, i64 %81
  %83 = load i64, i64* %10, align 8
  %84 = trunc i64 %83 to i32
  %85 = shl i32 3, %84
  %86 = load i64, i64* %6, align 8
  %87 = or i64 %86, 2
  %88 = load i64, i64* %10, align 8
  %89 = shl i64 %87, %88
  %90 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %82, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ram_mask(%struct.nv50_ramseq* %79, i32 %91, i32 %85, i64 %89)
  %93 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %4, align 8
  %94 = call i32 @ram_nsec(%struct.nv50_ramseq* %93, i32 20000)
  br label %95

95:                                               ; preds = %34, %78, %3
  ret void
}

declare dso_local i64 @nvkm_gpio_get(%struct.nvkm_gpio*, i32, i32, i32) #1

declare dso_local i32 @nvkm_gpio_find(%struct.nvkm_gpio*, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local i64 @ram_rd32(%struct.nv50_ramseq*, i32) #1

declare dso_local i32 @ram_mask(%struct.nv50_ramseq*, i32, i32, i64) #1

declare dso_local i32 @ram_nsec(%struct.nv50_ramseq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
