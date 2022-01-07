; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_get_mgr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_get_mgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"fpga-region\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fpga-mgr\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpga_manager* (%struct.device_node*)* @of_fpga_region_get_mgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpga_manager* @of_fpga_region_get_mgr(%struct.device_node* %0) #0 {
  %2 = alloca %struct.fpga_manager*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.fpga_manager*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call i32 @of_node_get(%struct.device_node* %6)
  br label %8

8:                                                ; preds = %29, %1
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = call i64 @of_device_is_compatible(%struct.device_node* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call %struct.fpga_manager* @of_fpga_mgr_get(%struct.device_node* %21)
  store %struct.fpga_manager* %22, %struct.fpga_manager** %5, align 8
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = call i32 @of_node_put(%struct.device_node* %25)
  %27 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  store %struct.fpga_manager* %27, %struct.fpga_manager** %2, align 8
  br label %38

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %11
  %30 = load %struct.device_node*, %struct.device_node** %3, align 8
  %31 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %30)
  store %struct.device_node* %31, %struct.device_node** %3, align 8
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.device_node*, %struct.device_node** %3, align 8
  %34 = call i32 @of_node_put(%struct.device_node* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.fpga_manager* @ERR_PTR(i32 %36)
  store %struct.fpga_manager* %37, %struct.fpga_manager** %2, align 8
  br label %38

38:                                               ; preds = %32, %20
  %39 = load %struct.fpga_manager*, %struct.fpga_manager** %2, align 8
  ret %struct.fpga_manager* %39
}

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.fpga_manager* @of_fpga_mgr_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local %struct.fpga_manager* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
