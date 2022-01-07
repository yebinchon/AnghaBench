; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gk104.c_gk104_clkgate_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gk104.c_gk104_clkgate_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { i32 }
%struct.gk104_therm = type { %struct.TYPE_6__*, %struct.gk104_clkgate_engine_info*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.gk104_clkgate_engine_info = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_SUBDEV_NR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk104_clkgate_enable(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.gk104_therm*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.gk104_clkgate_engine_info*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %7 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %8 = call %struct.gk104_therm* @gk104_therm(%struct.nvkm_therm* %7)
  store %struct.gk104_therm* %8, %struct.gk104_therm** %3, align 8
  %9 = load %struct.gk104_therm*, %struct.gk104_therm** %3, align 8
  %10 = getelementptr inbounds %struct.gk104_therm, %struct.gk104_therm* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.gk104_therm*, %struct.gk104_therm** %3, align 8
  %15 = getelementptr inbounds %struct.gk104_therm, %struct.gk104_therm* %14, i32 0, i32 1
  %16 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %15, align 8
  store %struct.gk104_clkgate_engine_info* %16, %struct.gk104_clkgate_engine_info** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %47, %1
  %18 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %18, i64 %20
  %22 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NVKM_SUBDEV_NR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %17
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %28 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %28, i64 %30
  %32 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @nvkm_device_subdev(%struct.nvkm_device* %27, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %47

37:                                               ; preds = %26
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %39 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %39, i64 %41
  %43 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 131584, %44
  %46 = call i32 @nvkm_mask(%struct.nvkm_device* %38, i64 %45, i32 65280, i32 17664)
  br label %47

47:                                               ; preds = %37, %36
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %52 = load %struct.gk104_therm*, %struct.gk104_therm** %3, align 8
  %53 = getelementptr inbounds %struct.gk104_therm, %struct.gk104_therm* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nvkm_wr32(%struct.nvkm_device* %51, i32 131720, i32 %56)
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %59 = load %struct.gk104_therm*, %struct.gk104_therm** %3, align 8
  %60 = getelementptr inbounds %struct.gk104_therm, %struct.gk104_therm* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nvkm_wr32(%struct.nvkm_device* %58, i32 131724, i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %95, %50
  %66 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %66, i64 %68
  %70 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NVKM_SUBDEV_NR, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %65
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %76 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %76, i64 %78
  %80 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @nvkm_device_subdev(%struct.nvkm_device* %75, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %74
  br label %95

85:                                               ; preds = %74
  %86 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %87 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %87, i64 %89
  %91 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 131584, %92
  %94 = call i32 @nvkm_mask(%struct.nvkm_device* %86, i64 %93, i32 255, i32 69)
  br label %95

95:                                               ; preds = %85, %84
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %65

98:                                               ; preds = %65
  ret void
}

declare dso_local %struct.gk104_therm* @gk104_therm(%struct.nvkm_therm*) #1

declare dso_local i32 @nvkm_device_subdev(%struct.nvkm_device*, i64) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i64, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
