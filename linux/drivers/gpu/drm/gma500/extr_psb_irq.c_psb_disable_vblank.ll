; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, i32 }

@_PSB_VSYNC_PIPEA_FLAG = common dso_local global i32 0, align 4
@_PSB_VSYNC_PIPEB_FLAG = common dso_local global i32 0, align 4
@PSB_INT_MASK_R = common dso_local global i32 0, align 4
@PSB_INT_ENABLE_R = common dso_local global i32 0, align 4
@PIPE_VBLANK_INTERRUPT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_disable_vblank(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  store %struct.drm_psb_private* %9, %struct.drm_psb_private** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call i64 @IS_MFLD(%struct.drm_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @mdfld_disable_te(%struct.drm_device* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %19 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* @_PSB_VSYNC_PIPEA_FLAG, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %28 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %42

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @_PSB_VSYNC_PIPEB_FLAG, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %38 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %31
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %44 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* @PSB_INT_MASK_R, align 4
  %48 = call i32 @PSB_WVDC32(i32 %46, i32 %47)
  %49 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %50 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PSB_INT_ENABLE_R, align 4
  %53 = call i32 @PSB_WVDC32(i32 %51, i32 %52)
  %54 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %57 = call i32 @psb_disable_pipestat(%struct.drm_psb_private* %54, i32 %55, i32 %56)
  %58 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %59 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret void
}

declare dso_local i64 @IS_MFLD(%struct.drm_device*) #1

declare dso_local i32 @mdfld_disable_te(%struct.drm_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @psb_disable_pipestat(%struct.drm_psb_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
