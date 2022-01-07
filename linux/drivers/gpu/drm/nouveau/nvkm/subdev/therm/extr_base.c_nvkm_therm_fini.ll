; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_therm = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_therm*)* }

@NVKM_THERM_CTRL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*, i32)* @nvkm_therm_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_therm_fini(%struct.nvkm_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_therm*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %7 = call %struct.nvkm_therm* @nvkm_therm(%struct.nvkm_subdev* %6)
  store %struct.nvkm_therm* %7, %struct.nvkm_therm** %5, align 8
  %8 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %11, align 8
  %13 = icmp ne i32 (%struct.nvkm_therm*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %18, align 8
  %20 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %21 = call i32 %19(%struct.nvkm_therm* %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @nvkm_therm_fan_fini(%struct.nvkm_therm* %23, i32 %24)
  %26 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @nvkm_therm_sensor_fini(%struct.nvkm_therm* %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %36 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @NVKM_THERM_CTRL_NONE, align 4
  %38 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %31, %22
  ret i32 0
}

declare dso_local %struct.nvkm_therm* @nvkm_therm(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_therm_fan_fini(%struct.nvkm_therm*, i32) #1

declare dso_local i32 @nvkm_therm_sensor_fini(%struct.nvkm_therm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
