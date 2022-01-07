; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_num_free_overlays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_num_free_overlays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_overlay* }
%struct.vmw_overlay = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VMW_MAX_NUM_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_overlay_num_free_overlays(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_overlay*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %7 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 0
  %9 = load %struct.vmw_overlay*, %struct.vmw_overlay** %8, align 8
  store %struct.vmw_overlay* %9, %struct.vmw_overlay** %4, align 8
  %10 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %11 = call i32 @vmw_overlay_available(%struct.vmw_private* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %16 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %36, %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VMW_MAX_NUM_STREAMS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %24 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %41 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @vmw_overlay_available(%struct.vmw_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
