; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_parse_ov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_parse_ov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_image_info = type { i32, i32, i32, i32, i32, %struct.device_node* }
%struct.fpga_region = type { i64, %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Region already has overlay applied.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"partial-fpga-config\00", align 1
@FPGA_MGR_PARTIAL_RECONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"external-fpga-config\00", align 1
@FPGA_MGR_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"encrypted-fpga-config\00", align 1
@FPGA_MGR_ENCRYPTED_BITSTREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"region-unfreeze-timeout-us\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"region-freeze-timeout-us\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"config-complete-timeout-us\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"error: specified firmware and external-fpga-config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpga_image_info* (%struct.fpga_region*, %struct.device_node*)* @of_fpga_region_parse_ov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpga_image_info* @of_fpga_region_parse_ov(%struct.fpga_region* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.fpga_image_info*, align 8
  %4 = alloca %struct.fpga_region*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fpga_image_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.fpga_region* %0, %struct.fpga_region** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  %11 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  %13 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.fpga_image_info* @ERR_PTR(i32 %20)
  store %struct.fpga_image_info* %21, %struct.fpga_image_info** %3, align 8
  br label %129

22:                                               ; preds = %2
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32 @child_regions_with_firmware(%struct.device_node* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.fpga_image_info* @ERR_PTR(i32 %28)
  store %struct.fpga_image_info* %29, %struct.fpga_image_info** %3, align 8
  br label %129

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call %struct.fpga_image_info* @fpga_image_info_alloc(%struct.device* %31)
  store %struct.fpga_image_info* %32, %struct.fpga_image_info** %7, align 8
  %33 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %34 = icmp ne %struct.fpga_image_info* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.fpga_image_info* @ERR_PTR(i32 %37)
  store %struct.fpga_image_info* %38, %struct.fpga_image_info** %3, align 8
  br label %129

39:                                               ; preds = %30
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %42 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %41, i32 0, i32 5
  store %struct.device_node* %40, %struct.device_node** %42, align 8
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = call i64 @of_property_read_bool(%struct.device_node* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* @FPGA_MGR_PARTIAL_RECONFIG, align 4
  %48 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %49 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %39
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i64 @of_property_read_bool(%struct.device_node* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @FPGA_MGR_EXTERNAL_CONFIG, align 4
  %58 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %59 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %52
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i64 @of_property_read_bool(%struct.device_node* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @FPGA_MGR_ENCRYPTED_BITSTREAM, align 4
  %68 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %69 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %62
  %73 = load %struct.device_node*, %struct.device_node** %5, align 8
  %74 = call i32 @of_property_read_string(%struct.device_node* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %72
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32 @devm_kstrdup(%struct.device* %77, i8* %78, i32 %79)
  %81 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %82 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %84 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  %90 = call %struct.fpga_image_info* @ERR_PTR(i32 %89)
  store %struct.fpga_image_info* %90, %struct.fpga_image_info** %3, align 8
  br label %129

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %72
  %93 = load %struct.device_node*, %struct.device_node** %5, align 8
  %94 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %95 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %94, i32 0, i32 4
  %96 = call i32 @of_property_read_u32(%struct.device_node* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %95)
  %97 = load %struct.device_node*, %struct.device_node** %5, align 8
  %98 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %99 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %98, i32 0, i32 3
  %100 = call i32 @of_property_read_u32(%struct.device_node* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32* %99)
  %101 = load %struct.device_node*, %struct.device_node** %5, align 8
  %102 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %103 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %102, i32 0, i32 2
  %104 = call i32 @of_property_read_u32(%struct.device_node* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32* %103)
  %105 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %106 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  br label %124

110:                                              ; preds = %92
  %111 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %112 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FPGA_MGR_EXTERNAL_CONFIG, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %124

122:                                              ; preds = %110
  %123 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  store %struct.fpga_image_info* %123, %struct.fpga_image_info** %3, align 8
  br label %129

124:                                              ; preds = %117, %109
  %125 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %126 = call i32 @fpga_image_info_free(%struct.fpga_image_info* %125)
  %127 = load i32, i32* %9, align 4
  %128 = call %struct.fpga_image_info* @ERR_PTR(i32 %127)
  store %struct.fpga_image_info* %128, %struct.fpga_image_info** %3, align 8
  br label %129

129:                                              ; preds = %124, %122, %87, %35, %27, %16
  %130 = load %struct.fpga_image_info*, %struct.fpga_image_info** %3, align 8
  ret %struct.fpga_image_info* %130
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.fpga_image_info* @ERR_PTR(i32) #1

declare dso_local i32 @child_regions_with_firmware(%struct.device_node*) #1

declare dso_local %struct.fpga_image_info* @fpga_image_info_alloc(%struct.device*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @devm_kstrdup(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @fpga_image_info_free(%struct.fpga_image_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
