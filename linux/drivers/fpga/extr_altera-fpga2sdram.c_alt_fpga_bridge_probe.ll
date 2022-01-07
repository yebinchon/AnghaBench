; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-fpga2sdram.c_alt_fpga_bridge_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-fpga2sdram.c_alt_fpga_bridge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.alt_fpga2sdram_data = type { i8*, %struct.regmap*, %struct.device* }
%struct.regmap = type { i32 }
%struct.fpga_bridge = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"altr,sdr-ctl\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"regmap for altr,sdr-ctl lookup failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"altr,sys-mgr\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"regmap for altr,sys-mgr lookup failed.\0A\00", align 1
@SYSMGR_ISWGRP_HANDOFF3 = common dso_local global i32 0, align 4
@F2S_BRIDGE_NAME = common dso_local global i32 0, align 4
@altera_fpga2sdram_br_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"driver initialized with handoff %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"bridge-enable\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"invalid bridge-enable %u > 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s bridge\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @alt_fpga_bridge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alt_fpga_bridge_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.alt_fpga2sdram_data*, align 8
  %6 = alloca %struct.fpga_bridge*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.alt_fpga2sdram_data* @devm_kzalloc(%struct.device* %12, i32 24, i32 %13)
  store %struct.alt_fpga2sdram_data* %14, %struct.alt_fpga2sdram_data** %5, align 8
  %15 = load %struct.alt_fpga2sdram_data*, %struct.alt_fpga2sdram_data** %5, align 8
  %16 = icmp ne %struct.alt_fpga2sdram_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %114

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.alt_fpga2sdram_data*, %struct.alt_fpga2sdram_data** %5, align 8
  %23 = getelementptr inbounds %struct.alt_fpga2sdram_data, %struct.alt_fpga2sdram_data* %22, i32 0, i32 2
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = call i8* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = bitcast i8* %24 to %struct.regmap*
  %26 = load %struct.alt_fpga2sdram_data*, %struct.alt_fpga2sdram_data** %5, align 8
  %27 = getelementptr inbounds %struct.alt_fpga2sdram_data, %struct.alt_fpga2sdram_data* %26, i32 0, i32 1
  store %struct.regmap* %25, %struct.regmap** %27, align 8
  %28 = load %struct.alt_fpga2sdram_data*, %struct.alt_fpga2sdram_data** %5, align 8
  %29 = getelementptr inbounds %struct.alt_fpga2sdram_data, %struct.alt_fpga2sdram_data* %28, i32 0, i32 1
  %30 = load %struct.regmap*, %struct.regmap** %29, align 8
  %31 = call i64 @IS_ERR(%struct.regmap* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.alt_fpga2sdram_data*, %struct.alt_fpga2sdram_data** %5, align 8
  %37 = getelementptr inbounds %struct.alt_fpga2sdram_data, %struct.alt_fpga2sdram_data* %36, i32 0, i32 1
  %38 = load %struct.regmap*, %struct.regmap** %37, align 8
  %39 = call i32 @PTR_ERR(%struct.regmap* %38)
  store i32 %39, i32* %2, align 4
  br label %114

40:                                               ; preds = %20
  %41 = call i8* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %42 = bitcast i8* %41 to %struct.regmap*
  store %struct.regmap* %42, %struct.regmap** %8, align 8
  %43 = load %struct.regmap*, %struct.regmap** %8, align 8
  %44 = call i64 @IS_ERR(%struct.regmap* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.regmap*, %struct.regmap** %8, align 8
  %50 = call i32 @PTR_ERR(%struct.regmap* %49)
  store i32 %50, i32* %2, align 4
  br label %114

51:                                               ; preds = %40
  %52 = load %struct.regmap*, %struct.regmap** %8, align 8
  %53 = load i32, i32* @SYSMGR_ISWGRP_HANDOFF3, align 4
  %54 = load %struct.alt_fpga2sdram_data*, %struct.alt_fpga2sdram_data** %5, align 8
  %55 = getelementptr inbounds %struct.alt_fpga2sdram_data, %struct.alt_fpga2sdram_data* %54, i32 0, i32 0
  %56 = call i32 @regmap_read(%struct.regmap* %52, i32 %53, i8** %55)
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @F2S_BRIDGE_NAME, align 4
  %59 = load %struct.alt_fpga2sdram_data*, %struct.alt_fpga2sdram_data** %5, align 8
  %60 = call %struct.fpga_bridge* @devm_fpga_bridge_create(%struct.device* %57, i32 %58, i32* @altera_fpga2sdram_br_ops, %struct.alt_fpga2sdram_data* %59)
  store %struct.fpga_bridge* %60, %struct.fpga_bridge** %6, align 8
  %61 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %62 = icmp ne %struct.fpga_bridge* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %114

66:                                               ; preds = %51
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %69 = call i32 @platform_set_drvdata(%struct.platform_device* %67, %struct.fpga_bridge* %68)
  %70 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %71 = call i32 @fpga_bridge_register(%struct.fpga_bridge* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %114

76:                                               ; preds = %66
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.alt_fpga2sdram_data*, %struct.alt_fpga2sdram_data** %5, align 8
  %79 = getelementptr inbounds %struct.alt_fpga2sdram_data, %struct.alt_fpga2sdram_data* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @dev_info(%struct.device* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = getelementptr inbounds %struct.device, %struct.device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @of_property_read_u32(i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %112, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @dev_warn(%struct.device* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  br label %111

94:                                               ; preds = %87
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)
  %100 = call i32 @dev_info(%struct.device* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %99)
  %101 = load %struct.alt_fpga2sdram_data*, %struct.alt_fpga2sdram_data** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @_alt_fpga2sdram_enable_set(%struct.alt_fpga2sdram_data* %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %94
  %107 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %108 = call i32 @fpga_bridge_unregister(%struct.fpga_bridge* %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %114

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %90
  br label %112

112:                                              ; preds = %111, %76
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %106, %74, %63, %46, %33, %17
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.alt_fpga2sdram_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i8**) #1

declare dso_local %struct.fpga_bridge* @devm_fpga_bridge_create(%struct.device*, i32, i32*, %struct.alt_fpga2sdram_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_bridge*) #1

declare dso_local i32 @fpga_bridge_register(%struct.fpga_bridge*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @_alt_fpga2sdram_enable_set(%struct.alt_fpga2sdram_data*, i32) #1

declare dso_local i32 @fpga_bridge_unregister(%struct.fpga_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
