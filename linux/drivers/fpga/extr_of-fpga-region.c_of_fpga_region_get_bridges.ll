; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_get_bridges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_get_bridges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_region = type { i32, %struct.fpga_image_info*, %struct.device }
%struct.fpga_image_info = type { %struct.device_node* }
%struct.device_node = type { %struct.device_node* }
%struct.device = type { %struct.device_node* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fpga-bridges\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_region*)* @of_fpga_region_get_bridges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_fpga_region_get_bridges(%struct.fpga_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_region*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.fpga_image_info*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fpga_region* %0, %struct.fpga_region** %3, align 8
  %12 = load %struct.fpga_region*, %struct.fpga_region** %3, align 8
  %13 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %12, i32 0, i32 2
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.fpga_region*, %struct.fpga_region** %3, align 8
  %18 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %17, i32 0, i32 1
  %19 = load %struct.fpga_image_info*, %struct.fpga_image_info** %18, align 8
  store %struct.fpga_image_info* %19, %struct.fpga_image_info** %6, align 8
  store %struct.device_node* null, %struct.device_node** %9, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = getelementptr inbounds %struct.device_node, %struct.device_node* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  %23 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %24 = load %struct.fpga_region*, %struct.fpga_region** %3, align 8
  %25 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %24, i32 0, i32 0
  %26 = call i32 @of_fpga_bridge_get_to_list(%struct.device_node* %22, %struct.fpga_image_info* %23, i32* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %2, align 4
  br label %93

33:                                               ; preds = %1
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = getelementptr inbounds %struct.device_node, %struct.device_node* %37, i32 0, i32 0
  %39 = load %struct.device_node*, %struct.device_node** %38, align 8
  store %struct.device_node* %39, %struct.device_node** %9, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %42 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %41, i32 0, i32 0
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  %44 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %44, %struct.device_node** %7, align 8
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = icmp ne %struct.device_node* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.device_node*, %struct.device_node** %7, align 8
  %49 = call i32 @of_node_put(%struct.device_node* %48)
  %50 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %51 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %50, i32 0, i32 0
  %52 = load %struct.device_node*, %struct.device_node** %51, align 8
  store %struct.device_node* %52, %struct.device_node** %8, align 8
  br label %55

53:                                               ; preds = %40
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %54, %struct.device_node** %8, align 8
  br label %55

55:                                               ; preds = %53, %47
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %89, %55
  %57 = load %struct.device_node*, %struct.device_node** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %58)
  store %struct.device_node* %59, %struct.device_node** %7, align 8
  %60 = load %struct.device_node*, %struct.device_node** %7, align 8
  %61 = icmp ne %struct.device_node* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %92

63:                                               ; preds = %56
  %64 = load %struct.device_node*, %struct.device_node** %7, align 8
  %65 = load %struct.device_node*, %struct.device_node** %9, align 8
  %66 = icmp eq %struct.device_node* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.device_node*, %struct.device_node** %7, align 8
  %69 = call i32 @of_node_put(%struct.device_node* %68)
  br label %89

70:                                               ; preds = %63
  %71 = load %struct.device_node*, %struct.device_node** %7, align 8
  %72 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %73 = load %struct.fpga_region*, %struct.fpga_region** %3, align 8
  %74 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %73, i32 0, i32 0
  %75 = call i32 @of_fpga_bridge_get_to_list(%struct.device_node* %71, %struct.fpga_image_info* %72, i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.device_node*, %struct.device_node** %7, align 8
  %77 = call i32 @of_node_put(%struct.device_node* %76)
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load %struct.fpga_region*, %struct.fpga_region** %3, align 8
  %84 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %83, i32 0, i32 0
  %85 = call i32 @fpga_bridges_put(i32* %84)
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %93

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %56

92:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %82, %31
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @of_fpga_bridge_get_to_list(%struct.device_node*, %struct.fpga_image_info*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @fpga_bridges_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
