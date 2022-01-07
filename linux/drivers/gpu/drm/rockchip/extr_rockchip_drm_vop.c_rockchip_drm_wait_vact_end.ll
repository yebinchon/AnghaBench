; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_rockchip_drm_wait_vact_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_rockchip_drm_wait_vact_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.vop = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Timeout waiting for IRQ\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rockchip_drm_wait_vact_end(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vop*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %10 = call %struct.vop* @to_vop(%struct.drm_crtc* %9)
  store %struct.vop* %10, %struct.vop** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = icmp ne %struct.drm_crtc* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.vop*, %struct.vop** %6, align 8
  %15 = getelementptr inbounds %struct.vop, %struct.vop* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %13
  %22 = load %struct.vop*, %struct.vop** %6, align 8
  %23 = getelementptr inbounds %struct.vop, %struct.vop* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ule i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %60

30:                                               ; preds = %21
  %31 = load %struct.vop*, %struct.vop** %6, align 8
  %32 = call i64 @vop_line_flag_irq_is_enabled(%struct.vop* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %60

37:                                               ; preds = %30
  %38 = load %struct.vop*, %struct.vop** %6, align 8
  %39 = getelementptr inbounds %struct.vop, %struct.vop* %38, i32 0, i32 2
  %40 = call i32 @reinit_completion(i32* %39)
  %41 = load %struct.vop*, %struct.vop** %6, align 8
  %42 = call i32 @vop_line_flag_irq_enable(%struct.vop* %41)
  %43 = load %struct.vop*, %struct.vop** %6, align 8
  %44 = getelementptr inbounds %struct.vop, %struct.vop* %43, i32 0, i32 2
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @msecs_to_jiffies(i32 %45)
  %47 = call i64 @wait_for_completion_timeout(i32* %44, i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load %struct.vop*, %struct.vop** %6, align 8
  %49 = call i32 @vop_line_flag_irq_disable(%struct.vop* %48)
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %37
  %53 = load %struct.vop*, %struct.vop** %6, align 8
  %54 = getelementptr inbounds %struct.vop, %struct.vop* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DRM_DEV_ERROR(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %60

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59, %52, %34, %27
  %61 = load %struct.vop*, %struct.vop** %6, align 8
  %62 = getelementptr inbounds %struct.vop, %struct.vop* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.vop* @to_vop(%struct.drm_crtc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vop_line_flag_irq_is_enabled(%struct.vop*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @vop_line_flag_irq_enable(%struct.vop*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @vop_line_flag_irq_disable(%struct.vop*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
