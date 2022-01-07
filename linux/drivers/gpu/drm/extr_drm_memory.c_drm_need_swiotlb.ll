; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_memory.c_drm_need_swiotlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_memory.c_drm_need_swiotlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.resource* }
%struct.resource = type { i32, %struct.resource* }

@iomem_resource = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_need_swiotlb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = call i64 (...) @xen_pv_domain()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = call i64 (...) @mem_encrypt_active()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %34

13:                                               ; preds = %9
  %14 = load %struct.resource*, %struct.resource** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iomem_resource, i32 0, i32 0), align 8
  store %struct.resource* %14, %struct.resource** %4, align 8
  br label %15

15:                                               ; preds = %24, %13
  %16 = load %struct.resource*, %struct.resource** %4, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @max(i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18
  %25 = load %struct.resource*, %struct.resource** %4, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 1
  %27 = load %struct.resource*, %struct.resource** %26, align 8
  store %struct.resource* %27, %struct.resource** %4, align 8
  br label %15

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 1, %30
  %32 = icmp sgt i32 %29, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %12, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @xen_pv_domain(...) #1

declare dso_local i64 @mem_encrypt_active(...) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
