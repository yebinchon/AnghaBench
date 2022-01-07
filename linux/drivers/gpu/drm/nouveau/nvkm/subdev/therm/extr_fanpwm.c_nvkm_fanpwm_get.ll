; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fanpwm.c_nvkm_fanpwm_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fanpwm.c_nvkm_fanpwm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_5__*, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32 (%struct.nvkm_therm*, i32, i32*, i32*)* }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.nvkm_gpio* }
%struct.nvkm_gpio = type { i32 }
%struct.nvkm_fanpwm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32, i32 }

@NV_40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_therm*)* @nvkm_fanpwm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_fanpwm_get(%struct.nvkm_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca %struct.nvkm_fanpwm*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  %11 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.nvkm_fanpwm*
  store %struct.nvkm_fanpwm* %15, %struct.nvkm_fanpwm** %4, align 8
  %16 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %5, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 1
  %22 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %21, align 8
  store %struct.nvkm_gpio* %22, %struct.nvkm_gpio** %6, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.nvkm_therm*, i32, i32*, i32*)*, i32 (%struct.nvkm_therm*, i32, i32*, i32*)** %29, align 8
  %31 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %32 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_fanpwm, %struct.nvkm_fanpwm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %30(%struct.nvkm_therm* %31, i32 %35, i32* %8, i32* %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %1
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @max(i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NV_40, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %4, align 8
  %51 = getelementptr inbounds %struct.nvkm_fanpwm, %struct.nvkm_fanpwm* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49, %42
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %49
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %63, 100
  %65 = load i32, i32* %8, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %2, align 4
  br label %79

67:                                               ; preds = %39, %1
  %68 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %69 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %4, align 8
  %70 = getelementptr inbounds %struct.nvkm_fanpwm, %struct.nvkm_fanpwm* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %4, align 8
  %74 = getelementptr inbounds %struct.nvkm_fanpwm, %struct.nvkm_fanpwm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %68, i32 0, i32 %72, i32 %76)
  %78 = mul nsw i32 %77, 100
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %67, %62
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nvkm_gpio_get(%struct.nvkm_gpio*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
