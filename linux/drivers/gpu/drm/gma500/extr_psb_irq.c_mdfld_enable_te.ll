; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_mdfld_enable_te.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_mdfld_enable_te.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.drm_psb_private = type { i32 }

@PIPEACONF_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIPE_TE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdfld_enable_te(%struct.drm_device* %0, i32 %1) #0 {
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
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.drm_psb_private*
  store %struct.drm_psb_private* %13, %struct.drm_psb_private** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @mid_pipeconf(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = call i64 @gma_power_begin(%struct.drm_device* %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @REG_READ(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = call i32 @gma_power_end(%struct.drm_device* %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %24
  %33 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %34 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mid_enable_pipe_event(%struct.drm_psb_private* %37, i32 %38)
  %40 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PIPE_TE_ENABLE, align 4
  %43 = call i32 @psb_enable_pipestat(%struct.drm_psb_private* %40, i32 %41, i32 %42)
  %44 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %45 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %44, i32 0, i32 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %32, %29
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @mid_pipeconf(i32) #1

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mid_enable_pipe_event(%struct.drm_psb_private*, i32) #1

declare dso_local i32 @psb_enable_pipestat(%struct.drm_psb_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
