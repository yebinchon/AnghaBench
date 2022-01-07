; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv50.c_nv50_temp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv50.c_nv50_temp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.nvbios_therm_sensor, %struct.TYPE_2__ }
%struct.nvbios_therm_sensor = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_therm*)* @nv50_temp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_temp_get(%struct.nvkm_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvbios_therm_sensor*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  %7 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %4, align 8
  %11 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %11, i32 0, i32 0
  store %struct.nvbios_therm_sensor* %12, %struct.nvbios_therm_sensor** %5, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %14 = call i32 @nvkm_rd32(%struct.nvkm_device* %13, i32 131092)
  %15 = and i32 %14, 16383
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %17 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %22 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %27 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %32 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %25, %20, %1
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %68

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %41 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %45 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %43, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %50 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %53 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  %56 = add nsw i32 %48, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %59 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %35
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
