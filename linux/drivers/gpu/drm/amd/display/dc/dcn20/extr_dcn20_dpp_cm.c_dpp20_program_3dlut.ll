; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_program_3dlut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_program_3dlut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.tetrahedral_params = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.dc_rgb*, %struct.dc_rgb*, %struct.dc_rgb*, %struct.dc_rgb* }
%struct.dc_rgb = type { i32 }
%struct.TYPE_3__ = type { %struct.dc_rgb*, %struct.dc_rgb*, %struct.dc_rgb*, %struct.dc_rgb* }

@LUT_BYPASS = common dso_local global i32 0, align 4
@LUT_RAM_B = common dso_local global i32 0, align 4
@LUT_RAM_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp20_program_3dlut(%struct.dpp* %0, %struct.tetrahedral_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp*, align 8
  %5 = alloca %struct.tetrahedral_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_rgb*, align 8
  %10 = alloca %struct.dc_rgb*, align 8
  %11 = alloca %struct.dc_rgb*, align 8
  %12 = alloca %struct.dc_rgb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dpp* %0, %struct.dpp** %4, align 8
  store %struct.tetrahedral_params* %1, %struct.tetrahedral_params** %5, align 8
  %15 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %16 = icmp eq %struct.tetrahedral_params* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.dpp*, %struct.dpp** %4, align 8
  %19 = load i32, i32* @LUT_BYPASS, align 4
  %20 = call i32 @dpp20_set_3dlut_mode(%struct.dpp* %18, i32 %19, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %151

21:                                               ; preds = %2
  %22 = load %struct.dpp*, %struct.dpp** %4, align 8
  %23 = call i32 @get3dlut_config(%struct.dpp* %22, i32* %7, i32* %8)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @LUT_BYPASS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LUT_RAM_B, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %21
  %32 = load i32, i32* @LUT_RAM_A, align 4
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @LUT_RAM_B, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %37 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %43 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %35
  %48 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %49 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load %struct.dc_rgb*, %struct.dc_rgb** %50, align 8
  store %struct.dc_rgb* %51, %struct.dc_rgb** %9, align 8
  %52 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %53 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load %struct.dc_rgb*, %struct.dc_rgb** %54, align 8
  store %struct.dc_rgb* %55, %struct.dc_rgb** %10, align 8
  %56 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %57 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load %struct.dc_rgb*, %struct.dc_rgb** %58, align 8
  store %struct.dc_rgb* %59, %struct.dc_rgb** %11, align 8
  %60 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %61 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.dc_rgb*, %struct.dc_rgb** %62, align 8
  store %struct.dc_rgb* %63, %struct.dc_rgb** %12, align 8
  store i32 2, i32* %13, align 4
  store i32 2, i32* %14, align 4
  br label %81

64:                                               ; preds = %35
  %65 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %66 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load %struct.dc_rgb*, %struct.dc_rgb** %67, align 8
  store %struct.dc_rgb* %68, %struct.dc_rgb** %9, align 8
  %69 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %70 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load %struct.dc_rgb*, %struct.dc_rgb** %71, align 8
  store %struct.dc_rgb* %72, %struct.dc_rgb** %10, align 8
  %73 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %74 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.dc_rgb*, %struct.dc_rgb** %75, align 8
  store %struct.dc_rgb* %76, %struct.dc_rgb** %11, align 8
  %77 = load %struct.tetrahedral_params*, %struct.tetrahedral_params** %5, align 8
  %78 = getelementptr inbounds %struct.tetrahedral_params, %struct.tetrahedral_params* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.dc_rgb*, %struct.dc_rgb** %79, align 8
  store %struct.dc_rgb* %80, %struct.dc_rgb** %12, align 8
  store i32 2, i32* %13, align 4
  store i32 2, i32* %14, align 4
  br label %81

81:                                               ; preds = %64, %47
  %82 = load %struct.dpp*, %struct.dpp** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @dpp20_select_3dlut_ram(%struct.dpp* %82, i32 %83, i32 %84)
  %86 = load %struct.dpp*, %struct.dpp** %4, align 8
  %87 = call i32 @dpp20_select_3dlut_ram_mask(%struct.dpp* %86, i32 1)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.dpp*, %struct.dpp** %4, align 8
  %92 = load %struct.dc_rgb*, %struct.dc_rgb** %9, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @dpp20_set3dlut_ram12(%struct.dpp* %91, %struct.dc_rgb* %92, i32 %93)
  br label %100

95:                                               ; preds = %81
  %96 = load %struct.dpp*, %struct.dpp** %4, align 8
  %97 = load %struct.dc_rgb*, %struct.dc_rgb** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @dpp20_set3dlut_ram10(%struct.dpp* %96, %struct.dc_rgb* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.dpp*, %struct.dpp** %4, align 8
  %102 = call i32 @dpp20_select_3dlut_ram_mask(%struct.dpp* %101, i32 2)
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.dpp*, %struct.dpp** %4, align 8
  %107 = load %struct.dc_rgb*, %struct.dc_rgb** %10, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @dpp20_set3dlut_ram12(%struct.dpp* %106, %struct.dc_rgb* %107, i32 %108)
  br label %115

110:                                              ; preds = %100
  %111 = load %struct.dpp*, %struct.dpp** %4, align 8
  %112 = load %struct.dc_rgb*, %struct.dc_rgb** %10, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @dpp20_set3dlut_ram10(%struct.dpp* %111, %struct.dc_rgb* %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.dpp*, %struct.dpp** %4, align 8
  %117 = call i32 @dpp20_select_3dlut_ram_mask(%struct.dpp* %116, i32 4)
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.dpp*, %struct.dpp** %4, align 8
  %122 = load %struct.dc_rgb*, %struct.dc_rgb** %11, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @dpp20_set3dlut_ram12(%struct.dpp* %121, %struct.dc_rgb* %122, i32 %123)
  br label %130

125:                                              ; preds = %115
  %126 = load %struct.dpp*, %struct.dpp** %4, align 8
  %127 = load %struct.dc_rgb*, %struct.dc_rgb** %11, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @dpp20_set3dlut_ram10(%struct.dpp* %126, %struct.dc_rgb* %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.dpp*, %struct.dpp** %4, align 8
  %132 = call i32 @dpp20_select_3dlut_ram_mask(%struct.dpp* %131, i32 8)
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.dpp*, %struct.dpp** %4, align 8
  %137 = load %struct.dc_rgb*, %struct.dc_rgb** %12, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @dpp20_set3dlut_ram12(%struct.dpp* %136, %struct.dc_rgb* %137, i32 %138)
  br label %145

140:                                              ; preds = %130
  %141 = load %struct.dpp*, %struct.dpp** %4, align 8
  %142 = load %struct.dc_rgb*, %struct.dc_rgb** %12, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @dpp20_set3dlut_ram10(%struct.dpp* %141, %struct.dc_rgb* %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.dpp*, %struct.dpp** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @dpp20_set_3dlut_mode(%struct.dpp* %146, i32 %147, i32 %148, i32 %149)
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %17
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @dpp20_set_3dlut_mode(%struct.dpp*, i32, i32, i32) #1

declare dso_local i32 @get3dlut_config(%struct.dpp*, i32*, i32*) #1

declare dso_local i32 @dpp20_select_3dlut_ram(%struct.dpp*, i32, i32) #1

declare dso_local i32 @dpp20_select_3dlut_ram_mask(%struct.dpp*, i32) #1

declare dso_local i32 @dpp20_set3dlut_ram12(%struct.dpp*, %struct.dc_rgb*, i32) #1

declare dso_local i32 @dpp20_set3dlut_ram10(%struct.dpp*, %struct.dc_rgb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
