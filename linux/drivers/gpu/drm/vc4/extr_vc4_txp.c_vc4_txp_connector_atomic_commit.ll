; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_connector_atomic_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_connector_atomic_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.vc4_txp = type { i32 }
%struct.drm_gem_cma_object = type { i32 }

@drm_fmts = common dso_local global i64* null, align 8
@TXP_GO = common dso_local global i32 0, align 4
@TXP_VSTART_AT_EOF = common dso_local global i32 0, align 4
@TXP_EI = common dso_local global i32 0, align 4
@TXP_BYTE_ENABLE = common dso_local global i32 0, align 4
@txp_fmts = common dso_local global i32* null, align 8
@TXP_FORMAT = common dso_local global i32 0, align 4
@TXP_ALPHA_ENABLE = common dso_local global i32 0, align 4
@TXP_DST_PTR = common dso_local global i32 0, align 4
@TXP_DST_PITCH = common dso_local global i32 0, align 4
@TXP_DIM = common dso_local global i32 0, align 4
@TXP_WIDTH = common dso_local global i32 0, align 4
@TXP_HEIGHT = common dso_local global i32 0, align 4
@TXP_DST_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, %struct.drm_connector_state*)* @vc4_txp_connector_atomic_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_txp_connector_atomic_commit(%struct.drm_connector* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.vc4_txp*, align 8
  %6 = alloca %struct.drm_gem_cma_object*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = call %struct.vc4_txp* @connector_to_vc4_txp(%struct.drm_connector* %11)
  store %struct.vc4_txp* %12, %struct.vc4_txp** %5, align 8
  %13 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %133

22:                                               ; preds = %2
  %23 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %24 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %7, align 8
  %29 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %30 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %32, align 8
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %8, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %53, %22
  %35 = load i32, i32* %10, align 4
  %36 = load i64*, i64** @drm_fmts, align 8
  %37 = call i32 @ARRAY_SIZE(i64* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @drm_fmts, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %56

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %34

56:                                               ; preds = %51, %34
  %57 = load i32, i32* %10, align 4
  %58 = load i64*, i64** @drm_fmts, align 8
  %59 = call i32 @ARRAY_SIZE(i64* %58)
  %60 = icmp eq i32 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @WARN_ON(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %133

65:                                               ; preds = %56
  %66 = load i32, i32* @TXP_GO, align 4
  %67 = load i32, i32* @TXP_VSTART_AT_EOF, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @TXP_EI, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @TXP_BYTE_ENABLE, align 4
  %72 = call i32 @VC4_SET_FIELD(i32 15, i32 %71)
  %73 = or i32 %70, %72
  %74 = load i32*, i32** @txp_fmts, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TXP_FORMAT, align 4
  %80 = call i32 @VC4_SET_FIELD(i32 %78, i32 %79)
  %81 = or i32 %73, %80
  store i32 %81, i32* %9, align 4
  %82 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %83 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %65
  %89 = load i32, i32* @TXP_ALPHA_ENABLE, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %88, %65
  %93 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %94 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %93, i32 0)
  store %struct.drm_gem_cma_object* %94, %struct.drm_gem_cma_object** %6, align 8
  %95 = load i32, i32* @TXP_DST_PTR, align 4
  %96 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %97 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %100 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %98, %103
  %105 = call i32 @TXP_WRITE(i32 %95, i32 %104)
  %106 = load i32, i32* @TXP_DST_PITCH, align 4
  %107 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %108 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @TXP_WRITE(i32 %106, i32 %111)
  %113 = load i32, i32* @TXP_DIM, align 4
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @TXP_WIDTH, align 4
  %118 = call i32 @VC4_SET_FIELD(i32 %116, i32 %117)
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @TXP_HEIGHT, align 4
  %123 = call i32 @VC4_SET_FIELD(i32 %121, i32 %122)
  %124 = or i32 %118, %123
  %125 = call i32 @TXP_WRITE(i32 %113, i32 %124)
  %126 = load i32, i32* @TXP_DST_CTRL, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @TXP_WRITE(i32 %126, i32 %127)
  %129 = load %struct.vc4_txp*, %struct.vc4_txp** %5, align 8
  %130 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %129, i32 0, i32 0
  %131 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %132 = call i32 @drm_writeback_queue_job(i32* %130, %struct.drm_connector_state* %131)
  br label %133

133:                                              ; preds = %92, %64, %21
  ret void
}

declare dso_local %struct.vc4_txp* @connector_to_vc4_txp(%struct.drm_connector*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @TXP_WRITE(i32, i32) #1

declare dso_local i32 @drm_writeback_queue_job(i32*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
