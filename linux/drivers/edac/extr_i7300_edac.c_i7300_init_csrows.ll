; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, %struct.i7300_pvt* }
%struct.i7300_pvt = type { %struct.i7300_dimm_info**, i32**, i32*, i32*, i32 }
%struct.i7300_dimm_info = type { i32 }
%struct.dimm_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Memory Technology Registers:\0A\00", align 1
@MAX_BRANCHES = common dso_local global i32 0, align 4
@MAX_CH_PER_BRANCH = common dso_local global i32 0, align 4
@AMBPRESENT_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"\09\09AMB-present CH%d = 0x%x:\0A\00", align 1
@AMBPRESENT_1 = common dso_local global i32 0, align 4
@MAX_SLOTS = common dso_local global i32 0, align 4
@mtr_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i7300_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i7300_init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i7300_pvt*, align 8
  %4 = alloca %struct.i7300_dimm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dimm_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 3
  %20 = load %struct.i7300_pvt*, %struct.i7300_pvt** %19, align 8
  store %struct.i7300_pvt* %20, %struct.i7300_pvt** %3, align 8
  %21 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %23 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IS_SINGLE_MODE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @MAX_BRANCHES, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @MAX_CH_PER_BRANCH, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %28, %27
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %93, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %96

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @to_channel(i32 0, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %40 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AMBPRESENT_0, align 4
  %47 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %48 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @pci_read_config_word(i32 %45, i32 %46, i32* %52)
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %56 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %36
  br label %93

66:                                               ; preds = %36
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @to_channel(i32 1, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %70 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AMBPRESENT_1, align 4
  %77 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %78 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @pci_read_config_word(i32 %75, i32 %76, i32* %82)
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %86 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %91)
  br label %93

93:                                               ; preds = %66, %65
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %32

96:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %182, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @MAX_SLOTS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %185

101:                                              ; preds = %97
  %102 = load i32*, i32** @mtr_regs, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %178, %101
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %181

111:                                              ; preds = %107
  %112 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %113 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %121 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i32 @pci_read_config_word(i32 %118, i32 %119, i32* %129)
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %174, %111
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %177

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @to_channel(i32 %136, i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %140 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %143 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %146 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %141, i32 %144, i32 %147, i32 %148, i32 %149, i32 %150)
  store %struct.dimm_info* %151, %struct.dimm_info** %13, align 8
  %152 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %153 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %152, i32 0, i32 0
  %154 = load %struct.i7300_dimm_info**, %struct.i7300_dimm_info*** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.i7300_dimm_info*, %struct.i7300_dimm_info** %154, i64 %156
  %158 = load %struct.i7300_dimm_info*, %struct.i7300_dimm_info** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.i7300_dimm_info, %struct.i7300_dimm_info* %158, i64 %160
  store %struct.i7300_dimm_info* %161, %struct.i7300_dimm_info** %4, align 8
  %162 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.i7300_dimm_info*, %struct.i7300_dimm_info** %4, align 8
  %167 = load %struct.dimm_info*, %struct.dimm_info** %13, align 8
  %168 = call i32 @decode_mtr(%struct.i7300_pvt* %162, i32 %163, i32 %164, i32 %165, %struct.i7300_dimm_info* %166, %struct.dimm_info* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @MTR_DIMMS_PRESENT(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %135
  br label %174

173:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %172
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %131

177:                                              ; preds = %131
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %107

181:                                              ; preds = %107
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %97

185:                                              ; preds = %97
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i64 @IS_SINGLE_MODE(i32) #1

declare dso_local i32 @to_channel(i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @decode_mtr(%struct.i7300_pvt*, i32, i32, i32, %struct.i7300_dimm_info*, %struct.dimm_info*) #1

declare dso_local i32 @MTR_DIMMS_PRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
