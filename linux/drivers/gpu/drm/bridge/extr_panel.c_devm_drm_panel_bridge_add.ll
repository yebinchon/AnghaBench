; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_panel.c_devm_drm_panel_bridge_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_panel.c_devm_drm_panel_bridge_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.device = type { i32 }
%struct.drm_panel = type { i32 }

@devm_drm_panel_bridge_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_bridge* @devm_drm_panel_bridge_add(%struct.device* %0, %struct.drm_panel* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.drm_panel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_bridge**, align 8
  %9 = alloca %struct.drm_bridge*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.drm_panel* %1, %struct.drm_panel** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @devm_drm_panel_bridge_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.drm_bridge** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.drm_bridge** %12, %struct.drm_bridge*** %8, align 8
  %13 = load %struct.drm_bridge**, %struct.drm_bridge*** %8, align 8
  %14 = icmp ne %struct.drm_bridge** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.drm_bridge* @ERR_PTR(i32 %17)
  store %struct.drm_bridge* %18, %struct.drm_bridge** %4, align 8
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel* %20, i32 %21)
  store %struct.drm_bridge* %22, %struct.drm_bridge** %9, align 8
  %23 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %24 = call i32 @IS_ERR(%struct.drm_bridge* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %28 = load %struct.drm_bridge**, %struct.drm_bridge*** %8, align 8
  store %struct.drm_bridge* %27, %struct.drm_bridge** %28, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.drm_bridge**, %struct.drm_bridge*** %8, align 8
  %31 = call i32 @devres_add(%struct.device* %29, %struct.drm_bridge** %30)
  br label %35

32:                                               ; preds = %19
  %33 = load %struct.drm_bridge**, %struct.drm_bridge*** %8, align 8
  %34 = call i32 @devres_free(%struct.drm_bridge** %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  store %struct.drm_bridge* %36, %struct.drm_bridge** %4, align 8
  br label %37

37:                                               ; preds = %35, %15
  %38 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  ret %struct.drm_bridge* %38
}

declare dso_local %struct.drm_bridge** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.drm_bridge* @ERR_PTR(i32) #1

declare dso_local %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel*, i32) #1

declare dso_local i32 @IS_ERR(%struct.drm_bridge*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.drm_bridge**) #1

declare dso_local i32 @devres_free(%struct.drm_bridge**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
