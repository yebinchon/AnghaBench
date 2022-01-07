; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_ext_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_ext_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { %struct.ast_private* }
%struct.ast_private = type { i64 }
%struct.drm_display_mode = type { i32 }
%struct.ast_vbios_mode_info = type { i32 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST2300 = common dso_local global i64 0, align 8
@AST2400 = common dso_local global i64 0, align 8
@AST2500 = common dso_local global i64 0, align 8
@AST2100 = common dso_local global i64 0, align 8
@AST1100 = common dso_local global i64 0, align 8
@AST2200 = common dso_local global i64 0, align 8
@AST2150 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*)* @ast_set_ext_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_set_ext_reg(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.ast_vbios_mode_info* %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.ast_vbios_mode_info*, align 8
  %7 = alloca %struct.ast_private*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.ast_vbios_mode_info* %2, %struct.ast_vbios_mode_info** %6, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ast_private*, %struct.ast_private** %15, align 8
  store %struct.ast_private* %16, %struct.ast_private** %7, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  store %struct.drm_framebuffer* %21, %struct.drm_framebuffer** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 8
  switch i32 %29, label %33 [
    i32 8, label %30
    i32 15, label %31
    i32 16, label %31
    i32 32, label %32
  ]

30:                                               ; preds = %3
  store i32 112, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %33

31:                                               ; preds = %3, %3
  store i32 112, i32* %9, align 4
  store i32 4, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %33

32:                                               ; preds = %3
  store i32 112, i32* %9, align 4
  store i32 8, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %33

33:                                               ; preds = %3, %32, %31, %30
  %34 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %35 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %34, i32 %35, i32 160, i32 143, i32 %36)
  %38 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %39 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %38, i32 %39, i32 163, i32 240, i32 %40)
  %42 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %43 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %42, i32 %43, i32 168, i32 253, i32 %44)
  %46 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %47 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AST2300, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %33
  %52 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %53 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AST2400, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %59 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AST2500, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57, %51, %33
  %64 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %65 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %66 = call i32 @ast_set_index_reg(%struct.ast_private* %64, i32 %65, i32 167, i32 120)
  %67 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %68 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %69 = call i32 @ast_set_index_reg(%struct.ast_private* %67, i32 %68, i32 166, i32 96)
  br label %109

70:                                               ; preds = %57
  %71 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %72 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AST2100, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %94, label %76

76:                                               ; preds = %70
  %77 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %78 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AST1100, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %84 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AST2200, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %90 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AST2150, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88, %82, %76, %70
  %95 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %96 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %97 = call i32 @ast_set_index_reg(%struct.ast_private* %95, i32 %96, i32 167, i32 63)
  %98 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %99 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %100 = call i32 @ast_set_index_reg(%struct.ast_private* %98, i32 %99, i32 166, i32 47)
  br label %108

101:                                              ; preds = %88
  %102 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %103 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %104 = call i32 @ast_set_index_reg(%struct.ast_private* %102, i32 %103, i32 167, i32 47)
  %105 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %106 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %107 = call i32 @ast_set_index_reg(%struct.ast_private* %105, i32 %106, i32 166, i32 31)
  br label %108

108:                                              ; preds = %101, %94
  br label %109

109:                                              ; preds = %108, %63
  ret void
}

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
