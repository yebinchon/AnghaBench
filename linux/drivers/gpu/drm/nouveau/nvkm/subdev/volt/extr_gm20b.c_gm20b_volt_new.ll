; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gm20b.c_gm20b_volt_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gm20b.c_gm20b_volt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_device_tegra* (%struct.nvkm_device*)* }
%struct.nvkm_device_tegra = type { i64 }
%struct.nvkm_volt = type { i32 }
%struct.gk20a_volt = type { %struct.nvkm_volt }

@speedo_to_vmin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"unsupported speedo %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gm20b_na_cvb_coef = common dso_local global i32* null, align 8
@gm20b_cvb_coef = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gm20b_volt_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_volt** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_volt**, align 8
  %8 = alloca %struct.nvkm_device_tegra*, align 8
  %9 = alloca %struct.gk20a_volt*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_volt** %2, %struct.nvkm_volt*** %7, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device_tegra* (%struct.nvkm_device*)*, %struct.nvkm_device_tegra* (%struct.nvkm_device*)** %14, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %17 = call %struct.nvkm_device_tegra* %15(%struct.nvkm_device* %16)
  store %struct.nvkm_device_tegra* %17, %struct.nvkm_device_tegra** %8, align 8
  %18 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %19 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32*, i32** @speedo_to_vmin, align 8
  %22 = call i64 @ARRAY_SIZE(i32* %21)
  %23 = icmp uge i64 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %26 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %27 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @nvdev_error(%struct.nvkm_device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %72

32:                                               ; preds = %3
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.gk20a_volt* @kzalloc(i32 4, i32 %33)
  store %struct.gk20a_volt* %34, %struct.gk20a_volt** %9, align 8
  %35 = load %struct.gk20a_volt*, %struct.gk20a_volt** %9, align 8
  %36 = icmp ne %struct.gk20a_volt* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %72

40:                                               ; preds = %32
  %41 = load %struct.gk20a_volt*, %struct.gk20a_volt** %9, align 8
  %42 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %41, i32 0, i32 0
  %43 = load %struct.nvkm_volt**, %struct.nvkm_volt*** %7, align 8
  store %struct.nvkm_volt* %42, %struct.nvkm_volt** %43, align 8
  %44 = load i32*, i32** @speedo_to_vmin, align 8
  %45 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %46 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %51 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %52, 1
  br i1 %53, label %54, label %63

54:                                               ; preds = %40
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** @gm20b_na_cvb_coef, align 8
  %58 = load i32*, i32** @gm20b_na_cvb_coef, align 8
  %59 = call i64 @ARRAY_SIZE(i32* %58)
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.gk20a_volt*, %struct.gk20a_volt** %9, align 8
  %62 = call i32 @gk20a_volt_ctor(%struct.nvkm_device* %55, i32 %56, i32* %57, i64 %59, i32 %60, %struct.gk20a_volt* %61)
  store i32 %62, i32* %4, align 4
  br label %72

63:                                               ; preds = %40
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** @gm20b_cvb_coef, align 8
  %67 = load i32*, i32** @gm20b_cvb_coef, align 8
  %68 = call i64 @ARRAY_SIZE(i32* %67)
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.gk20a_volt*, %struct.gk20a_volt** %9, align 8
  %71 = call i32 @gk20a_volt_ctor(%struct.nvkm_device* %64, i32 %65, i32* %66, i64 %68, i32 %69, %struct.gk20a_volt* %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %63, %54, %37, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvdev_error(%struct.nvkm_device*, i8*, i64) #1

declare dso_local %struct.gk20a_volt* @kzalloc(i32, i32) #1

declare dso_local i32 @gk20a_volt_ctor(%struct.nvkm_device*, i32, i32*, i64, i32, %struct.gk20a_volt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
