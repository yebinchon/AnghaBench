; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_fd_to_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_fd_to_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32, i32 }
%struct.drm_syncobj = type { i32 }
%struct.fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_syncobj*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@drm_syncobj_file_fops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, i32, i32*)* @drm_syncobj_fd_to_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_syncobj_fd_to_handle(%struct.drm_file* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_syncobj*, align 8
  %9 = alloca %struct.fd, align 8
  %10 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TYPE_2__* @fdget(i32 %11)
  %13 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %13, align 8
  %14 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, @drm_syncobj_file_fops
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @fdput(%struct.TYPE_2__* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %66

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.drm_syncobj*, %struct.drm_syncobj** %35, align 8
  store %struct.drm_syncobj* %36, %struct.drm_syncobj** %8, align 8
  %37 = load %struct.drm_syncobj*, %struct.drm_syncobj** %8, align 8
  %38 = call i32 @drm_syncobj_get(%struct.drm_syncobj* %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @idr_preload(i32 %39)
  %41 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %42 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %45 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %44, i32 0, i32 1
  %46 = load %struct.drm_syncobj*, %struct.drm_syncobj** %8, align 8
  %47 = load i32, i32* @GFP_NOWAIT, align 4
  %48 = call i32 @idr_alloc(i32* %45, %struct.drm_syncobj* %46, i32 1, i32 0, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %50 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = call i32 (...) @idr_preload_end()
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %10, align 4
  br label %61

58:                                               ; preds = %32
  %59 = load %struct.drm_syncobj*, %struct.drm_syncobj** %8, align 8
  %60 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @fdput(%struct.TYPE_2__* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %26, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_2__* @fdget(i32) #1

declare dso_local i32 @fdput(%struct.TYPE_2__*) #1

declare dso_local i32 @drm_syncobj_get(%struct.drm_syncobj*) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.drm_syncobj*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
