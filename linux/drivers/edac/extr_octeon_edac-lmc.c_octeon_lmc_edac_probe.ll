; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-lmc.c_octeon_lmc_edac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-lmc.c_octeon_lmc_edac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.mem_ctl_info = type { i8*, i8*, i32, i8*, i32* }
%struct.edac_mc_layer = type { i32, i32, i32 }
%union.cvmx_lmcx_mem_cfg0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%union.cvmx_lmcx_int_en = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%union.cvmx_lmcx_config = type { i8* }
%struct.TYPE_5__ = type { i32 }

@EDAC_MC_LAYER_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Disabled (ECC not enabled)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"octeon-lmc\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"octeon-lmc-err\00", align 1
@octeon_lmc_edac_poll = common dso_local global i32 0, align 4
@octeon_dev_groups = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"edac_mc_add_mc() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"co_lmc_err\00", align 1
@octeon_lmc_edac_poll_o2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @octeon_lmc_edac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_lmc_edac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca [1 x %struct.edac_mc_layer], align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_lmcx_mem_cfg0, align 8
  %8 = alloca %union.cvmx_lmcx_int_en, align 8
  %9 = alloca %union.cvmx_lmcx_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = call i32 (...) @opstate_init()
  %14 = load i32, i32* @EDAC_MC_LAYER_CHANNEL, align 4
  %15 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %5, i64 0, i64 0
  %16 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %5, i64 0, i64 0
  %18 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %5, i64 0, i64 0
  %20 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = call i64 (...) @OCTEON_IS_OCTEON1PLUS()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %1
  %24 = call i32 @CVMX_LMCX_MEM_CFG0(i32 0)
  %25 = call i8* @cvmx_read_csr(i32 %24)
  %26 = bitcast %union.cvmx_lmcx_mem_cfg0* %7 to i8**
  store i8* %25, i8** %26, align 8
  %27 = bitcast %union.cvmx_lmcx_mem_cfg0* %7 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %159

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %5, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(%struct.edac_mc_layer* %37)
  %39 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %5, i64 0, i64 0
  %40 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 %36, i32 %38, %struct.edac_mc_layer* %39, i32 4)
  store %struct.mem_ctl_info* %40, %struct.mem_ctl_info** %4, align 8
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %42 = icmp ne %struct.mem_ctl_info* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %159

46:                                               ; preds = %35
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %50 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 1
  %53 = call i8* @dev_name(i32* %52)
  %54 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %55 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %57 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %59 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %58, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %59, align 8
  %60 = load i32, i32* @octeon_lmc_edac_poll, align 4
  %61 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %62 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %64 = load i32, i32* @octeon_dev_groups, align 4
  %65 = call i64 @edac_mc_add_mc_with_groups(%struct.mem_ctl_info* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %46
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 1
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %72 = call i32 @edac_mc_free(%struct.mem_ctl_info* %71)
  %73 = load i32, i32* @ENXIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %159

75:                                               ; preds = %46
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @CVMX_LMCX_MEM_CFG0(i32 %76)
  %78 = call i8* @cvmx_read_csr(i32 %77)
  %79 = bitcast %union.cvmx_lmcx_mem_cfg0* %7 to i8**
  store i8* %78, i8** %79, align 8
  %80 = bitcast %union.cvmx_lmcx_mem_cfg0* %7 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = bitcast %union.cvmx_lmcx_mem_cfg0* %7 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @CVMX_LMCX_MEM_CFG0(i32 %84)
  %86 = bitcast %union.cvmx_lmcx_mem_cfg0* %7 to i8**
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @cvmx_write_csr(i32 %85, i8* %87)
  br label %155

89:                                               ; preds = %1
  %90 = call i32 @CVMX_LMCX_CONFIG(i32 0)
  %91 = call i8* @cvmx_read_csr(i32 %90)
  %92 = bitcast %union.cvmx_lmcx_config* %9 to i8**
  store i8* %91, i8** %92, align 8
  %93 = bitcast %union.cvmx_lmcx_config* %9 to %struct.TYPE_5__*
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 1
  %100 = call i32 @dev_info(i32* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %159

101:                                              ; preds = %89
  %102 = load i32, i32* %6, align 4
  %103 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %5, i64 0, i64 0
  %104 = call i32 @ARRAY_SIZE(%struct.edac_mc_layer* %103)
  %105 = getelementptr inbounds [1 x %struct.edac_mc_layer], [1 x %struct.edac_mc_layer]* %5, i64 0, i64 0
  %106 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 %102, i32 %104, %struct.edac_mc_layer* %105, i32 4)
  store %struct.mem_ctl_info* %106, %struct.mem_ctl_info** %4, align 8
  %107 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %108 = icmp ne %struct.mem_ctl_info* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* @ENXIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %159

112:                                              ; preds = %101
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 1
  %115 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %116 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %115, i32 0, i32 4
  store i32* %114, i32** %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 1
  %119 = call i8* @dev_name(i32* %118)
  %120 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %121 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %123 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %123, align 8
  %124 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %125 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %124, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %125, align 8
  %126 = load i32, i32* @octeon_lmc_edac_poll_o2, align 4
  %127 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %128 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %130 = load i32, i32* @octeon_dev_groups, align 4
  %131 = call i64 @edac_mc_add_mc_with_groups(%struct.mem_ctl_info* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %112
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 1
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %138 = call i32 @edac_mc_free(%struct.mem_ctl_info* %137)
  %139 = load i32, i32* @ENXIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %159

141:                                              ; preds = %112
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @CVMX_LMCX_MEM_CFG0(i32 %142)
  %144 = call i8* @cvmx_read_csr(i32 %143)
  %145 = bitcast %union.cvmx_lmcx_int_en* %8 to i8**
  store i8* %144, i8** %145, align 8
  %146 = bitcast %union.cvmx_lmcx_int_en* %8 to %struct.TYPE_6__*
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = bitcast %union.cvmx_lmcx_int_en* %8 to %struct.TYPE_6__*
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @CVMX_LMCX_MEM_CFG0(i32 %150)
  %152 = bitcast %union.cvmx_lmcx_int_en* %8 to i8**
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @cvmx_write_csr(i32 %151, i8* %153)
  br label %155

155:                                              ; preds = %141, %75
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %158 = call i32 @platform_set_drvdata(%struct.platform_device* %156, %struct.mem_ctl_info* %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %155, %133, %109, %97, %67, %43, %31
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @opstate_init(...) #1

declare dso_local i64 @OCTEON_IS_OCTEON1PLUS(...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_LMCX_MEM_CFG0(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32, i32, %struct.edac_mc_layer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.edac_mc_layer*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i64 @edac_mc_add_mc_with_groups(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_LMCX_CONFIG(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
