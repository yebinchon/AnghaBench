; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_drm_crtc_add_crc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_drm_crtc_add_crc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_crtc_crc }
%struct.drm_crtc_crc = type { i32, i32, i32, i32, i32, i32, %struct.drm_crtc_crc_entry* }
%struct.drm_crtc_crc_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_CRC_ENTRIES_NR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Overflow of CRC buffer, userspace reads too slow.\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_crtc_add_crc_entry(%struct.drm_crtc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_crtc_crc*, align 8
  %11 = alloca %struct.drm_crtc_crc_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  store %struct.drm_crtc_crc* %17, %struct.drm_crtc_crc** %10, align 8
  %18 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %19 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %18, i32 0, i32 5
  %20 = load i64, i64* %14, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %23 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %22, i32 0, i32 6
  %24 = load %struct.drm_crtc_crc_entry*, %struct.drm_crtc_crc_entry** %23, align 8
  %25 = icmp ne %struct.drm_crtc_crc_entry* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %4
  %27 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %28 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %27, i32 0, i32 5
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %100

33:                                               ; preds = %4
  %34 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %35 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %12, align 4
  %37 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %38 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @DRM_CRC_ENTRIES_NR, align 4
  %43 = call i32 @CIRC_SPACE(i32 %40, i32 %41, i32 %42)
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %62

45:                                               ; preds = %33
  %46 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %47 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %15, align 4
  %49 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %50 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %52 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %51, i32 0, i32 5
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %45
  %60 = load i32, i32* @ENOBUFS, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %100

62:                                               ; preds = %33
  %63 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %64 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %63, i32 0, i32 6
  %65 = load %struct.drm_crtc_crc_entry*, %struct.drm_crtc_crc_entry** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.drm_crtc_crc_entry, %struct.drm_crtc_crc_entry* %65, i64 %67
  store %struct.drm_crtc_crc_entry* %68, %struct.drm_crtc_crc_entry** %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.drm_crtc_crc_entry*, %struct.drm_crtc_crc_entry** %11, align 8
  %71 = getelementptr inbounds %struct.drm_crtc_crc_entry, %struct.drm_crtc_crc_entry* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.drm_crtc_crc_entry*, %struct.drm_crtc_crc_entry** %11, align 8
  %74 = getelementptr inbounds %struct.drm_crtc_crc_entry, %struct.drm_crtc_crc_entry* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.drm_crtc_crc_entry*, %struct.drm_crtc_crc_entry** %11, align 8
  %76 = getelementptr inbounds %struct.drm_crtc_crc_entry, %struct.drm_crtc_crc_entry* %75, i32 0, i32 1
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %79 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memcpy(i32* %76, i32* %77, i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* @DRM_CRC_ENTRIES_NR, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %86, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %92 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %94 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %93, i32 0, i32 5
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.drm_crtc_crc*, %struct.drm_crtc_crc** %10, align 8
  %98 = getelementptr inbounds %struct.drm_crtc_crc, %struct.drm_crtc_crc* %97, i32 0, i32 4
  %99 = call i32 @wake_up_interruptible(i32* %98)
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %62, %59, %26
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @CIRC_SPACE(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
