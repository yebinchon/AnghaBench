; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_bo_driver_ttm_tt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_bo_driver_ttm_tt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32* }
%struct.ttm_buffer_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@backend_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ttm_tt* (%struct.ttm_buffer_object*, i32)* @bo_driver_ttm_tt_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ttm_tt* @bo_driver_ttm_tt_create(%struct.ttm_buffer_object* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_tt*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ttm_tt* @kzalloc(i32 8, i32 %8)
  store %struct.ttm_tt* %9, %struct.ttm_tt** %6, align 8
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %11 = icmp ne %struct.ttm_tt* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.ttm_tt* null, %struct.ttm_tt** %3, align 8
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %14, i32 0, i32 0
  store i32* @backend_func, i32** %15, align 8
  %16 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ttm_tt_init(%struct.ttm_tt* %16, %struct.ttm_buffer_object* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %25

23:                                               ; preds = %13
  %24 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  store %struct.ttm_tt* %24, %struct.ttm_tt** %3, align 8
  br label %28

25:                                               ; preds = %22
  %26 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %27 = call i32 @kfree(%struct.ttm_tt* %26)
  store %struct.ttm_tt* null, %struct.ttm_tt** %3, align 8
  br label %28

28:                                               ; preds = %25, %23, %12
  %29 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  ret %struct.ttm_tt* %29
}

declare dso_local %struct.ttm_tt* @kzalloc(i32, i32) #1

declare dso_local i32 @ttm_tt_init(%struct.ttm_tt*, %struct.ttm_buffer_object*, i32) #1

declare dso_local i32 @kfree(%struct.ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
