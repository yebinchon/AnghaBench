; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_surface_id_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_surface_id_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.qxl_bo = type { i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_surface_id_alloc(%struct.qxl_device* %0, %struct.qxl_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca %struct.qxl_bo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store %struct.qxl_bo* %1, %struct.qxl_bo** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i32 @idr_preload(i32 %10)
  %12 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %13 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %16 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %15, i32 0, i32 2
  %17 = load i32, i32* @GFP_NOWAIT, align 4
  %18 = call i32 @idr_alloc(i32* %16, i32* null, i32 1, i32 0, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %20 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = call i32 (...) @idr_preload_end()
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %66

27:                                               ; preds = %9
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %33 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp uge i8* %31, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %42 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %45 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %44, i32 0, i32 2
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @idr_remove(i32* %45, i8* %46)
  %48 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %49 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %52 = call i32 @qxl_reap_surface_id(%struct.qxl_device* %51, i32 2)
  br label %9

53:                                               ; preds = %27
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %56 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %58 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %62 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %64 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %53, %25
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @idr_remove(i32*, i8*) #1

declare dso_local i32 @qxl_reap_surface_id(%struct.qxl_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
