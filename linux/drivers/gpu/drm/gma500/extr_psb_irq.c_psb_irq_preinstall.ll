; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_preinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_preinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.drm_psb_private = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@PSB_HWSTAM = common dso_local global i32 0, align 4
@PSB_INT_MASK_R = common dso_local global i32 0, align 4
@PSB_INT_ENABLE_R = common dso_local global i32 0, align 4
@PSB_CR_EVENT_HOST_ENABLE = common dso_local global i32 0, align 4
@_PSB_VSYNC_PIPEA_FLAG = common dso_local global i32 0, align 4
@_PSB_VSYNC_PIPEB_FLAG = common dso_local global i32 0, align 4
@_PSB_IRQ_DISP_HOTSYNC = common dso_local global i32 0, align 4
@_PSB_IRQ_ASLE = common dso_local global i32 0, align 4
@_PSB_IRQ_SGX_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_irq_preinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.drm_psb_private*
  store %struct.drm_psb_private* %8, %struct.drm_psb_private** %3, align 8
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = call i64 @gma_power_is_on(%struct.drm_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @PSB_HWSTAM, align 4
  %18 = call i32 @PSB_WVDC32(i32 -1, i32 %17)
  %19 = load i32, i32* @PSB_INT_MASK_R, align 4
  %20 = call i32 @PSB_WVDC32(i32 0, i32 %19)
  %21 = load i32, i32* @PSB_INT_ENABLE_R, align 4
  %22 = call i32 @PSB_WVDC32(i32 0, i32 %21)
  %23 = load i32, i32* @PSB_CR_EVENT_HOST_ENABLE, align 4
  %24 = call i32 @PSB_WSGX32(i32 0, i32 %23)
  %25 = load i32, i32* @PSB_CR_EVENT_HOST_ENABLE, align 4
  %26 = call i32 @PSB_RSGX32(i32 %25)
  br label %27

27:                                               ; preds = %16, %1
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* @_PSB_VSYNC_PIPEA_FLAG, align 4
  %37 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %27
  %42 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @_PSB_VSYNC_PIPEB_FLAG, align 4
  %51 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %52 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %41
  %56 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %57 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @_PSB_IRQ_DISP_HOTSYNC, align 4
  %64 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %65 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load i32, i32* @_PSB_IRQ_ASLE, align 4
  %70 = load i32, i32* @_PSB_IRQ_SGX_FLAG, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %73 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %77 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = xor i32 %78, -1
  %80 = load i32, i32* @PSB_INT_MASK_R, align 4
  %81 = call i32 @PSB_WVDC32(i32 %79, i32 %80)
  %82 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %83 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %82, i32 0, i32 1
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @gma_power_is_on(%struct.drm_device*) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @PSB_WSGX32(i32, i32) #1

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
