; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_destroy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_destroy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.atmel_hlcdc_dc* }
%struct.atmel_hlcdc_dc = type { i32 }
%struct.drm_plane_state = type { i64 }
%struct.atmel_hlcdc_plane_state = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @atmel_hlcdc_plane_atomic_destroy_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_plane_atomic_destroy_state(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %6 = alloca %struct.atmel_hlcdc_dc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %8 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %9 = call %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(%struct.drm_plane_state* %8)
  store %struct.atmel_hlcdc_plane_state* %9, %struct.atmel_hlcdc_plane_state** %5, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %13, align 8
  store %struct.atmel_hlcdc_dc* %14, %struct.atmel_hlcdc_dc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %15
  %23 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %24 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %34 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_pool_free(i32 %25, %struct.TYPE_5__* %32, i32 %41)
  br label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %48 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %53 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @drm_framebuffer_put(i64 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %58 = call i32 @kfree(%struct.atmel_hlcdc_plane_state* %57)
  ret void
}

declare dso_local %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__**) #1

declare dso_local i32 @dma_pool_free(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @drm_framebuffer_put(i64) #1

declare dso_local i32 @kfree(%struct.atmel_hlcdc_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
