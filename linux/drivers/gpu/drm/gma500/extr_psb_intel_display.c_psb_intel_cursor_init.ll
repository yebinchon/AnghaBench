; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_display.c_psb_intel_cursor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_display.c_psb_intel_cursor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.gma_crtc = type { i64, %struct.gtt_range*, i64 }
%struct.gtt_range = type { i64 }

@CURACNTR = common dso_local global i32 0, align 4
@CURBCNTR = common dso_local global i32 0, align 4
@CURCCNTR = common dso_local global i32 0, align 4
@CURABASE = common dso_local global i32 0, align 4
@CURBBASE = common dso_local global i32 0, align 4
@CURCBASE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.gma_crtc*)* @psb_intel_cursor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_cursor_init(%struct.drm_device* %0, %struct.gma_crtc* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.gma_crtc*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.gtt_range*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.gma_crtc* %1, %struct.gma_crtc** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %5, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @CURACNTR, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @CURBCNTR, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @CURCCNTR, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %19 = load i32, i32* @CURABASE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @CURBBASE, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @CURCBASE, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %2
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = mul nsw i32 4, %32
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = call %struct.gtt_range* @psb_gtt_alloc_range(%struct.drm_device* %31, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1, i32 %34)
  store %struct.gtt_range* %35, %struct.gtt_range** %8, align 8
  %36 = load %struct.gtt_range*, %struct.gtt_range** %8, align 8
  %37 = icmp ne %struct.gtt_range* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load %struct.gma_crtc*, %struct.gma_crtc** %4, align 8
  %40 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %39, i32 0, i32 1
  store %struct.gtt_range* null, %struct.gtt_range** %40, align 8
  br label %58

41:                                               ; preds = %30
  %42 = load %struct.gtt_range*, %struct.gtt_range** %8, align 8
  %43 = load %struct.gma_crtc*, %struct.gma_crtc** %4, align 8
  %44 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %43, i32 0, i32 1
  store %struct.gtt_range* %42, %struct.gtt_range** %44, align 8
  %45 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %46 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.gtt_range*, %struct.gtt_range** %8, align 8
  %49 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.gma_crtc*, %struct.gma_crtc** %4, align 8
  %53 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %57

54:                                               ; preds = %2
  %55 = load %struct.gma_crtc*, %struct.gma_crtc** %4, align 8
  %56 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %55, i32 0, i32 1
  store %struct.gtt_range* null, %struct.gtt_range** %56, align 8
  br label %57

57:                                               ; preds = %54, %41
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.gma_crtc*, %struct.gma_crtc** %4, align 8
  %60 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @REG_WRITE(i32 %63, i32 0)
  %65 = load %struct.gma_crtc*, %struct.gma_crtc** %4, align 8
  %66 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @REG_WRITE(i32 %69, i32 0)
  ret void
}

declare dso_local %struct.gtt_range* @psb_gtt_alloc_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
