; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_get_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_get_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_crtc** }
%struct.amdgpu_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dm_crtc_state = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dc_stream_state is NULL for crtc '%d'!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32*, i32*)* @dm_crtc_get_scanoutpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_crtc_get_scanoutpos(%struct.amdgpu_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_crtc*, align 8
  %15 = alloca %struct.dm_crtc_state*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %65

28:                                               ; preds = %18
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.amdgpu_crtc**, %struct.amdgpu_crtc*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %32, i64 %34
  %36 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %35, align 8
  store %struct.amdgpu_crtc* %36, %struct.amdgpu_crtc** %14, align 8
  %37 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %38 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.dm_crtc_state* @to_dm_crtc_state(i32 %40)
  store %struct.dm_crtc_state* %41, %struct.dm_crtc_state** %15, align 8
  %42 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %15, align 8
  %43 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 0, i32* %5, align 4
  br label %65

49:                                               ; preds = %28
  %50 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %15, align 8
  %51 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @dc_stream_get_scanoutpos(i32* %52, i32* %10, i32* %11, i32* %12, i32* %13)
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %54, %56
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %59, %61
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %46, %25
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @dc_stream_get_scanoutpos(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
