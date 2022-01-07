; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_device = type { %struct.mcde* }
%struct.mcde = type { i32, i32, i64 }

@mcde_display_init.formats = internal constant [15 x i32] [i32 139, i32 141, i32 129, i32 132, i32 135, i32 137, i32 140, i32 142, i32 130, i32 133, i32 131, i32 134, i32 136, i32 138, i32 128], align 16
@mcde_display_enable_vblank = common dso_local global i32 0, align 4
@mcde_display_funcs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@mcde_display_disable_vblank = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcde_display_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mcde*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.mcde*, %struct.mcde** %7, align 8
  store %struct.mcde* %8, %struct.mcde** %4, align 8
  %9 = load %struct.mcde*, %struct.mcde** %4, align 8
  %10 = getelementptr inbounds %struct.mcde, %struct.mcde* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @mcde_display_enable_vblank, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mcde_display_funcs, i32 0, i32 1), align 4
  %15 = load i32, i32* @mcde_display_disable_vblank, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mcde_display_funcs, i32 0, i32 0), align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = load %struct.mcde*, %struct.mcde** %4, align 8
  %19 = getelementptr inbounds %struct.mcde, %struct.mcde* %18, i32 0, i32 1
  %20 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([15 x i32], [15 x i32]* @mcde_display_init.formats, i64 0, i64 0))
  %21 = load %struct.mcde*, %struct.mcde** %4, align 8
  %22 = getelementptr inbounds %struct.mcde, %struct.mcde* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @drm_simple_display_pipe_init(%struct.drm_device* %17, i32* %19, %struct.TYPE_3__* @mcde_display_funcs, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @mcde_display_init.formats, i64 0, i64 0), i32 %20, i32* null, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @drm_simple_display_pipe_init(%struct.drm_device*, i32*, %struct.TYPE_3__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
