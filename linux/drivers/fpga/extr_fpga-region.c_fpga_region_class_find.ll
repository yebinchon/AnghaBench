; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-region.c_fpga_region_class_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-region.c_fpga_region_class_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_region = type { i32 }
%struct.device = type { i32 }

@fpga_region_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpga_region* @fpga_region_class_find(%struct.device* %0, i8* %1, i32 (%struct.device*, i8*)* %2) #0 {
  %4 = alloca %struct.fpga_region*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.device*, i8*)*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.device*, i8*)* %2, i32 (%struct.device*, i8*)** %7, align 8
  %9 = load i32, i32* @fpga_region_class, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %7, align 8
  %13 = call %struct.device* @class_find_device(i32 %9, %struct.device* %10, i8* %11, i32 (%struct.device*, i8*)* %12)
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = icmp ne %struct.device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.fpga_region* null, %struct.fpga_region** %4, align 8
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = call %struct.fpga_region* @to_fpga_region(%struct.device* %18)
  store %struct.fpga_region* %19, %struct.fpga_region** %4, align 8
  br label %20

20:                                               ; preds = %17, %16
  %21 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  ret %struct.fpga_region* %21
}

declare dso_local %struct.device* @class_find_device(i32, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #1

declare dso_local %struct.fpga_region* @to_fpga_region(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
