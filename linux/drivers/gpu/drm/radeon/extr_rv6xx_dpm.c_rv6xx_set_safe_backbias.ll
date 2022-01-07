; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_set_safe_backbias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_set_safe_backbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv6xx_ps = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE = common dso_local global i32 0, align 4
@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@BACKBIAS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @rv6xx_set_safe_backbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_set_safe_backbias(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.rv6xx_ps*, align 8
  %8 = alloca %struct.rv6xx_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %10 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %9)
  store %struct.rv6xx_ps* %10, %struct.rv6xx_ps** %7, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %12 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %11)
  store %struct.rv6xx_ps* %12, %struct.rv6xx_ps** %8, align 8
  %13 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %7, align 8
  %14 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %8, align 8
  %22 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32, i32* @GENERAL_PWRMGT, align 4
  %30 = load i32, i32* @BACKBIAS_VALUE, align 4
  %31 = load i32, i32* @BACKBIAS_VALUE, align 4
  %32 = xor i32 %31, -1
  %33 = call i32 @WREG32_P(i32 %29, i32 %30, i32 %32)
  br label %39

34:                                               ; preds = %20, %3
  %35 = load i32, i32* @GENERAL_PWRMGT, align 4
  %36 = load i32, i32* @BACKBIAS_VALUE, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @WREG32_P(i32 %35, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  ret void
}

declare dso_local %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
