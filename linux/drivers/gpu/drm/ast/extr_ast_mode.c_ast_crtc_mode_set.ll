; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i64 }
%struct.drm_display_mode = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.ast_vbios_mode_info = type { i32 }

@AST1180 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"AST 1180 modesetting not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @ast_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca %struct.ast_private*, align 8
  %16 = alloca %struct.ast_vbios_mode_info, align 4
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %13, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %14, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.ast_private*, %struct.ast_private** %24, align 8
  store %struct.ast_private* %25, %struct.ast_private** %15, align 8
  %26 = load %struct.ast_private*, %struct.ast_private** %15, align 8
  %27 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AST1180, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %76

35:                                               ; preds = %6
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %39 = call i32 @ast_get_vbios_mode_info(%struct.drm_crtc* %36, %struct.drm_display_mode* %37, %struct.drm_display_mode* %38, %struct.ast_vbios_mode_info* %16)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %76

45:                                               ; preds = %35
  %46 = load %struct.ast_private*, %struct.ast_private** %15, align 8
  %47 = call i32 @ast_open_key(%struct.ast_private* %46)
  %48 = load %struct.ast_private*, %struct.ast_private** %15, align 8
  %49 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %50 = call i32 @ast_set_index_reg(%struct.ast_private* %48, i32 %49, i32 161, i32 6)
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %53 = call i32 @ast_set_std_reg(%struct.drm_crtc* %51, %struct.drm_display_mode* %52, %struct.ast_vbios_mode_info* %16)
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %56 = call i32 @ast_set_crtc_reg(%struct.drm_crtc* %54, %struct.drm_display_mode* %55, %struct.ast_vbios_mode_info* %16)
  %57 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %58 = call i32 @ast_set_offset_reg(%struct.drm_crtc* %57)
  %59 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %61 = call i32 @ast_set_dclk_reg(%struct.drm_device* %59, %struct.drm_display_mode* %60, %struct.ast_vbios_mode_info* %16)
  %62 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %64 = call i32 @ast_set_ext_reg(%struct.drm_crtc* %62, %struct.drm_display_mode* %63, %struct.ast_vbios_mode_info* %16)
  %65 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %67 = call i32 @ast_set_sync_reg(%struct.drm_device* %65, %struct.drm_display_mode* %66, %struct.ast_vbios_mode_info* %16)
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %70 = call i32 @ast_set_dac_reg(%struct.drm_crtc* %68, %struct.drm_display_mode* %69, %struct.ast_vbios_mode_info* %16)
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %75 = call i32 @ast_crtc_mode_set_base(%struct.drm_crtc* %71, i32 %72, i32 %73, %struct.drm_framebuffer* %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %45, %42, %31
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @ast_get_vbios_mode_info(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*) #1

declare dso_local i32 @ast_open_key(%struct.ast_private*) #1

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_set_std_reg(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*) #1

declare dso_local i32 @ast_set_crtc_reg(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*) #1

declare dso_local i32 @ast_set_offset_reg(%struct.drm_crtc*) #1

declare dso_local i32 @ast_set_dclk_reg(%struct.drm_device*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*) #1

declare dso_local i32 @ast_set_ext_reg(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*) #1

declare dso_local i32 @ast_set_sync_reg(%struct.drm_device*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*) #1

declare dso_local i32 @ast_set_dac_reg(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*) #1

declare dso_local i32 @ast_crtc_mode_set_base(%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
