; ModuleID = '/home/carl/AnghaBench/linux/drivers/dca/extr_dca-sysfs.c_dca_sysfs_add_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dca/extr_dca-sysfs.c_dca_sysfs_add_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dca_idr_lock = common dso_local global i32 0, align 4
@dca_idr = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@dca_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dca%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dca_sysfs_add_provider(%struct.dca_provider* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dca_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.dca_provider* %0, %struct.dca_provider** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @idr_preload(i32 %8)
  %10 = call i32 @spin_lock(i32* @dca_idr_lock)
  %11 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %12 = load i32, i32* @GFP_NOWAIT, align 4
  %13 = call i32 @idr_alloc(i32* @dca_idr, %struct.dca_provider* %11, i32 0, i32 0, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %19 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = call i32 @spin_unlock(i32* @dca_idr_lock)
  %22 = call i32 (...) @idr_preload_end()
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %20
  %28 = load i32, i32* @dca_class, align 4
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @MKDEV(i32 0, i32 0)
  %31 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %32 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.device* @device_create(i32 %28, %struct.device* %29, i32 %30, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  store %struct.device* %34, %struct.device** %6, align 8
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i64 @IS_ERR(%struct.device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = call i32 @spin_lock(i32* @dca_idr_lock)
  %40 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %41 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @idr_remove(i32* @dca_idr, i32 %42)
  %44 = call i32 @spin_unlock(i32* @dca_idr_lock)
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @PTR_ERR(%struct.device* %45)
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %27
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %50 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %49, i32 0, i32 1
  store %struct.device* %48, %struct.device** %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %38, %25
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.dca_provider*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local %struct.device* @device_create(i32, %struct.device*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
