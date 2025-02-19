; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_fpga_enum_info_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_fpga_enum_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_fpga_enum_info = type { i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dfl_fpga_enum_info* @dfl_fpga_enum_info_alloc(%struct.device* %0) #0 {
  %2 = alloca %struct.dfl_fpga_enum_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dfl_fpga_enum_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call i32 @get_device(%struct.device* %5)
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dfl_fpga_enum_info* @devm_kzalloc(%struct.device* %7, i32 16, i32 %8)
  store %struct.dfl_fpga_enum_info* %9, %struct.dfl_fpga_enum_info** %4, align 8
  %10 = load %struct.dfl_fpga_enum_info*, %struct.dfl_fpga_enum_info** %4, align 8
  %11 = icmp ne %struct.dfl_fpga_enum_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @put_device(%struct.device* %13)
  store %struct.dfl_fpga_enum_info* null, %struct.dfl_fpga_enum_info** %2, align 8
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.dfl_fpga_enum_info*, %struct.dfl_fpga_enum_info** %4, align 8
  %18 = getelementptr inbounds %struct.dfl_fpga_enum_info, %struct.dfl_fpga_enum_info* %17, i32 0, i32 1
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.dfl_fpga_enum_info*, %struct.dfl_fpga_enum_info** %4, align 8
  %20 = getelementptr inbounds %struct.dfl_fpga_enum_info, %struct.dfl_fpga_enum_info* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.dfl_fpga_enum_info*, %struct.dfl_fpga_enum_info** %4, align 8
  store %struct.dfl_fpga_enum_info* %22, %struct.dfl_fpga_enum_info** %2, align 8
  br label %23

23:                                               ; preds = %15, %12
  %24 = load %struct.dfl_fpga_enum_info*, %struct.dfl_fpga_enum_info** %2, align 8
  ret %struct.dfl_fpga_enum_info* %24
}

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local %struct.dfl_fpga_enum_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
