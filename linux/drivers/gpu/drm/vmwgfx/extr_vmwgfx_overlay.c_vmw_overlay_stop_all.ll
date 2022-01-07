; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_stop_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_stop_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_overlay* }
%struct.vmw_overlay = type { i32, %struct.vmw_stream* }
%struct.vmw_stream = type { i32 }

@VMW_MAX_NUM_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_overlay_stop_all(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_overlay*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_stream*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %8 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %9 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %8, i32 0, i32 0
  %10 = load %struct.vmw_overlay*, %struct.vmw_overlay** %9, align 8
  store %struct.vmw_overlay* %10, %struct.vmw_overlay** %4, align 8
  %11 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %12 = icmp ne %struct.vmw_overlay* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %16 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %42, %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VMW_MAX_NUM_STREAMS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %24 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %23, i32 0, i32 1
  %25 = load %struct.vmw_stream*, %struct.vmw_stream** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %25, i64 %27
  store %struct.vmw_stream* %28, %struct.vmw_stream** %7, align 8
  %29 = load %struct.vmw_stream*, %struct.vmw_stream** %7, align 8
  %30 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %42

34:                                               ; preds = %22
  %35 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @vmw_overlay_stop(%struct.vmw_private* %35, i32 %36, i32 0, i32 0)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  br label %42

42:                                               ; preds = %34, %33
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %47 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_overlay_stop(%struct.vmw_private*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
