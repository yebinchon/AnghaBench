; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_crtc_crc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_crtc_crc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, %struct.drm_crtc_crc }
%struct.TYPE_4__ = type { i32 (%struct.drm_crtc*, i32, i64*)*, i32 (%struct.drm_crtc*, i32)* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_crtc_crc = type { i32, i64, i32, i32, %struct.drm_crtc_crc_entry* }
%struct.drm_crtc_crc_entry = type { i32 }
%struct.file = type { i32 }

@EIO = common dso_local global i32 0, align 4
@DRM_MAX_CRC_NR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DRM_CRC_ENTRIES_NR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @crtc_crc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crtc_crc_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_crc*, align 8
  %8 = alloca %struct.drm_crtc_crc_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  store %struct.drm_crtc* %13, %struct.drm_crtc** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 4
  store %struct.drm_crtc_crc* %15, %struct.drm_crtc_crc** %7, align 8
  store %struct.drm_crtc_crc_entry* null, %struct.drm_crtc_crc_entry** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @drm_drv_uses_atomic_modeset(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 1
  %24 = call i32 @drm_modeset_lock_single_interruptible(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %146

29:                                               ; preds = %21
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 1
  %42 = call i32 @drm_modeset_unlock(i32* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %146

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %50 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.drm_crtc*, i32, i64*)*, i32 (%struct.drm_crtc*, i32, i64*)** %52, align 8
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %55 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %56 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %53(%struct.drm_crtc* %54, i32 %57, i64* %9)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %146

63:                                               ; preds = %48
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @DRM_MAX_CRC_NR, align 8
  %66 = icmp ugt i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @WARN_ON(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %146

73:                                               ; preds = %63
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @WARN_ON(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %146

82:                                               ; preds = %73
  %83 = load i32, i32* @DRM_CRC_ENTRIES_NR, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.drm_crtc_crc_entry* @kcalloc(i32 %83, i32 4, i32 %84)
  store %struct.drm_crtc_crc_entry* %85, %struct.drm_crtc_crc_entry** %8, align 8
  %86 = load %struct.drm_crtc_crc_entry*, %struct.drm_crtc_crc_entry** %8, align 8
  %87 = icmp ne %struct.drm_crtc_crc_entry* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %146

91:                                               ; preds = %82
  %92 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %93 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %92, i32 0, i32 2
  %94 = call i32 @spin_lock_irq(i32* %93)
  %95 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %96 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %91
  %100 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %101 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.drm_crtc_crc_entry*, %struct.drm_crtc_crc_entry** %8, align 8
  %103 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %104 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %103, i32 0, i32 4
  store %struct.drm_crtc_crc_entry* %102, %struct.drm_crtc_crc_entry** %104, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %107 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %111

108:                                              ; preds = %91
  %109 = load i32, i32* @EBUSY, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %108, %99
  %112 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %113 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock_irq(i32* %113)
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.drm_crtc_crc_entry*, %struct.drm_crtc_crc_entry** %8, align 8
  %119 = call i32 @kfree(%struct.drm_crtc_crc_entry* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %146

121:                                              ; preds = %111
  %122 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %123 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32 (%struct.drm_crtc*, i32)*, i32 (%struct.drm_crtc*, i32)** %125, align 8
  %127 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %128 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %129 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 %126(%struct.drm_crtc* %127, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  br label %136

135:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %146

136:                                              ; preds = %134
  %137 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %138 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %137, i32 0, i32 2
  %139 = call i32 @spin_lock_irq(i32* %138)
  %140 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %141 = call i32 @crtc_crc_cleanup(%struct.drm_crtc_crc* %140)
  %142 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %7, align 8
  %143 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %142, i32 0, i32 2
  %144 = call i32 @spin_unlock_irq(i32* %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %136, %135, %117, %88, %79, %70, %61, %45, %27
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @drm_drv_uses_atomic_modeset(i32) #1

declare dso_local i32 @drm_modeset_lock_single_interruptible(i32*) #1

declare dso_local i32 @drm_modeset_unlock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.drm_crtc_crc_entry* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.drm_crtc_crc_entry*) #1

declare dso_local i32 @crtc_crc_cleanup(%struct.drm_crtc_crc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
