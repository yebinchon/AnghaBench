; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { i32 }
%struct.device = type { i32 }
%struct.fpga_image_info = type { i32 }

@fpga_bridge_class = common dso_local global i32 0, align 4
@fpga_bridge_dev_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpga_bridge* @fpga_bridge_get(%struct.device* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca %struct.fpga_bridge*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fpga_image_info*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %5, align 8
  %7 = load i32, i32* @fpga_bridge_class, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @fpga_bridge_dev_match, align 4
  %10 = call %struct.device* @class_find_device(i32 %7, i32* null, %struct.device* %8, i32 %9)
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.fpga_bridge* @ERR_PTR(i32 %15)
  store %struct.fpga_bridge* %16, %struct.fpga_bridge** %3, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %20 = call %struct.fpga_bridge* @__fpga_bridge_get(%struct.device* %18, %struct.fpga_image_info* %19)
  store %struct.fpga_bridge* %20, %struct.fpga_bridge** %3, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  ret %struct.fpga_bridge* %22
}

declare dso_local %struct.device* @class_find_device(i32, i32*, %struct.device*, i32) #1

declare dso_local %struct.fpga_bridge* @ERR_PTR(i32) #1

declare dso_local %struct.fpga_bridge* @__fpga_bridge_get(%struct.device*, %struct.fpga_image_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
