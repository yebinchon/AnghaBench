; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_agp_backend.c_ttm_agp_tt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_agp_backend.c_ttm_agp_tt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32* }
%struct.ttm_buffer_object = type { i32 }
%struct.agp_bridge_data = type { i32 }
%struct.ttm_agp_backend = type { %struct.ttm_tt, %struct.agp_bridge_data*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ttm_agp_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttm_tt* @ttm_agp_tt_create(%struct.ttm_buffer_object* %0, %struct.agp_bridge_data* %1, i32 %2) #0 {
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.agp_bridge_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_agp_backend*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store %struct.agp_bridge_data* %1, %struct.agp_bridge_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ttm_agp_backend* @kmalloc(i32 24, i32 %9)
  store %struct.ttm_agp_backend* %10, %struct.ttm_agp_backend** %8, align 8
  %11 = load %struct.ttm_agp_backend*, %struct.ttm_agp_backend** %8, align 8
  %12 = icmp ne %struct.ttm_agp_backend* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.ttm_tt* null, %struct.ttm_tt** %4, align 8
  br label %35

14:                                               ; preds = %3
  %15 = load %struct.ttm_agp_backend*, %struct.ttm_agp_backend** %8, align 8
  %16 = getelementptr inbounds %struct.ttm_agp_backend, %struct.ttm_agp_backend* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %18 = load %struct.ttm_agp_backend*, %struct.ttm_agp_backend** %8, align 8
  %19 = getelementptr inbounds %struct.ttm_agp_backend, %struct.ttm_agp_backend* %18, i32 0, i32 1
  store %struct.agp_bridge_data* %17, %struct.agp_bridge_data** %19, align 8
  %20 = load %struct.ttm_agp_backend*, %struct.ttm_agp_backend** %8, align 8
  %21 = getelementptr inbounds %struct.ttm_agp_backend, %struct.ttm_agp_backend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %21, i32 0, i32 0
  store i32* @ttm_agp_func, i32** %22, align 8
  %23 = load %struct.ttm_agp_backend*, %struct.ttm_agp_backend** %8, align 8
  %24 = getelementptr inbounds %struct.ttm_agp_backend, %struct.ttm_agp_backend* %23, i32 0, i32 0
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @ttm_tt_init(%struct.ttm_tt* %24, %struct.ttm_buffer_object* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load %struct.ttm_agp_backend*, %struct.ttm_agp_backend** %8, align 8
  %31 = call i32 @kfree(%struct.ttm_agp_backend* %30)
  store %struct.ttm_tt* null, %struct.ttm_tt** %4, align 8
  br label %35

32:                                               ; preds = %14
  %33 = load %struct.ttm_agp_backend*, %struct.ttm_agp_backend** %8, align 8
  %34 = getelementptr inbounds %struct.ttm_agp_backend, %struct.ttm_agp_backend* %33, i32 0, i32 0
  store %struct.ttm_tt* %34, %struct.ttm_tt** %4, align 8
  br label %35

35:                                               ; preds = %32, %29, %13
  %36 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  ret %struct.ttm_tt* %36
}

declare dso_local %struct.ttm_agp_backend* @kmalloc(i32, i32) #1

declare dso_local i64 @ttm_tt_init(%struct.ttm_tt*, %struct.ttm_buffer_object*, i32) #1

declare dso_local i32 @kfree(%struct.ttm_agp_backend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
