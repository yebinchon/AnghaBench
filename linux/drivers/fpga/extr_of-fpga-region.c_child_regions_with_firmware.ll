; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_child_regions_with_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_child_regions_with_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@fpga_region_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"firmware-name not allowed in child FPGA region: %pOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @child_regions_with_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_regions_with_firmware(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.device_node*, %struct.device_node** %2, align 8
  %7 = call i32 @of_node_get(%struct.device_node* %6)
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = load i32, i32* @fpga_region_of_match, align 4
  %10 = call %struct.device_node* @of_find_matching_node(%struct.device_node* %8, i32 %9)
  store %struct.device_node* %10, %struct.device_node** %3, align 8
  br label %11

11:                                               ; preds = %21, %1
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i32 @of_property_read_string(%struct.device_node* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %25

21:                                               ; preds = %14
  %22 = load %struct.device_node*, %struct.device_node** %3, align 8
  %23 = load i32, i32* @fpga_region_of_match, align 4
  %24 = call %struct.device_node* @of_find_matching_node(%struct.device_node* %22, i32 %23)
  store %struct.device_node* %24, %struct.device_node** %3, align 8
  br label %11

25:                                               ; preds = %18, %11
  %26 = load %struct.device_node*, %struct.device_node** %3, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.device_node*, %struct.device_node** %3, align 8
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_find_matching_node(%struct.device_node*, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
