; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-region.c_devm_fpga_region_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-region.c_devm_fpga_region_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_region = type { i32 }
%struct.device = type { i32 }
%struct.fpga_manager = type { i32 }

@devm_fpga_region_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpga_region* @devm_fpga_region_create(%struct.device* %0, %struct.fpga_manager* %1, i32 (%struct.fpga_region*)* %2) #0 {
  %4 = alloca %struct.fpga_region*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca i32 (%struct.fpga_region*)*, align 8
  %8 = alloca %struct.fpga_region**, align 8
  %9 = alloca %struct.fpga_region*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.fpga_manager* %1, %struct.fpga_manager** %6, align 8
  store i32 (%struct.fpga_region*)* %2, i32 (%struct.fpga_region*)** %7, align 8
  %10 = load i32, i32* @devm_fpga_region_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fpga_region** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.fpga_region** %12, %struct.fpga_region*** %8, align 8
  %13 = load %struct.fpga_region**, %struct.fpga_region*** %8, align 8
  %14 = icmp ne %struct.fpga_region** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.fpga_region* null, %struct.fpga_region** %4, align 8
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %19 = load i32 (%struct.fpga_region*)*, i32 (%struct.fpga_region*)** %7, align 8
  %20 = call %struct.fpga_region* @fpga_region_create(%struct.device* %17, %struct.fpga_manager* %18, i32 (%struct.fpga_region*)* %19)
  store %struct.fpga_region* %20, %struct.fpga_region** %9, align 8
  %21 = load %struct.fpga_region*, %struct.fpga_region** %9, align 8
  %22 = icmp ne %struct.fpga_region* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.fpga_region**, %struct.fpga_region*** %8, align 8
  %25 = call i32 @devres_free(%struct.fpga_region** %24)
  br label %32

26:                                               ; preds = %16
  %27 = load %struct.fpga_region*, %struct.fpga_region** %9, align 8
  %28 = load %struct.fpga_region**, %struct.fpga_region*** %8, align 8
  store %struct.fpga_region* %27, %struct.fpga_region** %28, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.fpga_region**, %struct.fpga_region*** %8, align 8
  %31 = call i32 @devres_add(%struct.device* %29, %struct.fpga_region** %30)
  br label %32

32:                                               ; preds = %26, %23
  %33 = load %struct.fpga_region*, %struct.fpga_region** %9, align 8
  store %struct.fpga_region* %33, %struct.fpga_region** %4, align 8
  br label %34

34:                                               ; preds = %32, %15
  %35 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  ret %struct.fpga_region* %35
}

declare dso_local %struct.fpga_region** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.fpga_region* @fpga_region_create(%struct.device*, %struct.fpga_manager*, i32 (%struct.fpga_region*)*) #1

declare dso_local i32 @devres_free(%struct.fpga_region**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.fpga_region**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
