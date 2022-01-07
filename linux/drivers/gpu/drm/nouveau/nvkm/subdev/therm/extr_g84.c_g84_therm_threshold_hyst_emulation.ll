; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_g84.c_g84_therm_threshold_hyst_emulation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_g84.c_g84_therm_threshold_hyst_emulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_therm*)* }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvbios_therm_threshold = type { i32, i32 }

@NVKM_THERM_THRS_HIGHER = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_LOWER = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_RISING = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_therm*, i32, i32, %struct.nvbios_therm_threshold*, i32)* @g84_therm_threshold_hyst_emulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g84_therm_threshold_hyst_emulation(%struct.nvkm_therm* %0, i32 %1, i32 %2, %struct.nvbios_therm_threshold* %3, i32 %4) #0 {
  %6 = alloca %struct.nvkm_therm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvbios_therm_threshold*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nvbios_therm_threshold* %3, %struct.nvbios_therm_threshold** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %18 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %11, align 8
  %21 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @nvkm_therm_sensor_get_threshold_state(%struct.nvkm_therm* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %29 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %5
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %36 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %39 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  %42 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 %34, i32 %41)
  %43 = load i32, i32* @NVKM_THERM_THRS_HIGHER, align 4
  store i32 %43, i32* %14, align 4
  br label %52

44:                                               ; preds = %5
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %48 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 %46, i32 %49)
  %51 = load i32, i32* @NVKM_THERM_THRS_LOWER, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %44, %32
  %53 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %54 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %56, align 8
  %58 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %59 = call i32 %57(%struct.nvkm_therm* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @NVKM_THERM_THRS_LOWER, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %66 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @NVKM_THERM_THRS_HIGHER, align 4
  store i32 %70, i32* %14, align 4
  br label %88

71:                                               ; preds = %63, %52
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @NVKM_THERM_THRS_HIGHER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %78 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %81 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  %84 = icmp slt i32 %76, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @NVKM_THERM_THRS_LOWER, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %85, %75, %71
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @nvkm_therm_sensor_set_threshold_state(%struct.nvkm_therm* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @NVKM_THERM_THRS_RISING, align 4
  store i32 %97, i32* %12, align 4
  br label %106

98:                                               ; preds = %88
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @NVKM_THERM_THRS_FALLING, align 4
  store i32 %103, i32* %12, align 4
  br label %105

104:                                              ; preds = %98
  br label %111

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %105, %96
  %107 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @nvkm_therm_sensor_event(%struct.nvkm_therm* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %104
  ret void
}

declare dso_local i32 @nvkm_therm_sensor_get_threshold_state(%struct.nvkm_therm*, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_therm_sensor_set_threshold_state(%struct.nvkm_therm*, i32, i32) #1

declare dso_local i32 @nvkm_therm_sensor_event(%struct.nvkm_therm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
