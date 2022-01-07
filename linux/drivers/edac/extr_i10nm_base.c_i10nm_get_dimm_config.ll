; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i10nm_base.c_i10nm_get_dimm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i10nm_base.c_i10nm_get_dimm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, %struct.skx_pvt* }
%struct.skx_pvt = type { %struct.skx_imc* }
%struct.skx_imc = type { i32, i32 }
%struct.dimm_info = type { i32 }

@I10NM_NUM_CHANNELS = common dso_local global i32 0, align 4
@I10NM_NUM_DIMMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"dimmmtr 0x%x mcddrtcfg 0x%x (mc%d ch%d dimm%d)\0A\00", align 1
@EDAC_MOD_STR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ECC is disabled on imc %d channel %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i10nm_get_dimm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i10nm_get_dimm_config(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.skx_pvt*, align 8
  %5 = alloca %struct.skx_imc*, align 8
  %6 = alloca %struct.dimm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 3
  %14 = load %struct.skx_pvt*, %struct.skx_pvt** %13, align 8
  store %struct.skx_pvt* %14, %struct.skx_pvt** %4, align 8
  %15 = load %struct.skx_pvt*, %struct.skx_pvt** %4, align 8
  %16 = getelementptr inbounds %struct.skx_pvt, %struct.skx_pvt* %15, i32 0, i32 0
  %17 = load %struct.skx_imc*, %struct.skx_imc** %16, align 8
  store %struct.skx_imc* %17, %struct.skx_imc** %5, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %115, %1
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @I10NM_NUM_CHANNELS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %118

22:                                               ; preds = %18
  %23 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %24 = getelementptr inbounds %struct.skx_imc, %struct.skx_imc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %115

28:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %94, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @I10NM_NUM_DIMMS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %29
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %35 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %38 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %41 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %36, i32 %39, i32 %42, i32 %43, i32 %44, i32 0)
  store %struct.dimm_info* %45, %struct.dimm_info** %6, align 8
  %46 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @I10NM_GET_DIMMMTR(%struct.skx_imc* %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @I10NM_GET_MCDDRTCFG(%struct.skx_imc* %50, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %57 = getelementptr inbounds %struct.skx_imc, %struct.skx_imc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @IS_DIMM_PRESENT(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %33
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %68 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @skx_get_dimm_info(i32 %66, i32 0, %struct.dimm_info* %67, %struct.skx_imc* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  br label %93

76:                                               ; preds = %33
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @IS_NVDIMM_PRESENT(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %83 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @EDAC_MOD_STR, align 4
  %87 = call i64 @skx_get_nvdimm_info(%struct.dimm_info* %82, %struct.skx_imc* %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %81, %76
  br label %93

93:                                               ; preds = %92, %65
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %29

97:                                               ; preds = %29
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @i10nm_check_ecc(%struct.skx_imc* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @KERN_ERR, align 4
  %107 = load %struct.skx_imc*, %struct.skx_imc** %5, align 8
  %108 = getelementptr inbounds %struct.skx_imc, %struct.skx_imc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @i10nm_printk(i32 %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %119

114:                                              ; preds = %100, %97
  br label %115

115:                                              ; preds = %114, %27
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %18

118:                                              ; preds = %18
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %105
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @I10NM_GET_DIMMMTR(%struct.skx_imc*, i32, i32) #1

declare dso_local i32 @I10NM_GET_MCDDRTCFG(%struct.skx_imc*, i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_DIMM_PRESENT(i32) #1

declare dso_local i64 @skx_get_dimm_info(i32, i32, %struct.dimm_info*, %struct.skx_imc*, i32, i32) #1

declare dso_local i64 @IS_NVDIMM_PRESENT(i32, i32) #1

declare dso_local i64 @skx_get_nvdimm_info(%struct.dimm_info*, %struct.skx_imc*, i32, i32, i32) #1

declare dso_local i32 @i10nm_check_ecc(%struct.skx_imc*, i32) #1

declare dso_local i32 @i10nm_printk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
