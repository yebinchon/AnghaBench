; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@dce_v8_0_audio_endpt_rreg = common dso_local global i32 0, align 4
@dce_v8_0_audio_endpt_wreg = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dce_v8_0_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v8_0_early_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 3
  store i32* @dce_v8_0_audio_endpt_rreg, i32** %8, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 2
  store i32* @dce_v8_0_audio_endpt_wreg, i32** %10, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = call i32 @dce_v8_0_set_display_funcs(%struct.amdgpu_device* %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = call i32 @dce_v8_0_get_num_crtc(%struct.amdgpu_device* %13)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %42 [
    i32 132, label %21
    i32 131, label %21
    i32 129, label %28
    i32 130, label %35
    i32 128, label %35
  ]

21:                                               ; preds = %1, %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 6, i32* %24, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 6, i32* %27, align 4
  br label %45

28:                                               ; preds = %1
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 6, i32* %31, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 7, i32* %34, align 4
  br label %45

35:                                               ; preds = %1, %1
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 6, i32* %38, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 6, i32* %41, align 4
  br label %45

42:                                               ; preds = %1
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %35, %28, %21
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %47 = call i32 @dce_v8_0_set_irq_funcs(%struct.amdgpu_device* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @dce_v8_0_set_display_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v8_0_get_num_crtc(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v8_0_set_irq_funcs(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
