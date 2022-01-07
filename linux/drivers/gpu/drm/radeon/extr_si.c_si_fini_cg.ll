; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_fini_cg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_fini_cg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@RADEON_CG_BLOCK_UVD = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_GFX = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_MC = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_SDMA = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_BIF = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_HDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_fini_cg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_fini_cg(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = load i32, i32* @RADEON_CG_BLOCK_UVD, align 4
  %10 = call i32 @si_update_cg(%struct.radeon_device* %8, i32 %9, i32 0)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = load i32, i32* @RADEON_CG_BLOCK_GFX, align 4
  %14 = load i32, i32* @RADEON_CG_BLOCK_MC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RADEON_CG_BLOCK_SDMA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RADEON_CG_BLOCK_BIF, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RADEON_CG_BLOCK_HDP, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @si_update_cg(%struct.radeon_device* %12, i32 %21, i32 0)
  ret void
}

declare dso_local i32 @si_update_cg(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
