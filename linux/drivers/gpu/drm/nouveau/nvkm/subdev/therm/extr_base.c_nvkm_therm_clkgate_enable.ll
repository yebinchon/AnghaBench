; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_clkgate_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_clkgate_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_therm*)* }

@.str = private unnamed_addr constant [22 x i8] c"Enabling clockgating\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_therm_clkgate_enable(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %3 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %4 = icmp ne %struct.nvkm_therm* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %9, align 8
  %11 = icmp ne i32 (%struct.nvkm_therm*)* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %5, %1
  br label %29

18:                                               ; preds = %12
  %19 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %20 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %19, i32 0, i32 1
  %21 = call i32 @nvkm_debug(i32* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %23 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %25, align 8
  %27 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %28 = call i32 %26(%struct.nvkm_therm* %27)
  br label %29

29:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @nvkm_debug(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
