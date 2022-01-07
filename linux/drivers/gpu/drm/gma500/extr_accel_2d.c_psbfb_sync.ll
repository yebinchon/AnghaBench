; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psbfb_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psbfb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.psb_fbdev* }
%struct.psb_fbdev = type { %struct.psb_framebuffer }
%struct.psb_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@PSB_CR_2D_SOCIF = common dso_local global i32 0, align 4
@_PSB_C2_SOCIF_EMPTY = common dso_local global i32 0, align 4
@PSB_CR_2D_BLIT_STATUS = common dso_local global i32 0, align 4
@_PSB_C2B_STATUS_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbfb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.psb_fbdev*, align 8
  %4 = alloca %struct.psb_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.psb_fbdev*, %struct.psb_fbdev** %11, align 8
  store %struct.psb_fbdev* %12, %struct.psb_fbdev** %3, align 8
  %13 = load %struct.psb_fbdev*, %struct.psb_fbdev** %3, align 8
  %14 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %13, i32 0, i32 0
  store %struct.psb_framebuffer* %14, %struct.psb_framebuffer** %4, align 8
  %15 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %4, align 8
  %16 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %5, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.drm_psb_private*, %struct.drm_psb_private** %20, align 8
  store %struct.drm_psb_private* %21, %struct.drm_psb_private** %6, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* @HZ, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %26 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* @PSB_CR_2D_SOCIF, align 4
  %30 = call i32 @PSB_RSGX32(i32 %29)
  %31 = load i32, i32* @_PSB_C2_SOCIF_EMPTY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load i32, i32* @PSB_CR_2D_BLIT_STATUS, align 4
  %35 = call i32 @PSB_RSGX32(i32 %34)
  %36 = load i32, i32* @_PSB_C2B_STATUS_BUSY, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %103

40:                                               ; preds = %33, %1
  br label %41

41:                                               ; preds = %57, %40
  %42 = load i32, i32* @PSB_CR_2D_SOCIF, align 4
  %43 = call i32 @PSB_RSGX32(i32 %42)
  %44 = load i32, i32* @_PSB_C2_SOCIF_EMPTY, align 4
  %45 = icmp ne i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = call i32 (...) @cpu_relax()
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @time_after_eq(i64 %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %51, %48
  %58 = phi i1 [ false, %48 ], [ %56, %51 ]
  br i1 %58, label %41, label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @PSB_CR_2D_SOCIF, align 4
  %64 = call i32 @PSB_RSGX32(i32 %63)
  %65 = load i32, i32* @_PSB_C2_SOCIF_EMPTY, align 4
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %103

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %90, %72
  %74 = load i32, i32* @PSB_CR_2D_BLIT_STATUS, align 4
  %75 = call i32 @PSB_RSGX32(i32 %74)
  %76 = load i32, i32* @_PSB_C2B_STATUS_BUSY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = call i32 (...) @cpu_relax()
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i64, i64* @jiffies, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @time_after_eq(i64 %85, i64 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %84, %81
  %91 = phi i1 [ false, %81 ], [ %89, %84 ]
  br i1 %91, label %73, label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* @PSB_CR_2D_BLIT_STATUS, align 4
  %97 = call i32 @PSB_RSGX32(i32 %96)
  %98 = load i32, i32* @_PSB_C2B_STATUS_BUSY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %95, %92
  br label %103

103:                                              ; preds = %102, %71, %39
  %104 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %105 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %104, i32 0, i32 0
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  br label %114

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %110
  %115 = phi i32 [ %112, %110 ], [ 0, %113 ]
  ret i32 %115
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
