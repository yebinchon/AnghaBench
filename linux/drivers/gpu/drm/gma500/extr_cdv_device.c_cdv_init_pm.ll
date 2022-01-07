; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_init_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_init_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__*, %struct.drm_psb_private* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_psb_private = type { i32, i32 }

@PSB_PUNIT_PORT = common dso_local global i32 0, align 4
@PSB_APMBA = common dso_local global i32 0, align 4
@PSB_OSPMBA = common dso_local global i32 0, align 4
@PSB_APM_CMD = common dso_local global i64 0, align 8
@PSB_PWRGT_GFX_MASK = common dso_local global i32 0, align 4
@PSB_PWRGT_GFX_ON = common dso_local global i32 0, align 4
@PSB_APM_STS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"GPU: power management timed out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @cdv_init_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_init_pm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 2
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  store %struct.drm_psb_private* %10, %struct.drm_psb_private** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_domain_nr(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PSB_PUNIT_PORT, align 4
  %19 = load i32, i32* @PSB_APMBA, align 4
  %20 = call i32 @CDV_MSG_READ32(i32 %17, i32 %18, i32 %19)
  %21 = and i32 %20, 65535
  %22 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PSB_PUNIT_PORT, align 4
  %26 = load i32, i32* @PSB_OSPMBA, align 4
  %27 = call i32 @CDV_MSG_READ32(i32 %24, i32 %25, i32 %26)
  %28 = and i32 %27, 65535
  %29 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %32 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @PSB_APM_CMD, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inl(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @PSB_PWRGT_GFX_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @PSB_PWRGT_GFX_ON, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %47 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @PSB_APM_CMD, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outl(i32 %45, i64 %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %71, %1
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 5
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %58 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @PSB_APM_STS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @inl(i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @PSB_PWRGT_GFX_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %79

69:                                               ; preds = %56
  %70 = call i32 @udelay(i32 10)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %68
  ret void
}

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @CDV_MSG_READ32(i32, i32, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
