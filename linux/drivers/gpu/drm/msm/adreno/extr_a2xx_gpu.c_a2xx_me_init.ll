; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_me_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_me_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__*, %struct.msm_ringbuffer** }
%struct.TYPE_2__ = type { i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)* }
%struct.msm_ringbuffer = type { i32 }

@CP_ME_INIT = common dso_local global i32 0, align 4
@REG_A2XX_RB_SURFACE_INFO = common dso_local global i32 0, align 4
@REG_A2XX_PA_SC_WINDOW_OFFSET = common dso_local global i32 0, align 4
@REG_A2XX_VGT_MAX_VTX_INDX = common dso_local global i32 0, align 4
@REG_A2XX_SQ_PROGRAM_CNTL = common dso_local global i32 0, align 4
@REG_A2XX_RB_DEPTHCONTROL = common dso_local global i32 0, align 4
@REG_A2XX_PA_SU_POINT_SIZE = common dso_local global i32 0, align 4
@REG_A2XX_PA_SC_LINE_CNTL = common dso_local global i32 0, align 4
@REG_A2XX_PA_SU_POLY_OFFSET_FRONT_SCALE = common dso_local global i32 0, align 4
@CP_SET_PROTECTED_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a2xx_me_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2xx_me_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %4 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %5 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %4, i32 0, i32 1
  %6 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %5, align 8
  %7 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, i64 0
  %8 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  store %struct.msm_ringbuffer* %8, %struct.msm_ringbuffer** %3, align 8
  %9 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %10 = load i32, i32* @CP_ME_INIT, align 4
  %11 = call i32 @OUT_PKT3(%struct.msm_ringbuffer* %9, i32 %10, i32 18)
  %12 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %13 = call i32 @OUT_RING(%struct.msm_ringbuffer* %12, i32 1023)
  %14 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %15 = call i32 @OUT_RING(%struct.msm_ringbuffer* %14, i32 0)
  %16 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %17 = call i32 @OUT_RING(%struct.msm_ringbuffer* %16, i32 0)
  %18 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %19 = load i32, i32* @REG_A2XX_RB_SURFACE_INFO, align 4
  %20 = sub nsw i32 %19, 8192
  %21 = call i32 @OUT_RING(%struct.msm_ringbuffer* %18, i32 %20)
  %22 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %23 = load i32, i32* @REG_A2XX_PA_SC_WINDOW_OFFSET, align 4
  %24 = sub nsw i32 %23, 8192
  %25 = call i32 @OUT_RING(%struct.msm_ringbuffer* %22, i32 %24)
  %26 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %27 = load i32, i32* @REG_A2XX_VGT_MAX_VTX_INDX, align 4
  %28 = sub nsw i32 %27, 8192
  %29 = call i32 @OUT_RING(%struct.msm_ringbuffer* %26, i32 %28)
  %30 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %31 = load i32, i32* @REG_A2XX_SQ_PROGRAM_CNTL, align 4
  %32 = sub nsw i32 %31, 8192
  %33 = call i32 @OUT_RING(%struct.msm_ringbuffer* %30, i32 %32)
  %34 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %35 = load i32, i32* @REG_A2XX_RB_DEPTHCONTROL, align 4
  %36 = sub nsw i32 %35, 8192
  %37 = call i32 @OUT_RING(%struct.msm_ringbuffer* %34, i32 %36)
  %38 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %39 = load i32, i32* @REG_A2XX_PA_SU_POINT_SIZE, align 4
  %40 = sub nsw i32 %39, 8192
  %41 = call i32 @OUT_RING(%struct.msm_ringbuffer* %38, i32 %40)
  %42 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %43 = load i32, i32* @REG_A2XX_PA_SC_LINE_CNTL, align 4
  %44 = sub nsw i32 %43, 8192
  %45 = call i32 @OUT_RING(%struct.msm_ringbuffer* %42, i32 %44)
  %46 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %47 = load i32, i32* @REG_A2XX_PA_SU_POLY_OFFSET_FRONT_SCALE, align 4
  %48 = sub nsw i32 %47, 8192
  %49 = call i32 @OUT_RING(%struct.msm_ringbuffer* %46, i32 %48)
  %50 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %51 = call i32 @OUT_RING(%struct.msm_ringbuffer* %50, i32 -2147483264)
  %52 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %53 = call i32 @OUT_RING(%struct.msm_ringbuffer* %52, i32 1)
  %54 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %55 = call i32 @OUT_RING(%struct.msm_ringbuffer* %54, i32 0)
  %56 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %57 = call i32 @OUT_RING(%struct.msm_ringbuffer* %56, i32 0)
  %58 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %59 = call i32 @OUT_RING(%struct.msm_ringbuffer* %58, i32 536871410)
  %60 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %61 = call i32 @OUT_RING(%struct.msm_ringbuffer* %60, i32 0)
  %62 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %63 = call i32 @OUT_RING(%struct.msm_ringbuffer* %62, i32 0)
  %64 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %65 = load i32, i32* @CP_SET_PROTECTED_MODE, align 4
  %66 = call i32 @OUT_PKT3(%struct.msm_ringbuffer* %64, i32 %65, i32 1)
  %67 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %68 = call i32 @OUT_RING(%struct.msm_ringbuffer* %67, i32 1)
  %69 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %70 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)*, i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)** %72, align 8
  %74 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %75 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %76 = call i32 %73(%struct.msm_gpu* %74, %struct.msm_ringbuffer* %75)
  %77 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %78 = call i32 @a2xx_idle(%struct.msm_gpu* %77)
  ret i32 %78
}

declare dso_local i32 @OUT_PKT3(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @a2xx_idle(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
