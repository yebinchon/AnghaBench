; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_generic_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_generic_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_ioctl_desc = type { i32, i32 }
%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DRM_COMMAND_BASE = common dso_local global i32 0, align 4
@DRM_COMMAND_END = common dso_local global i32 0, align 4
@vmw_ioctls = common dso_local global %struct.drm_ioctl_desc* null, align 8
@DRM_VMW_EXECBUF = common dso_local global i32 0, align 4
@DRM_VMW_UPDATE_LAYOUT = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Invalid command format, ioctl %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64, i64 (%struct.file*, i32, i64)*)* @vmw_generic_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmw_generic_ioctl(%struct.file* %0, i32 %1, i64 %2, i64 (%struct.file*, i32, i64)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64 (%struct.file*, i32, i64)*, align 8
  %10 = alloca %struct.drm_file*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_ioctl_desc*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 (%struct.file*, i32, i64)* %3, i64 (%struct.file*, i32, i64)** %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.drm_file*, %struct.drm_file** %16, align 8
  store %struct.drm_file* %17, %struct.drm_file** %10, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %19 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @DRM_IOCTL_NR(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @DRM_COMMAND_END, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %93

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %35 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %34, %39
  %41 = icmp ult i32 %33, %40
  br i1 %41, label %42, label %93

42:                                               ; preds = %32
  %43 = load %struct.drm_ioctl_desc*, %struct.drm_ioctl_desc** @vmw_ioctls, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %46 = sub i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.drm_ioctl_desc, %struct.drm_ioctl_desc* %43, i64 %47
  store %struct.drm_ioctl_desc* %48, %struct.drm_ioctl_desc** %14, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %51 = load i32, i32* @DRM_VMW_EXECBUF, align 4
  %52 = add i32 %50, %51
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %9, align 8
  %56 = load %struct.file*, %struct.file** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i64 %55(%struct.file* %56, i32 %57, i64 %58)
  store i64 %59, i64* %5, align 8
  br label %114

60:                                               ; preds = %42
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %63 = load i32, i32* @DRM_VMW_UPDATE_LAYOUT, align 4
  %64 = add i32 %62, %63
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %68 = call i32 @drm_is_current_master(%struct.drm_file* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %72 = call i32 @capable(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* @EACCES, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %5, align 8
  br label %114

77:                                               ; preds = %70, %66
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.drm_ioctl_desc*, %struct.drm_ioctl_desc** %14, align 8
  %81 = getelementptr inbounds %struct.drm_ioctl_desc, %struct.drm_ioctl_desc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %107

89:                                               ; preds = %79
  %90 = load %struct.drm_ioctl_desc*, %struct.drm_ioctl_desc** %14, align 8
  %91 = getelementptr inbounds %struct.drm_ioctl_desc, %struct.drm_ioctl_desc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  br label %101

93:                                               ; preds = %32, %28, %4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @drm_ioctl_flags(i32 %94, i32* %13)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* @EINVAL, align 8
  %99 = sub nsw i64 0, %98
  store i64 %99, i64* %5, align 8
  br label %114

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %89
  %102 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %9, align 8
  %103 = load %struct.file*, %struct.file** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i64, i64* %8, align 8
  %106 = call i64 %102(%struct.file* %103, i32 %104, i64 %105)
  store i64 %106, i64* %5, align 8
  br label %114

107:                                              ; preds = %88
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %110 = sub i32 %108, %109
  %111 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i64, i64* @EINVAL, align 8
  %113 = sub nsw i64 0, %112
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %107, %101, %97, %74, %54
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i32 @DRM_IOCTL_NR(i32) #1

declare dso_local i32 @drm_is_current_master(%struct.drm_file*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @drm_ioctl_flags(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
