; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_drv.c_psb_do_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_drv.c_psb_do_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, i32, i32, %struct.psb_gtt }
%struct.psb_gtt = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Gatt must be 256M aligned. This is a bug.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PSB_CR_BIF_BANK0 = common dso_local global i32 0, align 4
@PSB_CR_BIF_BANK1 = common dso_local global i32 0, align 4
@PSB_CR_BIF_CTRL = common dso_local global i32 0, align 4
@_PSB_MMU_ER_MASK = common dso_local global i32 0, align 4
@PSB_CR_BIF_TWOD_REQ_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @psb_do_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_do_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.psb_gtt*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  store %struct.drm_psb_private* %9, %struct.drm_psb_private** %4, align 8
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %11 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %10, i32 0, i32 3
  store %struct.psb_gtt* %11, %struct.psb_gtt** %5, align 8
  %12 = load %struct.psb_gtt*, %struct.psb_gtt** %5, align 8
  %13 = getelementptr inbounds %struct.psb_gtt, %struct.psb_gtt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 268435455
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %90

24:                                               ; preds = %1
  %25 = load %struct.psb_gtt*, %struct.psb_gtt** %5, align 8
  %26 = getelementptr inbounds %struct.psb_gtt, %struct.psb_gtt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = mul nsw i32 %29, 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.psb_gtt*, %struct.psb_gtt** %5, align 8
  %39 = getelementptr inbounds %struct.psb_gtt, %struct.psb_gtt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* %6, align 4
  br label %48

44:                                               ; preds = %24
  %45 = load %struct.psb_gtt*, %struct.psb_gtt** %5, align 8
  %46 = getelementptr inbounds %struct.psb_gtt, %struct.psb_gtt* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i32 [ %43, %42 ], [ %47, %44 ]
  store i32 %49, i32* %6, align 4
  %50 = load %struct.psb_gtt*, %struct.psb_gtt** %5, align 8
  %51 = getelementptr inbounds %struct.psb_gtt, %struct.psb_gtt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = mul nsw i32 %55, 1024
  %57 = add nsw i32 %52, %56
  %58 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %59 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %61 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %60, i32 0, i32 2
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %64 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %63, i32 0, i32 1
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load i32, i32* @PSB_CR_BIF_BANK0, align 4
  %67 = call i32 @PSB_WSGX32(i32 0, i32 %66)
  %68 = load i32, i32* @PSB_CR_BIF_BANK1, align 4
  %69 = call i32 @PSB_WSGX32(i32 0, i32 %68)
  %70 = load i32, i32* @PSB_CR_BIF_BANK1, align 4
  %71 = call i32 @PSB_RSGX32(i32 %70)
  %72 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %73 = call i32 @PSB_RSGX32(i32 %72)
  %74 = load i32, i32* @_PSB_MMU_ER_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %78 = call i32 @PSB_WSGX32(i32 %76, i32 %77)
  %79 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %80 = call i32 @PSB_RSGX32(i32 %79)
  %81 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %82 = call i32 @psb_spank(%struct.drm_psb_private* %81)
  %83 = load %struct.psb_gtt*, %struct.psb_gtt** %5, align 8
  %84 = getelementptr inbounds %struct.psb_gtt, %struct.psb_gtt* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PSB_CR_BIF_TWOD_REQ_BASE, align 4
  %87 = call i32 @PSB_WSGX32(i32 %85, i32 %86)
  %88 = load i32, i32* @PSB_CR_BIF_TWOD_REQ_BASE, align 4
  %89 = call i32 @PSB_RSGX32(i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %48, %17
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @PSB_WSGX32(i32, i32) #1

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i32 @psb_spank(%struct.drm_psb_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
