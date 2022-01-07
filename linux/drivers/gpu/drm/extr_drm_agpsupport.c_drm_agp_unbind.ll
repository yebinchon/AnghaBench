; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_agp_binding = type { i32 }
%struct.drm_agp_mem = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_agp_unbind(%struct.drm_device* %0, %struct.drm_agp_binding* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_agp_binding*, align 8
  %6 = alloca %struct.drm_agp_mem*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_agp_binding* %1, %struct.drm_agp_binding** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %12
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load %struct.drm_agp_binding*, %struct.drm_agp_binding** %5, align 8
  %25 = getelementptr inbounds %struct.drm_agp_binding, %struct.drm_agp_binding* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.drm_agp_mem* @drm_agp_lookup_entry(%struct.drm_device* %23, i32 %26)
  store %struct.drm_agp_mem* %27, %struct.drm_agp_mem** %6, align 8
  %28 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %29 = icmp ne %struct.drm_agp_mem* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %32 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %22
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %30
  %39 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %40 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @drm_unbind_agp(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.drm_agp_mem*, %struct.drm_agp_mem** %6, align 8
  %47 = getelementptr inbounds %struct.drm_agp_mem, %struct.drm_agp_mem* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %35, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.drm_agp_mem* @drm_agp_lookup_entry(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_unbind_agp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
