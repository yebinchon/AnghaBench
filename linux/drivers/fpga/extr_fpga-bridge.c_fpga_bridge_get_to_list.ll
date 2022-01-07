; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_get_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_get_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fpga_image_info = type { i32 }
%struct.list_head = type { i32 }
%struct.fpga_bridge = type { i32 }

@bridge_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpga_bridge_get_to_list(%struct.device* %0, %struct.fpga_image_info* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fpga_image_info*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.fpga_bridge*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %12 = call %struct.fpga_bridge* @fpga_bridge_get(%struct.device* %10, %struct.fpga_image_info* %11)
  store %struct.fpga_bridge* %12, %struct.fpga_bridge** %8, align 8
  %13 = load %struct.fpga_bridge*, %struct.fpga_bridge** %8, align 8
  %14 = call i64 @IS_ERR(%struct.fpga_bridge* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.fpga_bridge*, %struct.fpga_bridge** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.fpga_bridge* %17)
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @bridge_list_lock, i64 %20)
  %22 = load %struct.fpga_bridge*, %struct.fpga_bridge** %8, align 8
  %23 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %22, i32 0, i32 0
  %24 = load %struct.list_head*, %struct.list_head** %7, align 8
  %25 = call i32 @list_add(i32* %23, %struct.list_head* %24)
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @bridge_list_lock, i64 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.fpga_bridge* @fpga_bridge_get(%struct.device*, %struct.fpga_image_info*) #1

declare dso_local i64 @IS_ERR(%struct.fpga_bridge*) #1

declare dso_local i32 @PTR_ERR(%struct.fpga_bridge*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
