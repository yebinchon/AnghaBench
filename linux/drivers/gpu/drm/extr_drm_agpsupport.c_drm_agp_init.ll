; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_agpsupport.c_drm_agp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_agp_head = type { %struct.TYPE_2__, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NOT_SUPPORTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_agp_head* @drm_agp_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_agp_head*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_agp_head*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_agp_head* null, %struct.drm_agp_head** %4, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.drm_agp_head* @kzalloc(i32 48, i32 %5)
  store %struct.drm_agp_head* %6, %struct.drm_agp_head** %4, align 8
  %7 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %8 = icmp ne %struct.drm_agp_head* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.drm_agp_head* null, %struct.drm_agp_head** %2, align 8
  br label %86

10:                                               ; preds = %1
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @agp_find_bridge(i32 %13)
  %15 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %16 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %15, i32 0, i32 5
  store i64 %14, i64* %16, align 8
  %17 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %18 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %10
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @agp_backend_acquire(i32 %24)
  %26 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %27 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %26, i32 0, i32 5
  store i64 %25, i64* %27, align 8
  %28 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %29 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %34 = call i32 @kfree(%struct.drm_agp_head* %33)
  store %struct.drm_agp_head* null, %struct.drm_agp_head** %2, align 8
  br label %86

35:                                               ; preds = %21
  %36 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %37 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %40 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %39, i32 0, i32 0
  %41 = call i32 @agp_copy_info(i64 %38, %struct.TYPE_2__* %40)
  %42 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %43 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @agp_backend_release(i64 %44)
  br label %53

46:                                               ; preds = %10
  %47 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %48 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %51 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %50, i32 0, i32 0
  %52 = call i32 @agp_copy_info(i64 %49, %struct.TYPE_2__* %51)
  br label %53

53:                                               ; preds = %46, %35
  %54 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %55 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NOT_SUPPORTED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %62 = call i32 @kfree(%struct.drm_agp_head* %61)
  store %struct.drm_agp_head* null, %struct.drm_agp_head** %2, align 8
  br label %86

63:                                               ; preds = %53
  %64 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %65 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %64, i32 0, i32 4
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %68 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %72 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %74 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %78 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %80 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  %84 = getelementptr inbounds %struct.drm_agp_head, %struct.drm_agp_head* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.drm_agp_head*, %struct.drm_agp_head** %4, align 8
  store %struct.drm_agp_head* %85, %struct.drm_agp_head** %2, align 8
  br label %86

86:                                               ; preds = %63, %60, %32, %9
  %87 = load %struct.drm_agp_head*, %struct.drm_agp_head** %2, align 8
  ret %struct.drm_agp_head* %87
}

declare dso_local %struct.drm_agp_head* @kzalloc(i32, i32) #1

declare dso_local i64 @agp_find_bridge(i32) #1

declare dso_local i64 @agp_backend_acquire(i32) #1

declare dso_local i32 @kfree(%struct.drm_agp_head*) #1

declare dso_local i32 @agp_copy_info(i64, %struct.TYPE_2__*) #1

declare dso_local i32 @agp_backend_release(i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
