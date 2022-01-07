; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_agp_buffer = type { i32, i64, i32, i64 }
%struct.drm_agp_mem = type { i64, i64, i32, i64, %struct.agp_memory* }
%struct.agp_memory = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_agp_alloc(%struct.drm_device* %0, %struct.drm_agp_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_agp_buffer*, align 8
  %6 = alloca %struct.drm_agp_mem*, align 8
  %7 = alloca %struct.agp_memory*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_agp_buffer* %1, %struct.drm_agp_buffer** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %92

24:                                               ; preds = %14
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.drm_agp_mem* @kzalloc(i32 40, i32 %25)
  store %struct.drm_agp_mem* %26, %struct.drm_agp_mem** %6, align 8
  %27 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %28 = icmp ne %struct.drm_agp_mem* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %92

32:                                               ; preds = %24
  %33 = load %struct.drm_agp_buffer*, %struct.drm_agp_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.drm_agp_buffer, %struct.drm_agp_buffer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sdiv i32 %38, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %8, align 8
  %42 = load %struct.drm_agp_buffer*, %struct.drm_agp_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.drm_agp_buffer, %struct.drm_agp_buffer* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call %struct.agp_memory* @agp_allocate_memory(i32 %49, i64 %50, i64 %51)
  store %struct.agp_memory* %52, %struct.agp_memory** %7, align 8
  %53 = load %struct.agp_memory*, %struct.agp_memory** %7, align 8
  %54 = icmp ne %struct.agp_memory* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %32
  %56 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %57 = call i32 @kfree(%struct.drm_agp_mem* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %92

60:                                               ; preds = %32
  %61 = load %struct.agp_memory*, %struct.agp_memory** %7, align 8
  %62 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  %65 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %66 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.agp_memory*, %struct.agp_memory** %7, align 8
  %68 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %69 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %68, i32 0, i32 4
  store %struct.agp_memory* %67, %struct.agp_memory** %69, align 8
  %70 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %71 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %74 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %76 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %75, i32 0, i32 2
  %77 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @list_add(i32* %76, i32* %80)
  %82 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %83 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.drm_agp_buffer*, %struct.drm_agp_buffer** %5, align 8
  %86 = getelementptr inbounds %struct.drm_agp_buffer, %struct.drm_agp_buffer* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.agp_memory*, %struct.agp_memory** %7, align 8
  %88 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.drm_agp_buffer*, %struct.drm_agp_buffer** %5, align 8
  %91 = getelementptr inbounds %struct.drm_agp_buffer, %struct.drm_agp_buffer* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %60, %55, %29, %21
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.drm_agp_mem* @kzalloc(i32, i32) #1

declare dso_local %struct.agp_memory* @agp_allocate_memory(i32, i64, i64) #1

declare dso_local i32 @kfree(%struct.drm_agp_mem*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
