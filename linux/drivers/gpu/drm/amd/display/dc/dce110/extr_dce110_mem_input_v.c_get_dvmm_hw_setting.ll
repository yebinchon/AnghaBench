; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_get_dvmm_hw_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_get_dvmm_hw_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dc_tiling_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SURFACE_PIXEL_FORMAT_INVALID = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i32 0, align 4
@dvmm_Hw_Setting_1DTiling = common dso_local global i32** null, align 8
@dvmm_Hw_Setting_2DTiling = common dso_local global i32** null, align 8
@dvmm_Hw_Setting_Linear = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%union.dc_tiling_info*, i32, i32)* @get_dvmm_hw_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dvmm_hw_setting(%union.dc_tiling_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %union.dc_tiling_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.dc_tiling_info* %0, %union.dc_tiling_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SURFACE_PIXEL_FORMAT_INVALID, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %24

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %8, align 4
  br label %23

22:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %17
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %26 = bitcast %union.dc_tiling_info* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %47 [
    i32 136, label %29
    i32 137, label %29
    i32 128, label %29
    i32 134, label %35
    i32 135, label %35
    i32 133, label %35
    i32 129, label %35
    i32 130, label %35
    i32 131, label %41
    i32 132, label %41
  ]

29:                                               ; preds = %24, %24, %24
  %30 = load i32**, i32*** @dvmm_Hw_Setting_1DTiling, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %4, align 8
  br label %53

35:                                               ; preds = %24, %24, %24, %24, %24
  %36 = load i32**, i32*** @dvmm_Hw_Setting_2DTiling, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %4, align 8
  br label %53

41:                                               ; preds = %24, %24
  %42 = load i32**, i32*** @dvmm_Hw_Setting_Linear, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %4, align 8
  br label %53

47:                                               ; preds = %24
  %48 = load i32**, i32*** @dvmm_Hw_Setting_2DTiling, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %47, %41, %35, %29
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
