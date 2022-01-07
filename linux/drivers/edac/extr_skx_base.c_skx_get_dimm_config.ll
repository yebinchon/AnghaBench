; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_get_dimm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_get_dimm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, %struct.skx_pvt* }
%struct.skx_pvt = type { %struct.skx_imc* }
%struct.skx_imc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dimm_info = type { i32 }

@SKX_NUM_CHANNELS = common dso_local global i32 0, align 4
@SKX_NUM_DIMMS = common dso_local global i32 0, align 4
@EDAC_MOD_STR = common dso_local global i32 0, align 4
@nvdimm_count = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ECC is disabled on imc %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @skx_get_dimm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skx_get_dimm_config(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.skx_pvt*, align 8
  %5 = alloca %struct.skx_imc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dimm_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 3
  %15 = load %struct.skx_pvt*, %struct.skx_pvt** %14, align 8
  store %struct.skx_pvt* %15, %struct.skx_pvt** %4, align 8
  %16 = load %struct.skx_pvt*, %struct.skx_pvt** %4, align 8
  %17 = getelementptr inbounds %struct.skx_pvt, %struct.skx_pvt* %16, i32 0, i32 0
  %18 = load %struct.skx_imc*, %struct.skx_imc** %17, align 8
  store %struct.skx_imc* %18, %struct.skx_imc** %5, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %130, %1
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @SKX_NUM_CHANNELS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %133

23:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  %24 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %25 = getelementptr inbounds %struct.skx_imc, %struct.skx_imc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_read_config_dword(i32 %31, i32 140, i32* %7)
  %33 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %34 = getelementptr inbounds %struct.skx_imc, %struct.skx_imc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_read_config_dword(i32 %40, i32 1024, i32* %8)
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %106, %23
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @SKX_NUM_DIMMS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %109

46:                                               ; preds = %42
  %47 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %48 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %51 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %54 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %49, i32 %52, i32 %55, i32 %56, i32 %57, i32 0)
  store %struct.dimm_info* %58, %struct.dimm_info** %9, align 8
  %59 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %60 = getelementptr inbounds %struct.skx_imc, %struct.skx_imc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 4, %67
  %69 = add nsw i32 128, %68
  %70 = call i32 @pci_read_config_dword(i32 %66, i32 %69, i32* %6)
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @IS_DIMM_PRESENT(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %46
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %78 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @skx_get_dimm_info(i32 %75, i32 %76, %struct.dimm_info* %77, %struct.skx_imc* %78, i32 %79, i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %12, align 4
  br label %105

86:                                               ; preds = %46
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @IS_NVDIMM_PRESENT(i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %93 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @EDAC_MOD_STR, align 4
  %97 = call i64 @skx_get_nvdimm_info(%struct.dimm_info* %92, %struct.skx_imc* %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @nvdimm_count, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @nvdimm_count, align 4
  br label %104

104:                                              ; preds = %91, %86
  br label %105

105:                                              ; preds = %104, %74
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %42

109:                                              ; preds = %42
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %114 = getelementptr inbounds %struct.skx_imc, %struct.skx_imc* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @skx_check_ecc(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* @KERN_ERR, align 4
  %123 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %124 = getelementptr inbounds %struct.skx_imc, %struct.skx_imc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @skx_printk(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %134

129:                                              ; preds = %112, %109
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %19

133:                                              ; preds = %19
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %121
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_DIMM_PRESENT(i32) #1

declare dso_local i64 @skx_get_dimm_info(i32, i32, %struct.dimm_info*, %struct.skx_imc*, i32, i32) #1

declare dso_local i64 @IS_NVDIMM_PRESENT(i32, i32) #1

declare dso_local i64 @skx_get_nvdimm_info(%struct.dimm_info*, %struct.skx_imc*, i32, i32, i32) #1

declare dso_local i32 @skx_check_ecc(i32) #1

declare dso_local i32 @skx_printk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
