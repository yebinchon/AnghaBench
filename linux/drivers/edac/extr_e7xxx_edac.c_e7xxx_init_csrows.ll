; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e7xxx_edac.c_e7xxx_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e7xxx_edac.c_e7xxx_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.csrow_info** }
%struct.csrow_info = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@E7XXX_DRA = common dso_local global i32 0, align 4
@E7XXX_DRB = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"(%d) cumul_size 0x%x\0A\00", align 1
@EDAC_S4ECD4ED = common dso_local global i32 0, align 4
@EDAC_FLAG_S4ECD4ED = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@EDAC_FLAG_SECDED = common dso_local global i32 0, align 4
@EDAC_NONE = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.pci_dev*, i32, i32)* @e7xxx_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e7xxx_init_csrows(%struct.mem_ctl_info* %0, %struct.pci_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.csrow_info*, align 8
  %21 = alloca %struct.dimm_info*, align 8
  %22 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = load i32, i32* @E7XXX_DRA, align 4
  %25 = call i32 @pci_read_config_dword(%struct.pci_dev* %23, i32 %24, i32* %13)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dual_channel_active(i32 %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @drb_granularity(i32 %29, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 20
  %34 = and i32 %33, 3
  store i32 %34, i32* %18, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %159, %4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %38 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %162

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 4
  %45 = add nsw i32 %44, 3
  %46 = ashr i32 %42, %45
  %47 = and i32 %46, 1
  store i32 %47, i32* %19, align 4
  %48 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %49 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %48, i32 0, i32 2
  %50 = load %struct.csrow_info**, %struct.csrow_info*** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %50, i64 %52
  %54 = load %struct.csrow_info*, %struct.csrow_info** %53, align 8
  store %struct.csrow_info* %54, %struct.csrow_info** %20, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = load i64, i64* @E7XXX_DRB, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @pci_read_config_byte(%struct.pci_dev* %55, i64 %59, i32* %12)
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 25, %62
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = sub nsw i32 %63, %64
  %66 = shl i32 %61, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %9, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %41
  br label %159

75:                                               ; preds = %41
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.csrow_info*, %struct.csrow_info** %20, align 8
  %78 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.csrow_info*, %struct.csrow_info** %20, align 8
  %82 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %9, align 8
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %9, align 8
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %75
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i32, i32* @EDAC_S4ECD4ED, align 4
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* @EDAC_FLAG_S4ECD4ED, align 4
  %101 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %102 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %112

105:                                              ; preds = %95, %92
  %106 = load i32, i32* @EDAC_SECDED, align 4
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* @EDAC_FLAG_SECDED, align 4
  %108 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %109 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %105, %98
  br label %115

113:                                              ; preds = %75
  %114 = load i32, i32* @EDAC_NONE, align 4
  store i32 %114, i32* %22, align 4
  br label %115

115:                                              ; preds = %113, %112
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %155, %115
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %158

121:                                              ; preds = %116
  %122 = load %struct.csrow_info*, %struct.csrow_info** %20, align 8
  %123 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %124, i64 %126
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load %struct.dimm_info*, %struct.dimm_info** %129, align 8
  store %struct.dimm_info* %130, %struct.dimm_info** %21, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  %134 = sdiv i32 %131, %133
  %135 = load %struct.dimm_info*, %struct.dimm_info** %21, align 8
  %136 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.dimm_info*, %struct.dimm_info** %21, align 8
  %138 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %137, i32 0, i32 1
  store i32 4096, i32* %138, align 4
  %139 = load i32, i32* @MEM_RDDR, align 4
  %140 = load %struct.dimm_info*, %struct.dimm_info** %21, align 8
  %141 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %121
  %145 = load i32, i32* @DEV_X4, align 4
  br label %148

146:                                              ; preds = %121
  %147 = load i32, i32* @DEV_X8, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = load %struct.dimm_info*, %struct.dimm_info** %21, align 8
  %151 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %22, align 4
  %153 = load %struct.dimm_info*, %struct.dimm_info** %21, align 8
  %154 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %148
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %116

158:                                              ; preds = %116
  br label %159

159:                                              ; preds = %158, %74
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %35

162:                                              ; preds = %35
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dual_channel_active(i32, i32) #1

declare dso_local i32 @drb_granularity(i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
