; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_rgb.c_fsl_dcu_create_outputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_rgb.c_fsl_dcu_create_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dcu_drm_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.drm_panel* }
%struct.drm_panel = type { i32 }
%struct.device_node = type { i32 }
%struct.drm_bridge = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"fsl,panel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_dcu_create_outputs(%struct.fsl_dcu_drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_dcu_drm_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.drm_panel*, align 8
  %6 = alloca %struct.drm_bridge*, align 8
  %7 = alloca i32, align 4
  store %struct.fsl_dcu_drm_device* %0, %struct.fsl_dcu_drm_device** %3, align 8
  %8 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.device_node* @of_parse_phandle(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call %struct.drm_panel* @of_drm_find_panel(%struct.device_node* %15)
  %17 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.drm_panel* %16, %struct.drm_panel** %19, align 8
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i32 @of_node_put(%struct.device_node* %20)
  %22 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %23 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.drm_panel*, %struct.drm_panel** %24, align 8
  %26 = call i64 @IS_ERR(%struct.drm_panel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.drm_panel*, %struct.drm_panel** %31, align 8
  %33 = call i32 @PTR_ERR(%struct.drm_panel* %32)
  store i32 %33, i32* %2, align 4
  br label %66

34:                                               ; preds = %14
  %35 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %36 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.drm_panel*, %struct.drm_panel** %38, align 8
  %40 = call i32 @fsl_dcu_attach_panel(%struct.fsl_dcu_drm_device* %35, %struct.drm_panel* %39)
  store i32 %40, i32* %2, align 4
  br label %66

41:                                               ; preds = %1
  %42 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %43 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @drm_of_find_panel_or_bridge(i32 %44, i32 0, i32 0, %struct.drm_panel** %5, %struct.drm_bridge** %6)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %66

50:                                               ; preds = %41
  %51 = load %struct.drm_panel*, %struct.drm_panel** %5, align 8
  %52 = icmp ne %struct.drm_panel* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.drm_panel*, %struct.drm_panel** %5, align 8
  %55 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %56 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.drm_panel* %54, %struct.drm_panel** %57, align 8
  %58 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %59 = load %struct.drm_panel*, %struct.drm_panel** %5, align 8
  %60 = call i32 @fsl_dcu_attach_panel(%struct.fsl_dcu_drm_device* %58, %struct.drm_panel* %59)
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %50
  %62 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %63 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %62, i32 0, i32 0
  %64 = load %struct.drm_bridge*, %struct.drm_bridge** %6, align 8
  %65 = call i32 @drm_bridge_attach(i32* %63, %struct.drm_bridge* %64, i32* null)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %53, %48, %34, %28
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.drm_panel* @of_drm_find_panel(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.drm_panel*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_panel*) #1

declare dso_local i32 @fsl_dcu_attach_panel(%struct.fsl_dcu_drm_device*, %struct.drm_panel*) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, %struct.drm_panel**, %struct.drm_bridge**) #1

declare dso_local i32 @drm_bridge_attach(i32*, %struct.drm_bridge*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
