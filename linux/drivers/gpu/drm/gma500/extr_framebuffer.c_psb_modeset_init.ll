; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_3__, i32, %struct.drm_psb_private* }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, i64, i64 }
%struct.drm_psb_private = type { i32, i32, %struct.TYPE_4__*, %struct.psb_intel_mode_device }
%struct.TYPE_4__ = type { i32 (%struct.drm_device*)* }
%struct.psb_intel_mode_device = type { i32 }

@psb_mode_funcs = common dso_local global i32 0, align 4
@PSB_BSM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_modeset_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.psb_intel_mode_device*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 2
  %8 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  store %struct.drm_psb_private* %8, %struct.drm_psb_private** %3, align 8
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %9, i32 0, i32 3
  store %struct.psb_intel_mode_device* %10, %struct.psb_intel_mode_device** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = call i32 @drm_mode_config_init(%struct.drm_device* %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32* @psb_mode_funcs, i32** %21, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PSB_BSM, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = call i32 @pci_read_config_dword(i32 %24, i32 %25, i32* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %41, %1
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %33 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %40 = call i32 @psb_intel_crtc_init(%struct.drm_device* %37, i32 %38, %struct.psb_intel_mode_device* %39)
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %30

44:                                               ; preds = %30
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 4096, i32* %47, align 8
  %48 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 4096, i32* %50, align 4
  %51 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %52 = call i32 @psb_setup_outputs(%struct.drm_device* %51)
  %53 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %54 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %56, align 8
  %58 = icmp ne i32 (%struct.drm_device*)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %44
  %60 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %63, align 8
  %65 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %66 = call i32 %64(%struct.drm_device* %65)
  br label %67

67:                                               ; preds = %59, %44
  %68 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %69 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  ret void
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @psb_intel_crtc_init(%struct.drm_device*, i32, %struct.psb_intel_mode_device*) #1

declare dso_local i32 @psb_setup_outputs(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
