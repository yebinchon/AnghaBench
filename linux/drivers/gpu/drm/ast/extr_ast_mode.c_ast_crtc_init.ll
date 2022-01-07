; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.ast_crtc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ast_crtc_funcs = common dso_local global i32 0, align 4
@ast_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @ast_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_crtc_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.ast_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ast_crtc* @kzalloc(i32 4, i32 %5)
  store %struct.ast_crtc* %6, %struct.ast_crtc** %4, align 8
  %7 = load %struct.ast_crtc*, %struct.ast_crtc** %4, align 8
  %8 = icmp ne %struct.ast_crtc* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = load %struct.ast_crtc*, %struct.ast_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.ast_crtc, %struct.ast_crtc* %14, i32 0, i32 0
  %16 = call i32 @drm_crtc_init(%struct.drm_device* %13, i32* %15, i32* @ast_crtc_funcs)
  %17 = load %struct.ast_crtc*, %struct.ast_crtc** %4, align 8
  %18 = getelementptr inbounds %struct.ast_crtc, %struct.ast_crtc* %17, i32 0, i32 0
  %19 = call i32 @drm_mode_crtc_set_gamma_size(i32* %18, i32 256)
  %20 = load %struct.ast_crtc*, %struct.ast_crtc** %4, align 8
  %21 = getelementptr inbounds %struct.ast_crtc, %struct.ast_crtc* %20, i32 0, i32 0
  %22 = call i32 @drm_crtc_helper_add(i32* %21, i32* @ast_crtc_helper_funcs)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %12, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.ast_crtc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
