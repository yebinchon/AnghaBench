; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_dm_irq_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_dm_irq_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.amdgpu_crtc** }
%struct.amdgpu_crtc = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: crtc is NULL at id :%d\0A\00", align 1
@AMDGPU_IRQ_STATE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32, i32, i8*)* @dm_irq_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_irq_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_irq_src*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_crtc**, %struct.amdgpu_crtc*** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %20, i64 %22
  %24 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %23, align 8
  store %struct.amdgpu_crtc* %24, %struct.amdgpu_crtc** %16, align 8
  %25 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %26 = icmp ne %struct.amdgpu_crtc* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %6
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  store i32 0, i32* %7, align 4
  br label %54

31:                                               ; preds = %6
  %32 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %33 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %54

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %40 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %38, %41
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @AMDGPU_IRQ_STATE_ENABLE, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @dc_interrupt_set(i32 %50, i32 %51, i32 %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %37, %36, %27
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @DRM_ERROR(i8*, i8*, i32) #1

declare dso_local i32 @dc_interrupt_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
