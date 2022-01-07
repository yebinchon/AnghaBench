; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_unref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_overlay* }
%struct.vmw_overlay = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VMW_MAX_NUM_STREAMS = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_overlay_unref(%struct.vmw_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmw_overlay*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 0
  %9 = load %struct.vmw_overlay*, %struct.vmw_overlay** %8, align 8
  store %struct.vmw_overlay* %9, %struct.vmw_overlay** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @VMW_MAX_NUM_STREAMS, align 8
  %12 = icmp uge i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %16 = icmp ne %struct.vmw_overlay* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %22 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %25 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @vmw_overlay_stop(%struct.vmw_private* %35, i64 %36, i32 0, i32 0)
  %38 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %39 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %45 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %20, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vmw_overlay_stop(%struct.vmw_private*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
