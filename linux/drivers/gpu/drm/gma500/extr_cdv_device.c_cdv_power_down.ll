; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i64 }

@PSB_APM_CMD = common dso_local global i64 0, align 8
@PSB_PWRGT_GFX_MASK = common dso_local global i32 0, align 4
@PSB_PWRGT_GFX_OFF = common dso_local global i32 0, align 4
@PSB_APM_STS = common dso_local global i64 0, align 8
@PSB_PWRGT_GFX_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @cdv_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_power_down(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %4, align 8
  store i32 5, i32* %8, align 4
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PSB_APM_CMD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @PSB_PWRGT_GFX_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @PSB_PWRGT_GFX_OFF, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @PSB_PWRGT_GFX_MASK, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %28 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PSB_APM_CMD, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outl(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %50, %1
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %39 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PSB_APM_STS, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inl(i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @PSB_PWRGT_GFX_D3, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %53

50:                                               ; preds = %37
  %51 = call i32 @udelay(i32 10)
  br label %33

52:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
