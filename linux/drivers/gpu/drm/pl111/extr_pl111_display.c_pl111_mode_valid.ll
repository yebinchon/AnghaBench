; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.pl111_drm_dev_private* }
%struct.pl111_drm_dev_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"%d x %d @ %d Hz, %d cpp, bw %llu too fast\0A\00", align 1
@MODE_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%d x %d @ %d Hz, %d cpp, bw %llu bytes/s OK\0A\00", align 1
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @pl111_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl111_mode_valid(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.pl111_drm_dev_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %14, align 8
  store %struct.pl111_drm_dev_private* %15, %struct.pl111_drm_dev_private** %7, align 8
  %16 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %7, align 8
  %17 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %24, 1000
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = call i32 @div_u64(i32 %38, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %7, align 8
  %48 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %2
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %7, align 8
  %54 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %66, 1000
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @MODE_BAD, align 4
  store i32 %72, i32* %3, align 4
  br label %89

73:                                               ; preds = %51, %2
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = mul i64 %82, 1000
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %79, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* @MODE_OK, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %73, %57
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
