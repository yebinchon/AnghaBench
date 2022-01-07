; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_emit_clip_rects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_emit_clip_rects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R128_AUX1_SC_LEFT = common dso_local global i32 0, align 4
@R128_AUX1_SC_EN = common dso_local global i32 0, align 4
@R128_AUX1_SC_MODE_OR = common dso_local global i32 0, align 4
@R128_AUX2_SC_LEFT = common dso_local global i32 0, align 4
@R128_AUX2_SC_EN = common dso_local global i32 0, align 4
@R128_AUX2_SC_MODE_OR = common dso_local global i32 0, align 4
@R128_AUX3_SC_LEFT = common dso_local global i32 0, align 4
@R128_AUX3_SC_EN = common dso_local global i32 0, align 4
@R128_AUX3_SC_MODE_OR = common dso_local global i32 0, align 4
@R128_AUX_SC_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.drm_clip_rect*, i32)* @r128_emit_clip_rects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r128_emit_clip_rects(i32* %0, %struct.drm_clip_rect* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_clip_rect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.drm_clip_rect* %1, %struct.drm_clip_rect** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @RING_LOCALS, align 4
  %9 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 3, %14 ]
  %17 = mul nsw i32 %16, 5
  %18 = add nsw i32 %17, 2
  %19 = call i32 @BEGIN_RING(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %22, label %53

22:                                               ; preds = %15
  %23 = load i32, i32* @R128_AUX1_SC_LEFT, align 4
  %24 = call i32 @CCE_PACKET0(i32 %23, i32 3)
  %25 = call i32 @OUT_RING(i32 %24)
  %26 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %27 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %26, i64 0
  %28 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @OUT_RING(i32 %29)
  %31 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %32 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %31, i64 0
  %33 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @OUT_RING(i32 %35)
  %37 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %38 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %37, i64 0
  %39 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @OUT_RING(i32 %40)
  %42 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %43 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %42, i64 0
  %44 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @OUT_RING(i32 %46)
  %48 = load i32, i32* @R128_AUX1_SC_EN, align 4
  %49 = load i32, i32* @R128_AUX1_SC_MODE_OR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %22, %15
  %54 = load i32, i32* %6, align 4
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %87

56:                                               ; preds = %53
  %57 = load i32, i32* @R128_AUX2_SC_LEFT, align 4
  %58 = call i32 @CCE_PACKET0(i32 %57, i32 3)
  %59 = call i32 @OUT_RING(i32 %58)
  %60 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %61 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %60, i64 1
  %62 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @OUT_RING(i32 %63)
  %65 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %66 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %65, i64 1
  %67 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @OUT_RING(i32 %69)
  %71 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %72 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %71, i64 1
  %73 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @OUT_RING(i32 %74)
  %76 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %77 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %76, i64 1
  %78 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @OUT_RING(i32 %80)
  %82 = load i32, i32* @R128_AUX2_SC_EN, align 4
  %83 = load i32, i32* @R128_AUX2_SC_MODE_OR, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %56, %53
  %88 = load i32, i32* %6, align 4
  %89 = icmp sge i32 %88, 3
  br i1 %89, label %90, label %121

90:                                               ; preds = %87
  %91 = load i32, i32* @R128_AUX3_SC_LEFT, align 4
  %92 = call i32 @CCE_PACKET0(i32 %91, i32 3)
  %93 = call i32 @OUT_RING(i32 %92)
  %94 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %95 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %94, i64 2
  %96 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @OUT_RING(i32 %97)
  %99 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %100 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %99, i64 2
  %101 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  %104 = call i32 @OUT_RING(i32 %103)
  %105 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %106 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %105, i64 2
  %107 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @OUT_RING(i32 %108)
  %110 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %5, align 8
  %111 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %110, i64 2
  %112 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  %115 = call i32 @OUT_RING(i32 %114)
  %116 = load i32, i32* @R128_AUX3_SC_EN, align 4
  %117 = load i32, i32* @R128_AUX3_SC_MODE_OR, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %90, %87
  %122 = load i32, i32* @R128_AUX_SC_CNTL, align 4
  %123 = call i32 @CCE_PACKET0(i32 %122, i32 0)
  %124 = call i32 @OUT_RING(i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @OUT_RING(i32 %125)
  %127 = call i32 (...) @ADVANCE_RING()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
