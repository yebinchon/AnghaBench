; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_overlay* }
%struct.vmw_overlay = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@VMW_MAX_NUM_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_overlay_close(%struct.vmw_private* %0) #0 {
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
  store i32 0, i32* %5, align 4
  %10 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %11 = icmp ne %struct.vmw_overlay* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %35, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @VMW_MAX_NUM_STREAMS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %22 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  %31 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @vmw_overlay_stop(%struct.vmw_private* %31, i32 %32, i32 0, i32 0)
  br label %34

34:                                               ; preds = %30, %20
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %42 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %41, i32 0, i32 0
  store %struct.vmw_overlay* null, %struct.vmw_overlay** %42, align 8
  %43 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %44 = call i32 @kfree(%struct.vmw_overlay* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @vmw_overlay_stop(%struct.vmw_private*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.vmw_overlay*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
