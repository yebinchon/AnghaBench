; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_minor_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_minor_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_minor = type { i32, i32, i32, %struct.drm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@drm_minor_lock = common dso_local global i32 0, align 4
@drm_minors_idr = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @drm_minor_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_minor_alloc(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_minor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.drm_minor* @kzalloc(i32 24, i32 %9)
  store %struct.drm_minor* %10, %struct.drm_minor** %6, align 8
  %11 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %12 = icmp ne %struct.drm_minor* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %19 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %22 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %21, i32 0, i32 3
  store %struct.drm_device* %20, %struct.drm_device** %22, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @idr_preload(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @drm_minor_lock, i64 %25)
  %27 = load i32, i32* %5, align 4
  %28 = mul i32 64, %27
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  %31 = mul i32 64, %30
  %32 = load i32, i32* @GFP_NOWAIT, align 4
  %33 = call i32 @idr_alloc(i32* @drm_minors_idr, i32* null, i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @drm_minor_lock, i64 %34)
  %36 = call i32 (...) @idr_preload_end()
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  br label %72

40:                                               ; preds = %16
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %43 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %45 = call i32 @drm_sysfs_minor_alloc(%struct.drm_minor* %44)
  %46 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %47 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %49 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %55 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %8, align 4
  br label %63

58:                                               ; preds = %40
  %59 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device* %60, i32 %61)
  store %struct.drm_minor* %59, %struct.drm_minor** %62, align 8
  store i32 0, i32* %3, align 4
  br label %76

63:                                               ; preds = %53
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_lock_irqsave(i32* @drm_minor_lock, i64 %64)
  %66 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %67 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @idr_remove(i32* @drm_minors_idr, i32 %68)
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* @drm_minor_lock, i64 %70)
  br label %72

72:                                               ; preds = %63, %39
  %73 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %74 = call i32 @kfree(%struct.drm_minor* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %58, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.drm_minor* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_alloc(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @drm_sysfs_minor_alloc(%struct.drm_minor*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device*, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
