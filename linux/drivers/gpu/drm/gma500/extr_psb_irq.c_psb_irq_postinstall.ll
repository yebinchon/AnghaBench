; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_3__*, %struct.drm_psb_private* }
%struct.TYPE_3__ = type { i64 }
%struct.drm_psb_private = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.drm_device*, i32)* }

@_PSB_CE2_BIF_REQUESTER_FAULT = common dso_local global i32 0, align 4
@PSB_CR_EVENT_HOST_ENABLE2 = common dso_local global i32 0, align 4
@_PSB_CE_TWOD_COMPLETE = common dso_local global i32 0, align 4
@PSB_CR_EVENT_HOST_ENABLE = common dso_local global i32 0, align 4
@PSB_INT_ENABLE_R = common dso_local global i32 0, align 4
@PSB_HWSTAM = common dso_local global i32 0, align 4
@PIPE_VBLANK_INTERRUPT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_irq_postinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 1
  %7 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  store %struct.drm_psb_private* %7, %struct.drm_psb_private** %3, align 8
  %8 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @_PSB_CE2_BIF_REQUESTER_FAULT, align 4
  %13 = load i32, i32* @PSB_CR_EVENT_HOST_ENABLE2, align 4
  %14 = call i32 @PSB_WSGX32(i32 %12, i32 %13)
  %15 = load i32, i32* @_PSB_CE_TWOD_COMPLETE, align 4
  %16 = load i32, i32* @PSB_CR_EVENT_HOST_ENABLE, align 4
  %17 = call i32 @PSB_WSGX32(i32 %15, i32 %16)
  %18 = load i32, i32* @PSB_CR_EVENT_HOST_ENABLE, align 4
  %19 = call i32 @PSB_RSGX32(i32 %18)
  %20 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PSB_INT_ENABLE_R, align 4
  %24 = call i32 @PSB_WVDC32(i32 %22, i32 %23)
  %25 = load i32, i32* @PSB_HWSTAM, align 4
  %26 = call i32 @PSB_WVDC32(i32 -1, i32 %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %36 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %37 = call i32 @psb_enable_pipestat(%struct.drm_psb_private* %35, i32 0, i32 %36)
  br label %42

38:                                               ; preds = %1
  %39 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %40 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %41 = call i32 @psb_disable_pipestat(%struct.drm_psb_private* %39, i32 0, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %52 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %53 = call i32 @psb_enable_pipestat(%struct.drm_psb_private* %51, i32 1, i32 %52)
  br label %58

54:                                               ; preds = %42
  %55 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %56 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %57 = call i32 @psb_disable_pipestat(%struct.drm_psb_private* %55, i32 1, i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %68 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %69 = call i32 @psb_enable_pipestat(%struct.drm_psb_private* %67, i32 2, i32 %68)
  br label %74

70:                                               ; preds = %58
  %71 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %72 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %73 = call i32 @psb_disable_pipestat(%struct.drm_psb_private* %71, i32 2, i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %76 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %78, align 8
  %80 = icmp ne i32 (%struct.drm_device*, i32)* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %83 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %85, align 8
  %87 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %88 = call i32 %86(%struct.drm_device* %87, i32 1)
  br label %89

89:                                               ; preds = %81, %74
  %90 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %90, i32 0, i32 1
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PSB_WSGX32(i32, i32) #1

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @psb_enable_pipestat(%struct.drm_psb_private*, i32, i32) #1

declare dso_local i32 @psb_disable_pipestat(%struct.drm_psb_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
