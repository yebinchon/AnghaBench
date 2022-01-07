; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk20a.c_gk20a_volt_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk20a.c_gk20a_volt_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_device_tegra* (%struct.nvkm_device*)* }
%struct.nvkm_device_tegra = type { i32, i32 }
%struct.cvb_coef = type { i32 }
%struct.gk20a_volt = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@gk20a_volt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"the default voltage is %duV\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%2d: vid=%d, uv=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_volt_ctor(%struct.nvkm_device* %0, i32 %1, %struct.cvb_coef* %2, i32 %3, i32 %4, %struct.gk20a_volt* %5) #0 {
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cvb_coef*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gk20a_volt*, align 8
  %13 = alloca %struct.nvkm_device_tegra*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.cvb_coef* %2, %struct.cvb_coef** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.gk20a_volt* %5, %struct.gk20a_volt** %12, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device_tegra* (%struct.nvkm_device*)*, %struct.nvkm_device_tegra* (%struct.nvkm_device*)** %19, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %22 = call %struct.nvkm_device_tegra* %20(%struct.nvkm_device* %21)
  store %struct.nvkm_device_tegra* %22, %struct.nvkm_device_tegra** %13, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %26 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %25, i32 0, i32 0
  %27 = call i32 @nvkm_volt_ctor(i32* @gk20a_volt, %struct.nvkm_device* %23, i32 %24, %struct.TYPE_6__* %26)
  %28 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %13, align 8
  %29 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regulator_get_voltage(i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %33 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %15, align 4
  %36 = call i32 (i32*, i8*, i32, ...) @nvkm_debug(i32* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %13, align 8
  %38 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %41 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %44 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %104, %6
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %49 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %107

53:                                               ; preds = %46
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %56 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %54, i32* %62, align 4
  %63 = load %struct.cvb_coef*, %struct.cvb_coef** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cvb_coef, %struct.cvb_coef* %63, i64 %65
  %67 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %13, align 8
  %68 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @gk20a_volt_calc_voltage(%struct.cvb_coef* %66, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @max(i32 %70, i32 %71)
  %73 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %74 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %72, i32* %80, align 4
  %81 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %82 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %86 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.gk20a_volt*, %struct.gk20a_volt** %12, align 8
  %95 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32*, i8*, i32, ...) @nvkm_debug(i32* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %93, i32 %102)
  br label %104

104:                                              ; preds = %53
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %46

107:                                              ; preds = %46
  ret i32 0
}

declare dso_local i32 @nvkm_volt_ctor(i32*, %struct.nvkm_device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, i32, ...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @gk20a_volt_calc_voltage(%struct.cvb_coef*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
