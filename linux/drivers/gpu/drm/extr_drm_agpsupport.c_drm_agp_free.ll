; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_agp_buffer = type { i32 }
%struct.drm_agp_mem = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_agp_free(%struct.drm_device* %0, %struct.drm_agp_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_agp_buffer*, align 8
  %6 = alloca %struct.drm_agp_mem*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_agp_buffer* %1, %struct.drm_agp_buffer** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %11
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = load %struct.drm_agp_buffer*, %struct.drm_agp_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.drm_agp_buffer, %struct.drm_agp_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.drm_agp_mem* @drm_agp_lookup_entry(%struct.drm_device* %22, i32 %25)
  store %struct.drm_agp_mem* %26, %struct.drm_agp_mem** %6, align 8
  %27 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %28 = icmp ne %struct.drm_agp_mem* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %21
  %33 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %34 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %39 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_unbind_agp(i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %44 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %43, i32 0, i32 2
  %45 = call i32 @list_del(i32* %44)
  %46 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %47 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %50 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @drm_free_agp(i32 %48, i32 %51)
  %53 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %54 = call i32 @kfree(%struct.drm_agp_mem* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %42, %29, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.drm_agp_mem* @drm_agp_lookup_entry(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_unbind_agp(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @drm_free_agp(i32, i32) #1

declare dso_local i32 @kfree(%struct.drm_agp_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
