; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_plane.c_fsl_dcu_drm_plane_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_plane.c_fsl_dcu_drm_plane_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fsl_dcu_drm_device* }
%struct.fsl_dcu_drm_device = type { i32 }
%struct.drm_plane_state = type { i32 }

@DCU_LAYER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @fsl_dcu_drm_plane_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_dcu_drm_plane_atomic_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.fsl_dcu_drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %9 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %11, align 8
  store %struct.fsl_dcu_drm_device* %12, %struct.fsl_dcu_drm_device** %5, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %14 = call i32 @fsl_dcu_drm_plane_index(%struct.drm_plane* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @DCU_CTRLDESCLN(i32 %22, i32 4)
  %24 = call i32 @regmap_read(i32 %21, i32 %23, i32* %6)
  %25 = load i32, i32* @DCU_LAYER_EN, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @DCU_CTRLDESCLN(i32 %32, i32 4)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @regmap_write(i32 %31, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @fsl_dcu_drm_plane_index(%struct.drm_plane*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @DCU_CTRLDESCLN(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
