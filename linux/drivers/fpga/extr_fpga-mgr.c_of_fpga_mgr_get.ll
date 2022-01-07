; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_of_fpga_mgr_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_of_fpga_mgr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@fpga_mgr_class = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpga_manager* @of_fpga_mgr_get(%struct.device_node* %0) #0 {
  %2 = alloca %struct.fpga_manager*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load i32, i32* @fpga_mgr_class, align 4
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call %struct.device* @class_find_device_by_of_node(i32 %5, %struct.device_node* %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.fpga_manager* @ERR_PTR(i32 %12)
  store %struct.fpga_manager* %13, %struct.fpga_manager** %2, align 8
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.fpga_manager* @__fpga_mgr_get(%struct.device* %15)
  store %struct.fpga_manager* %16, %struct.fpga_manager** %2, align 8
  br label %17

17:                                               ; preds = %14, %10
  %18 = load %struct.fpga_manager*, %struct.fpga_manager** %2, align 8
  ret %struct.fpga_manager* %18
}

declare dso_local %struct.device* @class_find_device_by_of_node(i32, %struct.device_node*) #1

declare dso_local %struct.fpga_manager* @ERR_PTR(i32) #1

declare dso_local %struct.fpga_manager* @__fpga_mgr_get(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
