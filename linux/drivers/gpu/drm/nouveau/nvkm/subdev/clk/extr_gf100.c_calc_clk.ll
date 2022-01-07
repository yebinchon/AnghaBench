; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_calc_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_calc_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_clk = type { %struct.gf100_clk_info* }
%struct.gf100_clk_info = type { i32, i32, i32, i32, i64, i64 }
%struct.nvkm_cstate = type { i64* }

@nv_clk_src_hubk06 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gf100_clk*, %struct.nvkm_cstate*, i32, i32)* @calc_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_clk(%struct.gf100_clk* %0, %struct.nvkm_cstate* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gf100_clk*, align 8
  %7 = alloca %struct.nvkm_cstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gf100_clk_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.gf100_clk* %0, %struct.gf100_clk** %6, align 8
  store %struct.nvkm_cstate* %1, %struct.nvkm_cstate** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %19 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %18, i32 0, i32 0
  %20 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %20, i64 %22
  store %struct.gf100_clk_info* %23, %struct.gf100_clk_info** %10, align 8
  %24 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %7, align 8
  %25 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %163

34:                                               ; preds = %4
  %35 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @calc_src(%struct.gf100_clk* %35, i32 %36, i64 %37, i64* %12, i64* %13)
  store i64 %38, i64* %16, align 8
  %39 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @calc_div(%struct.gf100_clk* %39, i32 %40, i64 %41, i64 %42, i64* %14)
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = and i32 17287, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %53, 7
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %60 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %59, i32 0, i32 0
  %61 = call i64 @calc_pll(%struct.gf100_clk* %56, i32 %57, i64 %58, i32* %60)
  store i64 %61, i64* %17, align 8
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %7, align 8
  %64 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @nv_clk_src_hubk06, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %17, align 8
  br label %69

69:                                               ; preds = %62, %55
  %70 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @calc_div(%struct.gf100_clk* %70, i32 %71, i64 %72, i64 %73, i64* %15)
  store i64 %74, i64* %17, align 8
  br label %75

75:                                               ; preds = %69, %47, %34
  %76 = load i64, i64* %11, align 8
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %16, align 8
  %80 = sub nsw i64 %78, %79
  %81 = call i64 @abs(i64 %80)
  %82 = load i64, i64* %11, align 8
  %83 = trunc i64 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %17, align 8
  %86 = sub nsw i64 %84, %85
  %87 = call i64 @abs(i64 %86)
  %88 = icmp sle i64 %81, %87
  br i1 %88, label %89, label %138

89:                                               ; preds = %75
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %92 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %91, i32 0, i32 5
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %13, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %97 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, -2147483648
  store i32 %99, i32* %97, align 4
  %100 = load i64, i64* %13, align 8
  %101 = shl i64 %100, 8
  %102 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %103 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = or i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  %108 = load i64, i64* %13, align 8
  %109 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %110 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = or i64 %112, %108
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  br label %115

115:                                              ; preds = %95, %89
  %116 = load i64, i64* %14, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %120 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, -2147483648
  store i32 %122, i32* %120, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %125 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = or i64 %127, %123
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 8
  br label %130

130:                                              ; preds = %118, %115
  %131 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %132 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %134 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %133, i32 0, i32 3
  store i32 0, i32* %134, align 4
  %135 = load i64, i64* %16, align 8
  %136 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %137 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %136, i32 0, i32 4
  store i64 %135, i64* %137, align 8
  br label %162

138:                                              ; preds = %75
  %139 = load i64, i64* %15, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %143 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, -2147483648
  store i32 %145, i32* %143, align 8
  %146 = load i64, i64* %15, align 8
  %147 = shl i64 %146, 8
  %148 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %149 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = or i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 8
  br label %154

154:                                              ; preds = %141, %138
  %155 = load i32, i32* %8, align 4
  %156 = shl i32 1, %155
  %157 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %158 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load i64, i64* %17, align 8
  %160 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %10, align 8
  %161 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %154, %130
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %162, %33
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i64 @calc_src(%struct.gf100_clk*, i32, i64, i64*, i64*) #1

declare dso_local i64 @calc_div(%struct.gf100_clk*, i32, i64, i64, i64*) #1

declare dso_local i64 @calc_pll(%struct.gf100_clk*, i32, i64, i32*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
