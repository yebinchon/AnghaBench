; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_uninstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__*, %struct.drm_psb_private* }
%struct.TYPE_4__ = type { i64 }
%struct.drm_psb_private = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.drm_device*, i32)* }

@PSB_HWSTAM = common dso_local global i32 0, align 4
@PIPE_VBLANK_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@_PSB_IRQ_SGX_FLAG = common dso_local global i32 0, align 4
@_PSB_IRQ_MSVDX_FLAG = common dso_local global i32 0, align 4
@_LNC_IRQ_TOPAZ_FLAG = common dso_local global i32 0, align 4
@PSB_INT_MASK_R = common dso_local global i32 0, align 4
@PSB_INT_ENABLE_R = common dso_local global i32 0, align 4
@PSB_INT_IDENTITY_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_irq_uninstall(%struct.drm_device* %0) #0 {
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
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.drm_device*, i32)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %22, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = call i32 %23(%struct.drm_device* %24, i32 0)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load i32, i32* @PSB_HWSTAM, align 4
  %28 = call i32 @PSB_WVDC32(i32 -1, i32 %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %38 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %39 = call i32 @psb_disable_pipestat(%struct.drm_psb_private* %37, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %36, %26
  %41 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %50 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %51 = call i32 @psb_disable_pipestat(%struct.drm_psb_private* %49, i32 1, i32 %50)
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %62 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %63 = call i32 @psb_disable_pipestat(%struct.drm_psb_private* %61, i32 2, i32 %62)
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* @_PSB_IRQ_SGX_FLAG, align 4
  %66 = load i32, i32* @_PSB_IRQ_MSVDX_FLAG, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @_LNC_IRQ_TOPAZ_FLAG, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %71 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %75 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = xor i32 %76, -1
  %78 = load i32, i32* @PSB_INT_MASK_R, align 4
  %79 = call i32 @PSB_WVDC32(i32 %77, i32 %78)
  %80 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %81 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PSB_INT_ENABLE_R, align 4
  %84 = call i32 @PSB_WVDC32(i32 %82, i32 %83)
  %85 = call i32 (...) @wmb()
  %86 = load i32, i32* @PSB_INT_IDENTITY_R, align 4
  %87 = call i32 @PSB_RVDC32(i32 %86)
  %88 = load i32, i32* @PSB_INT_IDENTITY_R, align 4
  %89 = call i32 @PSB_WVDC32(i32 %87, i32 %88)
  %90 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %90, i32 0, i32 1
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @psb_disable_pipestat(%struct.drm_psb_private*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @PSB_RVDC32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
