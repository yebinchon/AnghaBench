; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.drm_agp_binding = type { i32, i32 }
%struct.drm_agp_mem = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"base = 0x%lx entry->bound = 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_agp_bind(%struct.drm_device* %0, %struct.drm_agp_binding* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_agp_binding*, align 8
  %6 = alloca %struct.drm_agp_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_agp_binding* %1, %struct.drm_agp_binding** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %79

23:                                               ; preds = %13
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = load %struct.drm_agp_binding*, %struct.drm_agp_binding** %5, align 8
  %26 = getelementptr inbounds %struct.drm_agp_binding, %struct.drm_agp_binding* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.drm_agp_mem* @drm_agp_lookup_entry(%struct.drm_device* %24, i32 %27)
  store %struct.drm_agp_mem* %28, %struct.drm_agp_mem** %6, align 8
  %29 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %30 = icmp ne %struct.drm_agp_mem* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %33 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %23
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %79

39:                                               ; preds = %31
  %40 = load %struct.drm_agp_binding*, %struct.drm_agp_binding** %5, align 8
  %41 = getelementptr inbounds %struct.drm_agp_binding, %struct.drm_agp_binding* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = add nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %49 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @drm_bind_agp(i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %79

57:                                               ; preds = %39
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %62, %66
  %68 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %69 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %76 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %57, %55, %36, %20
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.drm_agp_mem* @drm_agp_lookup_entry(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_bind_agp(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
