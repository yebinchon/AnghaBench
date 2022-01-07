; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_nv04.c_nv04_timer_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_nv04.c_nv04_timer_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_timer = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV04_PTIMER_INTR_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv04_timer_intr(%struct.nvkm_timer* %0) #0 {
  %2 = alloca %struct.nvkm_timer*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_timer* %0, %struct.nvkm_timer** %2, align 8
  %6 = load %struct.nvkm_timer*, %struct.nvkm_timer** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_timer, %struct.nvkm_timer* %6, i32 0, i32 0
  store %struct.nvkm_subdev* %7, %struct.nvkm_subdev** %3, align 8
  %8 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %4, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %12 = load i32, i32* @NV04_PTIMER_INTR_0, align 4
  %13 = call i32 @nvkm_rd32(%struct.nvkm_device* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %19 = load i32, i32* @NV04_PTIMER_INTR_0, align 4
  %20 = call i32 @nvkm_wr32(%struct.nvkm_device* %18, i32 %19, i32 1)
  %21 = load %struct.nvkm_timer*, %struct.nvkm_timer** %2, align 8
  %22 = call i32 @nvkm_timer_alarm_trigger(%struct.nvkm_timer* %21)
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, -2
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %17, %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @nvkm_error(%struct.nvkm_subdev* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %33 = load i32, i32* @NV04_PTIMER_INTR_0, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_timer_alarm_trigger(%struct.nvkm_timer*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
