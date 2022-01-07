; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_nv04.c_nv04_timer_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_nv04.c_nv04_timer_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_timer = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"time low        : %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"time high       : %08x\0A\00", align 1
@NV04_PTIMER_TIME_1 = common dso_local global i32 0, align 4
@NV04_PTIMER_TIME_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv04_timer_time(%struct.nvkm_timer* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_timer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_timer* %0, %struct.nvkm_timer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nvkm_timer*, %struct.nvkm_timer** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_timer, %struct.nvkm_timer* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %5, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @upper_32_bits(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @lower_32_bits(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @nvkm_debug(%struct.nvkm_subdev* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @nvkm_debug(%struct.nvkm_subdev* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %25 = load i32, i32* @NV04_PTIMER_TIME_1, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 %25, i32 %26)
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %29 = load i32, i32* @NV04_PTIMER_TIME_0, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
