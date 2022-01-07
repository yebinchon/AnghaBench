; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_read_mc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_read_mc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@MSR_K8_TOP_MEM1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"  TOP_MEM:  0x%016llx\0A\00", align 1
@MSR_K8_SYSCFG = common dso_local global i32 0, align 4
@MSR_K8_TOP_MEM2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"  TOP_MEM2: 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  TOP_MEM2 disabled\0A\00", align 1
@DF_DHAR = common dso_local global i32 0, align 4
@NBCAP = common dso_local global i32 0, align 4
@DRAM_RANGES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"  DRAM range[%d], base: 0x%016llx; limit: 0x%016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"   IntlvEn=%s; Range access: %s%s IntlvSel=%d DstNode=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@DHAR = common dso_local global i32 0, align 4
@DBAM0 = common dso_local global i32 0, align 4
@F10_ONLINE_SPARE = common dso_local global i32 0, align 4
@DCLR0 = common dso_local global i32 0, align 4
@DCHR0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"  DIMM type: %s\0A\00", align 1
@edac_mem_types = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*)* @read_mc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_mc_regs(%struct.amd64_pvt* %0) #0 {
  %2 = alloca %struct.amd64_pvt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %2, align 8
  %6 = load i32, i32* @MSR_K8_TOP_MEM1, align 4
  %7 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %8 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @rdmsrl(i32 %6, i32 %9)
  %11 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %12 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @MSR_K8_SYSCFG, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @rdmsrl(i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @BIT(i32 21)
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @MSR_K8_TOP_MEM2, align 4
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %25 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rdmsrl(i32 %23, i32 %26)
  %28 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %29 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %34

32:                                               ; preds = %1
  %33 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %22
  %35 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %36 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %35, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %41 = call i32 @__read_mc_regs_df(%struct.amd64_pvt* %40)
  %42 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %43 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DF_DHAR, align 4
  %46 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %47 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %46, i32 0, i32 10
  %48 = call i32 @amd64_read_pci_cfg(i32 %44, i32 %45, i32* %47)
  br label %153

49:                                               ; preds = %34
  %50 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %51 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NBCAP, align 4
  %54 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %55 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %54, i32 0, i32 12
  %56 = call i32 @amd64_read_pci_cfg(i32 %52, i32 %53, i32* %55)
  %57 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %58 = call i32 @read_dram_ctl_register(%struct.amd64_pvt* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %105, %49
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @DRAM_RANGES, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %59
  %64 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @read_dram_base_limit_regs(%struct.amd64_pvt* %64, i32 %65)
  %67 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @dram_rw(%struct.amd64_pvt* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %105

73:                                               ; preds = %63
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @get_dram_base(%struct.amd64_pvt* %75, i32 %76)
  %78 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @get_dram_limit(%struct.amd64_pvt* %78, i32 %79)
  %81 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %77, i32 %80)
  %82 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i64 @dram_intlv_en(%struct.amd64_pvt* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 2
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %98 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @dram_intlv_sel(%struct.amd64_pvt* %98, i32 %99)
  %101 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @dram_dst_node(%struct.amd64_pvt* %101, i32 %102)
  %104 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %87, i8* %92, i8* %97, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %73, %72
  %106 = load i32, i32* %3, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %59

108:                                              ; preds = %59
  %109 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %110 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DHAR, align 4
  %113 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %114 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %113, i32 0, i32 10
  %115 = call i32 @amd64_read_pci_cfg(i32 %111, i32 %112, i32* %114)
  %116 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %117 = load i32, i32* @DBAM0, align 4
  %118 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %119 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %118, i32 0, i32 9
  %120 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %116, i32 0, i32 %117, i32* %119)
  %121 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %122 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @F10_ONLINE_SPARE, align 4
  %125 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %126 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %125, i32 0, i32 7
  %127 = call i32 @amd64_read_pci_cfg(i32 %123, i32 %124, i32* %126)
  %128 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %129 = load i32, i32* @DCLR0, align 4
  %130 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %131 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %130, i32 0, i32 6
  %132 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %128, i32 0, i32 %129, i32* %131)
  %133 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %134 = load i32, i32* @DCHR0, align 4
  %135 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %136 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %135, i32 0, i32 5
  %137 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %133, i32 0, i32 %134, i32* %136)
  %138 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %139 = call i32 @dct_ganging_enabled(%struct.amd64_pvt* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %108
  %142 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %143 = load i32, i32* @DCLR0, align 4
  %144 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %145 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %144, i32 0, i32 4
  %146 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %142, i32 1, i32 %143, i32* %145)
  %147 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %148 = load i32, i32* @DCHR0, align 4
  %149 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %150 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %149, i32 0, i32 3
  %151 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %147, i32 1, i32 %148, i32* %150)
  br label %152

152:                                              ; preds = %141, %108
  br label %153

153:                                              ; preds = %152, %39
  %154 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %155 = call i32 @read_dct_base_mask(%struct.amd64_pvt* %154)
  %156 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %157 = call i32 @determine_memory_type(%struct.amd64_pvt* %156)
  %158 = load i32*, i32** @edac_mem_types, align 8
  %159 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %160 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %163)
  %165 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %166 = call i32 @determine_ecc_sym_sz(%struct.amd64_pvt* %165)
  %167 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %168 = call i32 @dump_misc_regs(%struct.amd64_pvt* %167)
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__read_mc_regs_df(%struct.amd64_pvt*) #1

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

declare dso_local i32 @read_dram_ctl_register(%struct.amd64_pvt*) #1

declare dso_local i32 @read_dram_base_limit_regs(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_rw(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @get_dram_base(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @get_dram_limit(%struct.amd64_pvt*, i32) #1

declare dso_local i64 @dram_intlv_en(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_intlv_sel(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_dst_node(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt*, i32, i32, i32*) #1

declare dso_local i32 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @read_dct_base_mask(%struct.amd64_pvt*) #1

declare dso_local i32 @determine_memory_type(%struct.amd64_pvt*) #1

declare dso_local i32 @determine_ecc_sym_sz(%struct.amd64_pvt*) #1

declare dso_local i32 @dump_misc_regs(%struct.amd64_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
