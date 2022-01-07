; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, i32 }

@PIPEACONF_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_PSB_VSYNC_PIPEA_FLAG = common dso_local global i32 0, align 4
@_PSB_VSYNC_PIPEB_FLAG = common dso_local global i32 0, align 4
@PSB_INT_MASK_R = common dso_local global i32 0, align 4
@PSB_INT_ENABLE_R = common dso_local global i32 0, align 4
@PIPE_VBLANK_INTERRUPT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_enable_vblank(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  store %struct.drm_psb_private* %12, %struct.drm_psb_private** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @mid_pipeconf(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call i64 @IS_MFLD(%struct.drm_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mdfld_enable_te(%struct.drm_device* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = call i64 @gma_power_begin(%struct.drm_device* %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @REG_READ(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = call i32 @gma_power_end(%struct.drm_device* %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %82

39:                                               ; preds = %31
  %40 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %41 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* @_PSB_VSYNC_PIPEA_FLAG, align 4
  %48 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %49 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %62

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @_PSB_VSYNC_PIPEB_FLAG, align 4
  %57 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %58 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %52
  br label %62

62:                                               ; preds = %61, %46
  %63 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %64 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* @PSB_INT_MASK_R, align 4
  %68 = call i32 @PSB_WVDC32(i32 %66, i32 %67)
  %69 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %70 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PSB_INT_ENABLE_R, align 4
  %73 = call i32 @PSB_WVDC32(i32 %71, i32 %72)
  %74 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @PIPE_VBLANK_INTERRUPT_ENABLE, align 4
  %77 = call i32 @psb_enable_pipestat(%struct.drm_psb_private* %74, i32 %75, i32 %76)
  %78 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %79 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %78, i32 0, i32 0
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %62, %36, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @mid_pipeconf(i32) #1

declare dso_local i64 @IS_MFLD(%struct.drm_device*) #1

declare dso_local i32 @mdfld_enable_te(%struct.drm_device*, i32) #1

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @psb_enable_pipestat(%struct.drm_psb_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
