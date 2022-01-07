; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_blitter.c_gma_blt_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_blitter.c_gma_blt_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@PSB_CR_2D_SOCIF = common dso_local global i32 0, align 4
@_PSB_C2_SOCIF_EMPTY = common dso_local global i32 0, align 4
@PSB_CR_2D_BLIT_STATUS = common dso_local global i32 0, align 4
@_PSB_C2B_STATUS_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gma_blt_wait_idle(%struct.drm_psb_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @HZ, align 8
  %8 = add i64 %6, %7
  store i64 %8, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @IS_CDV(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load i32, i32* @PSB_CR_2D_SOCIF, align 4
  %17 = call i32 @PSB_RSGX32(i32 %16)
  %18 = load i32, i32* @_PSB_C2_SOCIF_EMPTY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* @PSB_CR_2D_BLIT_STATUS, align 4
  %22 = call i32 @PSB_RSGX32(i32 %21)
  %23 = load i32, i32* @_PSB_C2B_STATUS_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %79

27:                                               ; preds = %20, %15
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* @PSB_CR_2D_SOCIF, align 4
  %30 = call i32 @PSB_RSGX32(i32 %29)
  %31 = load i32, i32* @_PSB_C2_SOCIF_EMPTY, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @time_after_eq(i64 %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i1 [ false, %34 ], [ %42, %37 ]
  br i1 %44, label %28, label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %79

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* @PSB_CR_2D_BLIT_STATUS, align 4
  %54 = call i32 @PSB_RSGX32(i32 %53)
  %55 = load i32, i32* @_PSB_C2B_STATUS_BUSY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @time_after_eq(i64 %63, i64 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %62, %59
  %69 = phi i1 [ false, %59 ], [ %67, %62 ]
  br i1 %69, label %52, label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  br label %77

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 0, %76 ]
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %48, %26, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @IS_CDV(i32) #1

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
