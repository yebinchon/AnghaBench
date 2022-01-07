; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_drv.c_sti_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_drv.c_sti_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.component_match = type { i32 }

@compare_of = common dso_local global i32 0, align 4
@sti_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sti_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.component_match*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.component_match* null, %struct.component_match** %6, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @DMA_BIT_MASK(i32 32)
  %14 = call i32 @dma_set_coherent_mask(%struct.device* %12, i32 %13)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @devm_of_platform_populate(%struct.device* %15)
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %17, %struct.device_node* null)
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  br label %19

19:                                               ; preds = %22, %1
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load i32, i32* @compare_of, align 4
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call i32 @drm_of_component_match_add(%struct.device* %23, %struct.component_match** %6, i32 %24, %struct.device_node* %25)
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %27, %struct.device_node* %28)
  store %struct.device_node* %29, %struct.device_node** %5, align 8
  br label %19

30:                                               ; preds = %19
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load %struct.component_match*, %struct.component_match** %6, align 8
  %33 = call i32 @component_master_add_with_match(%struct.device* %31, i32* @sti_ops, %struct.component_match* %32)
  ret i32 %33
}

declare dso_local i32 @dma_set_coherent_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @drm_of_component_match_add(%struct.device*, %struct.component_match**, i32, %struct.device_node*) #1

declare dso_local i32 @component_master_add_with_match(%struct.device*, i32*, %struct.component_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
