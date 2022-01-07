; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gk104.c_gk104_clkgate_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gk104.c_gk104_clkgate_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { i32 }
%struct.gk104_therm = type { %struct.gk104_clkgate_engine_info*, %struct.TYPE_4__ }
%struct.gk104_clkgate_engine_info = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_SUBDEV_NR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk104_clkgate_fini(%struct.nvkm_therm* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gk104_therm*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.gk104_clkgate_engine_info*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %10 = call %struct.gk104_therm* @gk104_therm(%struct.nvkm_therm* %9)
  store %struct.gk104_therm* %10, %struct.gk104_therm** %5, align 8
  %11 = load %struct.gk104_therm*, %struct.gk104_therm** %5, align 8
  %12 = getelementptr inbounds %struct.gk104_therm, %struct.gk104_therm* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %6, align 8
  %16 = load %struct.gk104_therm*, %struct.gk104_therm** %5, align 8
  %17 = getelementptr inbounds %struct.gk104_therm, %struct.gk104_therm* %16, i32 0, i32 0
  %18 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %17, align 8
  store %struct.gk104_clkgate_engine_info* %18, %struct.gk104_clkgate_engine_info** %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %49, %2
  %20 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %20, i64 %22
  %24 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NVKM_SUBDEV_NR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %19
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %30 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %30, i64 %32
  %34 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @nvkm_device_subdev(%struct.nvkm_device* %29, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %49

39:                                               ; preds = %28
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %41 = load %struct.gk104_clkgate_engine_info*, %struct.gk104_clkgate_engine_info** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %41, i64 %43
  %45 = getelementptr inbounds %struct.gk104_clkgate_engine_info, %struct.gk104_clkgate_engine_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 131584, %46
  %48 = call i32 @nvkm_mask(%struct.nvkm_device* %40, i64 %47, i32 255, i32 84)
  br label %49

49:                                               ; preds = %39, %38
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %19

52:                                               ; preds = %19
  ret void
}

declare dso_local %struct.gk104_therm* @gk104_therm(%struct.nvkm_therm*) #1

declare dso_local i32 @nvkm_device_subdev(%struct.nvkm_device*, i64) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
