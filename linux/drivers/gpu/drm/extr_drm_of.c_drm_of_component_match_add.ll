; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_of.c_drm_of_component_match_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_of.c_drm_of_component_match_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_match = type { i32 }
%struct.device_node = type { i32 }

@drm_release_of = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_of_component_match_add(%struct.device* %0, %struct.component_match** %1, i32 (%struct.device*, i8*)* %2, %struct.device_node* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.component_match**, align 8
  %7 = alloca i32 (%struct.device*, i8*)*, align 8
  %8 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.component_match** %1, %struct.component_match*** %6, align 8
  store i32 (%struct.device*, i8*)* %2, i32 (%struct.device*, i8*)** %7, align 8
  store %struct.device_node* %3, %struct.device_node** %8, align 8
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  %10 = call i32 @of_node_get(%struct.device_node* %9)
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load %struct.component_match**, %struct.component_match*** %6, align 8
  %13 = load i32, i32* @drm_release_of, align 4
  %14 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %8, align 8
  %16 = call i32 @component_match_add_release(%struct.device* %11, %struct.component_match** %12, i32 %13, i32 (%struct.device*, i8*)* %14, %struct.device_node* %15)
  ret void
}

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @component_match_add_release(%struct.device*, %struct.component_match**, i32, i32 (%struct.device*, i8*)*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
