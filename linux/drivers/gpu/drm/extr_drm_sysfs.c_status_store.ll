; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_status_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_status_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_connector = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__, %struct.drm_device* }
%struct.TYPE_5__ = type { i32 (%struct.drm_connector*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"detect\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@DRM_FORCE_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"on-digital\00", align 1
@DRM_FORCE_ON_DIGITAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@DRM_FORCE_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"[CONNECTOR:%d:%s] force updated from %d to %d or reprobing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @status_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.drm_connector* @to_drm_connector(%struct.device* %14)
  store %struct.drm_connector* %15, %struct.drm_connector** %10, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 4
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %11, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock_interruptible(i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %121

27:                                               ; preds = %4
  %28 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @sysfs_streq(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %67

37:                                               ; preds = %27
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @sysfs_streq(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @DRM_FORCE_ON, align 4
  %43 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %66

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @sysfs_streq(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @DRM_FORCE_ON_DIGITAL, align 4
  %51 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %65

53:                                               ; preds = %45
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @sysfs_streq(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @DRM_FORCE_OFF, align 4
  %59 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %57
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %70 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %75 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %106, label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %80 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %88 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %85, i32 %86, i32 %89)
  %91 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %92 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32 (%struct.drm_connector*, i32, i32)*, i32 (%struct.drm_connector*, i32, i32)** %94, align 8
  %96 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %97 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 %95(%struct.drm_connector* %96, i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %78, %73
  %107 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  br label %118

116:                                              ; preds = %106
  %117 = load i64, i64* %9, align 8
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i64 [ %115, %113 ], [ %117, %116 ]
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %118, %25
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.drm_connector* @to_drm_connector(%struct.device*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
