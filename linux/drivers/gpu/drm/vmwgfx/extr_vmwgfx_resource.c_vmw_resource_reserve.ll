; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i64, i32*, %struct.TYPE_2__*, i32, %struct.vmw_private* }
%struct.TYPE_2__ = type { i64 }
%struct.vmw_private = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Failed to allocate a backup buffer of size %lu. bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_resource_reserve(%struct.vmw_resource* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca i32, align 4
  store %struct.vmw_resource* %0, %struct.vmw_resource** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %11 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %10, i32 0, i32 4
  %12 = load %struct.vmw_private*, %struct.vmw_private** %11, align 8
  store %struct.vmw_private* %12, %struct.vmw_private** %8, align 8
  %13 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %14 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %17 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %16, i32 0, i32 3
  %18 = call i32 @list_del_init(i32* %17)
  %19 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %20 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %23 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %3
  %29 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %30 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %33
  %37 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @vmw_resource_buf_alloc(%struct.vmw_resource* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %47 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %33, %28, %3
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmw_resource_buf_alloc(%struct.vmw_resource*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
