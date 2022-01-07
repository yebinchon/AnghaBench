; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_alloc_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, %struct.TYPE_2__*, %struct.vmw_private* }
%struct.TYPE_2__ = type { i64 }
%struct.vmw_private = type { i32, %struct.idr* }
%struct.idr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_resource_alloc_id(%struct.vmw_resource* %0) #0 {
  %2 = alloca %struct.vmw_resource*, align 8
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.idr*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %2, align 8
  %6 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %7 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %6, i32 0, i32 2
  %8 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  store %struct.vmw_private* %8, %struct.vmw_private** %3, align 8
  %9 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %10 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %9, i32 0, i32 1
  %11 = load %struct.idr*, %struct.idr** %10, align 8
  %12 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %13 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.idr, %struct.idr* %11, i64 %16
  store %struct.idr* %17, %struct.idr** %5, align 8
  %18 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %19 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, -1
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @idr_preload(i32 %24)
  %26 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %27 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.idr*, %struct.idr** %5, align 8
  %30 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %31 = load i32, i32* @GFP_NOWAIT, align 4
  %32 = call i32 @idr_alloc(%struct.idr* %29, %struct.vmw_resource* %30, i32 1, i32 0, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %38 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %1
  %40 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %41 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = call i32 (...) @idr_preload_end()
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  ret i32 %50
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(%struct.idr*, %struct.vmw_resource*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
