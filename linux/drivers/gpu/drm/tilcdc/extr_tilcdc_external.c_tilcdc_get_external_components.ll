; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_external.c_tilcdc_get_external_components.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_external.c_tilcdc_get_external_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_match = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"nxp,tda998x\00", align 1
@dev_match_of = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tilcdc_get_external_components(%struct.device* %0, %struct.component_match** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.component_match**, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.component_match** %1, %struct.component_match*** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device_node* @of_graph_get_remote_node(i32 %9, i32 0, i32 0)
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = call i32 @of_device_is_compatible(%struct.device_node* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call i32 @of_node_put(%struct.device_node* %15)
  store i32 0, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.component_match**, %struct.component_match*** %5, align 8
  %19 = icmp ne %struct.component_match** %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.component_match**, %struct.component_match*** %5, align 8
  %23 = load i32, i32* @dev_match_of, align 4
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call i32 @drm_of_component_match_add(%struct.device* %21, %struct.component_match** %22, i32 %23, %struct.device_node* %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i32 @of_node_put(%struct.device_node* %27)
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @drm_of_component_match_add(%struct.device*, %struct.component_match**, i32, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
