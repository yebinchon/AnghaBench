; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_match_to_this_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_match_to_this_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"(range %d) SystemAddr= 0x%llx Limit=0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Huh? Address is in the MMIO hole: 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"   Normalized DCT addr: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32, i32*)* @f1x_match_to_this_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_match_to_this_node(%struct.amd64_pvt* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dram_dst_node(%struct.amd64_pvt* %20, i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dram_intlv_en(%struct.amd64_pvt* %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dram_intlv_sel(%struct.amd64_pvt* %26, i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @get_dram_limit(%struct.amd64_pvt* %31, i32 %32)
  %34 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %33)
  %35 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %36 = call i64 @dhar_valid(%struct.amd64_pvt* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %4
  %39 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %40 = call i32 @dhar_base(%struct.amd64_pvt* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @BIT_64(i32 32)
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @amd64_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %166

52:                                               ; preds = %43, %38, %4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, 12
  %59 = load i32, i32* %16, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %166

65:                                               ; preds = %55, %52
  %66 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @f1x_swap_interleaved_region(%struct.amd64_pvt* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %70 = call i32 @dct_sel_baseaddr(%struct.amd64_pvt* %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %72 = call i64 @dct_high_range_enabled(%struct.amd64_pvt* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %65
  %75 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %76 = call i32 @dct_ganging_enabled(%struct.amd64_pvt* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 27
  %81 = load i32, i32* %12, align 4
  %82 = ashr i32 %81, 11
  %83 = icmp sge i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %14, align 4
  br label %85

85:                                               ; preds = %84, %78, %74, %65
  %86 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @f1x_determine_channel(%struct.amd64_pvt* %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @f1x_get_norm_dct_addr(%struct.amd64_pvt* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %85
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @hweight8(i32 %101)
  %103 = add nsw i32 12, %102
  %104 = ashr i32 %100, %103
  %105 = shl i32 %104, 12
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, 4095
  %108 = or i32 %105, %107
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %99, %85
  %110 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %111 = call i64 @dct_interleave_enabled(%struct.amd64_pvt* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %152

113:                                              ; preds = %109
  %114 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %115 = call i64 @dct_high_range_enabled(%struct.amd64_pvt* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %152, label %117

117:                                              ; preds = %113
  %118 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %119 = call i32 @dct_ganging_enabled(%struct.amd64_pvt* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %152, label %121

121:                                              ; preds = %117
  %122 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %123 = call i32 @dct_sel_interleave_addr(%struct.amd64_pvt* %122)
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %144

125:                                              ; preds = %121
  %126 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %127 = call i32 @dct_sel_interleave_addr(%struct.amd64_pvt* %126)
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = ashr i32 %130, 10
  %132 = shl i32 %131, 9
  %133 = load i32, i32* %11, align 4
  %134 = and i32 %133, 511
  %135 = or i32 %132, %134
  store i32 %135, i32* %11, align 4
  br label %143

136:                                              ; preds = %125
  %137 = load i32, i32* %11, align 4
  %138 = ashr i32 %137, 7
  %139 = shl i32 %138, 6
  %140 = load i32, i32* %11, align 4
  %141 = and i32 %140, 63
  %142 = or i32 %139, %141
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %136, %129
  br label %151

144:                                              ; preds = %121
  %145 = load i32, i32* %11, align 4
  %146 = ashr i32 %145, 13
  %147 = shl i32 %146, 12
  %148 = load i32, i32* %11, align 4
  %149 = and i32 %148, 4095
  %150 = or i32 %147, %149
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %144, %143
  br label %152

152:                                              ; preds = %151, %117, %113, %109
  %153 = load i32, i32* %11, align 4
  %154 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @f1x_lookup_addr_in_dct(i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load i32, i32* %13, align 4
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %152
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %62, %47
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @dram_dst_node(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_intlv_en(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_intlv_sel(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @get_dram_limit(%struct.amd64_pvt*, i32) #1

declare dso_local i64 @dhar_valid(%struct.amd64_pvt*) #1

declare dso_local i32 @dhar_base(%struct.amd64_pvt*) #1

declare dso_local i32 @BIT_64(i32) #1

declare dso_local i32 @amd64_warn(i8*, i32) #1

declare dso_local i32 @f1x_swap_interleaved_region(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dct_sel_baseaddr(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_high_range_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @f1x_determine_channel(%struct.amd64_pvt*, i32, i32, i32) #1

declare dso_local i32 @f1x_get_norm_dct_addr(%struct.amd64_pvt*, i32, i32, i32, i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i64 @dct_interleave_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @dct_sel_interleave_addr(%struct.amd64_pvt*) #1

declare dso_local i32 @f1x_lookup_addr_in_dct(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
