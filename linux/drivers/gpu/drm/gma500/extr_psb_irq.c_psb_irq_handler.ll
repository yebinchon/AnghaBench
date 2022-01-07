; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*)* }

@PSB_INT_IDENTITY_R = common dso_local global i32 0, align 4
@_PSB_PIPE_EVENT_FLAG = common dso_local global i32 0, align 4
@_PSB_IRQ_ASLE = common dso_local global i32 0, align 4
@_PSB_IRQ_SGX_FLAG = common dso_local global i32 0, align 4
@_PSB_IRQ_DISP_HOTSYNC = common dso_local global i32 0, align 4
@PSB_CR_EVENT_STATUS = common dso_local global i32 0, align 4
@PSB_CR_EVENT_STATUS2 = common dso_local global i32 0, align 4
@PORT_HOTPLUG_STAT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_psb_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.drm_device*
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %18, align 8
  store %struct.drm_psb_private* %19, %struct.drm_psb_private** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %21 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %20, i32 0, i32 2
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i32, i32* @PSB_INT_IDENTITY_R, align 4
  %24 = call i32 @PSB_RVDC32(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @_PSB_PIPE_EVENT_FLAG, align 4
  %27 = load i32, i32* @_PSB_IRQ_ASLE, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @_PSB_IRQ_SGX_FLAG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @_PSB_IRQ_DISP_HOTSYNC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %46 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %51 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %57 = call i64 @gma_power_is_on(%struct.drm_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @psb_vdc_interrupt(%struct.drm_device* %60, i32 %61)
  store i32 1, i32* %14, align 4
  br label %63

63:                                               ; preds = %59, %55, %44
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* @PSB_CR_EVENT_STATUS, align 4
  %68 = call i32 @PSB_RSGX32(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @PSB_CR_EVENT_STATUS2, align 4
  %70 = call i32 @PSB_RSGX32(i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @psb_sgx_interrupt(%struct.drm_device* %71, i32 %72, i32 %73)
  store i32 1, i32* %14, align 4
  br label %75

75:                                               ; preds = %66, %63
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %80 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %82, align 8
  %84 = icmp ne i32 (%struct.drm_device*)* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %87 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %89, align 8
  %91 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %92 = call i32 %90(%struct.drm_device* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %94 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %95 = call i32 @REG_READ(i32 %94)
  %96 = call i32 @REG_WRITE(i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %85, %78, %75
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @PSB_INT_IDENTITY_R, align 4
  %100 = call i32 @PSB_WVDC32(i32 %98, i32 %99)
  %101 = load i32, i32* @PSB_INT_IDENTITY_R, align 4
  %102 = call i32 @PSB_RVDC32(i32 %101)
  %103 = call i32 (...) @rmb()
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %97
  %107 = load i32, i32* @IRQ_NONE, align 4
  store i32 %107, i32* %3, align 4
  br label %110

108:                                              ; preds = %97
  %109 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @PSB_RVDC32(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @gma_power_is_on(%struct.drm_device*) #1

declare dso_local i32 @psb_vdc_interrupt(%struct.drm_device*, i32) #1

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i32 @psb_sgx_interrupt(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
