; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_ioctl_permit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_ioctl_permit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }

@DRM_ROOT_ONLY = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DRM_AUTH = common dso_local global i32 0, align 4
@DRM_MASTER = common dso_local global i32 0, align 4
@DRM_RENDER_ALLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_ioctl_permit(i32 %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DRM_ROOT_ONLY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %12 = call i32 @capable(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %82

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DRM_AUTH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %30 = call i64 @drm_is_render_client(%struct.drm_file* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %34 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %28, %23
  %39 = phi i1 [ false, %28 ], [ false, %23 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EACCES, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %82

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @DRM_MASTER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %53 = call i32 @drm_is_current_master(%struct.drm_file* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ false, %46 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EACCES, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %82

64:                                               ; preds = %56
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @DRM_RENDER_ALLOW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %71 = call i64 @drm_is_render_client(%struct.drm_file* %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i1 [ false, %64 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EACCES, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %78, %61, %43, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @drm_is_render_client(%struct.drm_file*) #1

declare dso_local i32 @drm_is_current_master(%struct.drm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
