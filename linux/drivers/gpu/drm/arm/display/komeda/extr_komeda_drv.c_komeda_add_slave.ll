; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_drv.c_komeda_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_drv.c_komeda_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_match = type { i32 }
%struct.device_node = type { i32 }

@compare_of = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.component_match**, %struct.device_node*, i32, i32)* @komeda_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_add_slave(%struct.device* %0, %struct.component_match** %1, %struct.device_node* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.component_match**, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.component_match** %1, %struct.component_match*** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.device_node*, %struct.device_node** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %12, i32 %13, i32 %14)
  store %struct.device_node* %15, %struct.device_node** %11, align 8
  %16 = load %struct.device_node*, %struct.device_node** %11, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.component_match**, %struct.component_match*** %7, align 8
  %21 = load i32, i32* @compare_of, align 4
  %22 = load %struct.device_node*, %struct.device_node** %11, align 8
  %23 = call i32 @drm_of_component_match_add(%struct.device* %19, %struct.component_match** %20, i32 %21, %struct.device_node* %22)
  %24 = load %struct.device_node*, %struct.device_node** %11, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  br label %26

26:                                               ; preds = %18, %5
  ret void
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local i32 @drm_of_component_match_add(%struct.device*, %struct.component_match**, i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
