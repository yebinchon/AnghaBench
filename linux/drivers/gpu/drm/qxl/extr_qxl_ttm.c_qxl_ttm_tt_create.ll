; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_ttm_tt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_ttm_tt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32* }
%struct.ttm_buffer_object = type { i32 }
%struct.qxl_device = type { i32 }
%struct.qxl_ttm_tt = type { %struct.ttm_tt, %struct.qxl_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@qxl_backend_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ttm_tt* (%struct.ttm_buffer_object*, i32)* @qxl_ttm_tt_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ttm_tt* @qxl_ttm_tt_create(%struct.ttm_buffer_object* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qxl_device*, align 8
  %7 = alloca %struct.qxl_ttm_tt*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.qxl_device* @qxl_get_qdev(i32 %10)
  store %struct.qxl_device* %11, %struct.qxl_device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.qxl_ttm_tt* @kzalloc(i32 16, i32 %12)
  store %struct.qxl_ttm_tt* %13, %struct.qxl_ttm_tt** %7, align 8
  %14 = load %struct.qxl_ttm_tt*, %struct.qxl_ttm_tt** %7, align 8
  %15 = icmp eq %struct.qxl_ttm_tt* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.ttm_tt* null, %struct.ttm_tt** %3, align 8
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.qxl_ttm_tt*, %struct.qxl_ttm_tt** %7, align 8
  %19 = getelementptr inbounds %struct.qxl_ttm_tt, %struct.qxl_ttm_tt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %19, i32 0, i32 0
  store i32* @qxl_backend_func, i32** %20, align 8
  %21 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %22 = load %struct.qxl_ttm_tt*, %struct.qxl_ttm_tt** %7, align 8
  %23 = getelementptr inbounds %struct.qxl_ttm_tt, %struct.qxl_ttm_tt* %22, i32 0, i32 1
  store %struct.qxl_device* %21, %struct.qxl_device** %23, align 8
  %24 = load %struct.qxl_ttm_tt*, %struct.qxl_ttm_tt** %7, align 8
  %25 = getelementptr inbounds %struct.qxl_ttm_tt, %struct.qxl_ttm_tt* %24, i32 0, i32 0
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @ttm_tt_init(%struct.ttm_tt* %25, %struct.ttm_buffer_object* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.qxl_ttm_tt*, %struct.qxl_ttm_tt** %7, align 8
  %32 = call i32 @kfree(%struct.qxl_ttm_tt* %31)
  store %struct.ttm_tt* null, %struct.ttm_tt** %3, align 8
  br label %36

33:                                               ; preds = %17
  %34 = load %struct.qxl_ttm_tt*, %struct.qxl_ttm_tt** %7, align 8
  %35 = getelementptr inbounds %struct.qxl_ttm_tt, %struct.qxl_ttm_tt* %34, i32 0, i32 0
  store %struct.ttm_tt* %35, %struct.ttm_tt** %3, align 8
  br label %36

36:                                               ; preds = %33, %30, %16
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  ret %struct.ttm_tt* %37
}

declare dso_local %struct.qxl_device* @qxl_get_qdev(i32) #1

declare dso_local %struct.qxl_ttm_tt* @kzalloc(i32, i32) #1

declare dso_local i64 @ttm_tt_init(%struct.ttm_tt*, %struct.ttm_buffer_object*, i32) #1

declare dso_local i32 @kfree(%struct.qxl_ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
