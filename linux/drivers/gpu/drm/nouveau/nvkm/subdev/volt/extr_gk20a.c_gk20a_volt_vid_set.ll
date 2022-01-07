; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk20a.c_gk20a_volt_vid_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk20a.c_gk20a_volt_vid_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { i32 }
%struct.gk20a_volt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.nvkm_subdev }
%struct.TYPE_3__ = type { i32 }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"set voltage as %duv\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_volt*, i64)* @gk20a_volt_vid_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_volt_vid_set(%struct.nvkm_volt* %0, i64 %1) #0 {
  %3 = alloca %struct.nvkm_volt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gk20a_volt*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %8 = call %struct.gk20a_volt* @gk20a_volt(%struct.nvkm_volt* %7)
  store %struct.gk20a_volt* %8, %struct.gk20a_volt** %5, align 8
  %9 = load %struct.gk20a_volt*, %struct.gk20a_volt** %5, align 8
  %10 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %6, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %13 = load %struct.gk20a_volt*, %struct.gk20a_volt** %5, align 8
  %14 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nvkm_debug(%struct.nvkm_subdev* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.gk20a_volt*, %struct.gk20a_volt** %5, align 8
  %23 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gk20a_volt*, %struct.gk20a_volt** %5, align 8
  %26 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_set_voltage(i32 %24, i32 %32, i32 1200000)
  ret i32 %33
}

declare dso_local %struct.gk20a_volt* @gk20a_volt(%struct.nvkm_volt*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
