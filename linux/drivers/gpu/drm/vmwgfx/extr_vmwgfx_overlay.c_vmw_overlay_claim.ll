; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_claim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_overlay* }
%struct.vmw_overlay = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@VMW_MAX_NUM_STREAMS = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_overlay_claim(%struct.vmw_private* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vmw_overlay*, align 8
  %7 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %9 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %8, i32 0, i32 0
  %10 = load %struct.vmw_overlay*, %struct.vmw_overlay** %9, align 8
  store %struct.vmw_overlay* %10, %struct.vmw_overlay** %6, align 8
  %11 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %12 = icmp ne %struct.vmw_overlay* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %18 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %48, %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @VMW_MAX_NUM_STREAMS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %26 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %48

35:                                               ; preds = %24
  %36 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %37 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %46 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 0, i32* %3, align 4
  br label %57

48:                                               ; preds = %34
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %20

51:                                               ; preds = %20
  %52 = load %struct.vmw_overlay*, %struct.vmw_overlay** %6, align 8
  %53 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @ESRCH, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %35, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
