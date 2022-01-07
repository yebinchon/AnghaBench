; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.drm_device = type { %struct.pl111_drm_dev_private* }
%struct.pl111_drm_dev_private = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@pl111_display_enable_vblank = common dso_local global i32 0, align 4
@pl111_display_funcs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@pl111_display_disable_vblank = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pl111_display_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.pl111_drm_dev_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %7, align 8
  store %struct.pl111_drm_dev_private* %8, %struct.pl111_drm_dev_private** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call i32 @pl111_init_clock_divider(%struct.drm_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %17 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @pl111_display_enable_vblank, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pl111_display_funcs, i32 0, i32 1), align 4
  %24 = load i32, i32* @pl111_display_disable_vblank, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pl111_display_funcs, i32 0, i32 0), align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %28 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %27, i32 0, i32 2
  %29 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %30 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %35 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %40 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @drm_simple_display_pipe_init(%struct.drm_device* %26, i32* %28, %struct.TYPE_5__* @pl111_display_funcs, i32 %33, i32 %38, i32* null, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @pl111_init_clock_divider(%struct.drm_device*) #1

declare dso_local i32 @drm_simple_display_pipe_init(%struct.drm_device*, i32*, %struct.TYPE_5__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
