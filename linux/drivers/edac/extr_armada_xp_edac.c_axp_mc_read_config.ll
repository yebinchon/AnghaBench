; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_armada_xp_edac.c_axp_mc_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_armada_xp_edac.c_axp_mc_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.dimm_info**, %struct.axp_mc_drvdata* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.axp_mc_drvdata = type { i32, i32*, i64 }

@SDRAM_CONFIG_REG = common dso_local global i64 0, align 8
@SDRAM_CONFIG_BUS_WIDTH_MASK = common dso_local global i32 0, align 4
@SDRAM_ADDR_CTRL_REG = common dso_local global i64 0, align 8
@SDRAM_RANK_CTRL_REG = common dso_local global i64 0, align 8
@SDRAM_NUM_CS = common dso_local global i32 0, align 4
@DEV_X16 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@SDRAM_CONFIG_REGISTERED_MASK = common dso_local global i32 0, align 4
@MEM_RDDR3 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @axp_mc_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axp_mc_read_config(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.axp_mc_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dimm_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 1
  %13 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %12, align 8
  store %struct.axp_mc_drvdata* %13, %struct.axp_mc_drvdata** %3, align 8
  %14 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %15 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SDRAM_CONFIG_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SDRAM_CONFIG_BUS_WIDTH_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %26 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %25, i32 0, i32 0
  store i32 8, i32* %26, align 8
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %29 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %32 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SDRAM_ADDR_CTRL_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %38 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SDRAM_RANK_CTRL_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %146, %30
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SDRAM_NUM_CS, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %149

47:                                               ; preds = %43
  %48 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %49 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %48, i32 0, i32 0
  %50 = load %struct.dimm_info**, %struct.dimm_info*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dimm_info*, %struct.dimm_info** %50, i64 %52
  %54 = load %struct.dimm_info*, %struct.dimm_info** %53, align 8
  store %struct.dimm_info* %54, %struct.dimm_info** %10, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @SDRAM_RANK_CTRL_EXIST_MASK(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  br label %146

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @SDRAM_ADDR_CTRL_ADDR_SEL_MASK(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %71 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @SDRAM_ADDR_CTRL_STRUCT_MASK(i32 %77)
  %79 = and i32 %76, %78
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @SDRAM_ADDR_CTRL_STRUCT_OFFSET(i32 %80)
  %82 = ashr i32 %79, %81
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @SDRAM_ADDR_CTRL_SIZE_HIGH_MASK(i32 %84)
  %86 = and i32 %83, %85
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @SDRAM_ADDR_CTRL_SIZE_HIGH_OFFSET(i32 %87)
  %89 = sub nsw i32 %88, 2
  %90 = ashr i32 %86, %89
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @SDRAM_ADDR_CTRL_SIZE_LOW_MASK(i32 %92)
  %94 = and i32 %91, %93
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @SDRAM_ADDR_CTRL_SIZE_LOW_OFFSET(i32 %95)
  %97 = ashr i32 %94, %96
  %98 = or i32 %90, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  switch i32 %99, label %118 [
    i32 0, label %100
    i32 1, label %103
    i32 2, label %106
    i32 3, label %109
    i32 4, label %112
    i32 5, label %115
  ]

100:                                              ; preds = %61
  %101 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %102 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %101, i32 0, i32 0
  store i32 524288, i32* %102, align 4
  br label %118

103:                                              ; preds = %61
  %104 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %105 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %104, i32 0, i32 0
  store i32 65536, i32* %105, align 4
  br label %118

106:                                              ; preds = %61
  %107 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %108 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %107, i32 0, i32 0
  store i32 131072, i32* %108, align 4
  br label %118

109:                                              ; preds = %61
  %110 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %111 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %110, i32 0, i32 0
  store i32 262144, i32* %111, align 4
  br label %118

112:                                              ; preds = %61
  %113 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %114 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %113, i32 0, i32 0
  store i32 1048576, i32* %114, align 4
  br label %118

115:                                              ; preds = %61
  %116 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %117 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %116, i32 0, i32 0
  store i32 2097152, i32* %117, align 4
  br label %118

118:                                              ; preds = %61, %115, %112, %109, %106, %103, %100
  %119 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %120 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %119, i32 0, i32 1
  store i32 8, i32* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @DEV_X16, align 4
  br label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @DEV_X8, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %130 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @SDRAM_CONFIG_REGISTERED_MASK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* @MEM_RDDR3, align 4
  br label %139

137:                                              ; preds = %127
  %138 = load i32, i32* @MEM_DDR3, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %142 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @EDAC_SECDED, align 4
  %144 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %145 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %60
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %43

149:                                              ; preds = %43
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @SDRAM_RANK_CTRL_EXIST_MASK(i32) #1

declare dso_local i32 @SDRAM_ADDR_CTRL_ADDR_SEL_MASK(i32) #1

declare dso_local i32 @SDRAM_ADDR_CTRL_STRUCT_MASK(i32) #1

declare dso_local i32 @SDRAM_ADDR_CTRL_STRUCT_OFFSET(i32) #1

declare dso_local i32 @SDRAM_ADDR_CTRL_SIZE_HIGH_MASK(i32) #1

declare dso_local i32 @SDRAM_ADDR_CTRL_SIZE_HIGH_OFFSET(i32) #1

declare dso_local i32 @SDRAM_ADDR_CTRL_SIZE_LOW_MASK(i32) #1

declare dso_local i32 @SDRAM_ADDR_CTRL_SIZE_LOW_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
