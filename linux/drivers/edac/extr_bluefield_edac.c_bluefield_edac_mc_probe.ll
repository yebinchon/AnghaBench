; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_bluefield_edac.c_bluefield_edac_mc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_bluefield_edac.c_bluefield_edac_mc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.bluefield_edac_priv = type { i32, i32 }
%struct.edac_mc_layer = type { i32, i32, i32 }
%struct.mem_ctl_info = type { i32, i8*, i32, i32, i32, i32, %struct.device*, %struct.bluefield_edac_priv* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"mss_number\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bf_edac: MSS number unknown\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"dimm_per_mc\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"bf_edac: DIMMs per MC unknown\0A\00", align 1
@MLXBF_EDAC_MAX_DIMM_PER_MC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"bf_edac: DIMMs per MC not valid\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_SLOT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to map EMI IO resource\0A\00", align 1
@MEM_FLAG_DDR4 = common dso_local global i32 0, align 4
@MEM_FLAG_RDDR4 = common dso_local global i32 0, align 4
@MEM_FLAG_LRDDR4 = common dso_local global i32 0, align 4
@MEM_FLAG_NVDIMM = common dso_local global i32 0, align 4
@EDAC_FLAG_SECDED = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"BlueField_Memory_Controller\00", align 1
@bluefield_edac_check = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to register with EDAC core\0A\00", align 1
@EDAC_OPSTATE_POLL = common dso_local global i32 0, align 4
@edac_op_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bluefield_edac_mc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluefield_edac_mc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bluefield_edac_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca [1 x %struct.edac_mc_layer], align 4
  %7 = alloca %struct.mem_ctl_info*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i64 @device_property_read_u32(%struct.device* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_warn(%struct.device* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %140

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i64 @device_property_read_u32(%struct.device* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @dev_warn(%struct.device* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %140

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MLXBF_EDAC_MAX_DIMM_PER_MC, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @dev_warn(%struct.device* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %140

41:                                               ; preds = %32
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource(%struct.platform_device* %42, i32 %43, i32 0)
  store %struct.resource* %44, %struct.resource** %8, align 8
  %45 = load %struct.resource*, %struct.resource** %8, align 8
  %46 = icmp ne %struct.resource* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %140

50:                                               ; preds = %41
  %51 = load i32, i32* @EDAC_MC_LAYER_SLOT, align 4
  %52 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %6, i64 0, i64 0
  %53 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %6, i64 0, i64 0
  %56 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %6, i64 0, i64 0
  %58 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %6, i64 0, i64 0
  %61 = call i32 @ARRAY_SIZE(%struct.edac_mc_layer* %60)
  %62 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %6, i64 0, i64 0
  %63 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 %59, i32 %61, %struct.edac_mc_layer* %62, i32 8)
  store %struct.mem_ctl_info* %63, %struct.mem_ctl_info** %7, align 8
  %64 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %65 = icmp ne %struct.mem_ctl_info* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %50
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %140

69:                                               ; preds = %50
  %70 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %71 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %70, i32 0, i32 7
  %72 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %71, align 8
  store %struct.bluefield_edac_priv* %72, %struct.bluefield_edac_priv** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %4, align 8
  %75 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load %struct.resource*, %struct.resource** %8, align 8
  %78 = call i32 @devm_ioremap_resource(%struct.device* %76, %struct.resource* %77)
  %79 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %4, align 8
  %80 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %4, align 8
  %82 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %69
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %89 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %4, align 8
  %90 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %12, align 4
  br label %136

93:                                               ; preds = %69
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %96 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %95, i32 0, i32 6
  store %struct.device* %94, %struct.device** %96, align 8
  %97 = load i32, i32* @MEM_FLAG_DDR4, align 4
  %98 = load i32, i32* @MEM_FLAG_RDDR4, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @MEM_FLAG_LRDDR4, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MEM_FLAG_NVDIMM, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %105 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @EDAC_FLAG_SECDED, align 4
  %107 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %108 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @DRIVER_NAME, align 4
  %110 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %111 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %113 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %112, i32 0, i32 1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** %113, align 8
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @dev_name(%struct.device* %114)
  %116 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %117 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @bluefield_edac_check, align 4
  %119 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %120 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %122 = call i32 @bluefield_edac_init_dimms(%struct.mem_ctl_info* %121)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %125 = call i32 @platform_set_drvdata(%struct.platform_device* %123, %struct.mem_ctl_info* %124)
  %126 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %127 = call i32 @edac_mc_add_mc(%struct.mem_ctl_info* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %93
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %12, align 4
  br label %136

134:                                              ; preds = %93
  %135 = load i32, i32* @EDAC_OPSTATE_POLL, align 4
  store i32 %135, i32* @edac_op_state, align 4
  store i32 0, i32* %2, align 4
  br label %140

136:                                              ; preds = %130, %86
  %137 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %138 = call i32 @edac_mc_free(%struct.mem_ctl_info* %137)
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %134, %66, %47, %36, %27, %18
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32, i32, %struct.edac_mc_layer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.edac_mc_layer*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @bluefield_edac_init_dimms(%struct.mem_ctl_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mem_ctl_info*) #1

declare dso_local i32 @edac_mc_add_mc(%struct.mem_ctl_info*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
