; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_overlay* }
%struct.vmw_overlay = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VMW_MAX_NUM_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_overlay_init(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_overlay*, align 8
  %5 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %6 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %6, i32 0, i32 0
  %8 = load %struct.vmw_overlay*, %struct.vmw_overlay** %7, align 8
  %9 = icmp ne %struct.vmw_overlay* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vmw_overlay* @kzalloc(i32 16, i32 %14)
  store %struct.vmw_overlay* %15, %struct.vmw_overlay** %4, align 8
  %16 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %17 = icmp ne %struct.vmw_overlay* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %58

21:                                               ; preds = %13
  %22 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %23 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %22, i32 0, i32 1
  %24 = call i32 @mutex_init(i32* %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %51, %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @VMW_MAX_NUM_STREAMS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %31 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %38 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %45 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %29
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load %struct.vmw_overlay*, %struct.vmw_overlay** %4, align 8
  %56 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %57 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %56, i32 0, i32 0
  store %struct.vmw_overlay* %55, %struct.vmw_overlay** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %18, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.vmw_overlay* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
