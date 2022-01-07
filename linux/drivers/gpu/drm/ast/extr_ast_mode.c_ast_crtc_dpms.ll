; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ast_private* }
%struct.ast_private = type { i64, i32 }

@AST1180 = common dso_local global i64 0, align 8
@AST_IO_SEQ_PORT = common dso_local global i32 0, align 4
@AST_TX_DP501 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @ast_crtc_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ast_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ast_private*, %struct.ast_private** %9, align 8
  store %struct.ast_private* %10, %struct.ast_private** %5, align 8
  %11 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %12 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AST1180, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %51

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %51 [
    i32 130, label %19
    i32 129, label %19
    i32 128, label %19
    i32 131, label %36
  ]

19:                                               ; preds = %17, %17, %17
  %20 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %21 = load i32, i32* @AST_IO_SEQ_PORT, align 4
  %22 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %20, i32 %21, i32 1, i32 223, i32 0)
  %23 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %24 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AST_TX_DP501, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @ast_set_dp501_video_output(%struct.TYPE_2__* %31, i32 1)
  br label %33

33:                                               ; preds = %28, %19
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %35 = call i32 @ast_crtc_load_lut(%struct.drm_crtc* %34)
  br label %51

36:                                               ; preds = %17
  %37 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %38 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AST_TX_DP501, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i32 @ast_set_dp501_video_output(%struct.TYPE_2__* %45, i32 0)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %49 = load i32, i32* @AST_IO_SEQ_PORT, align 4
  %50 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %48, i32 %49, i32 1, i32 223, i32 32)
  br label %51

51:                                               ; preds = %16, %17, %47, %33
  ret void
}

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

declare dso_local i32 @ast_set_dp501_video_output(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ast_crtc_load_lut(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
