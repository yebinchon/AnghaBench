; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_pllg_program_mnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_pllg_program_mnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm20b_clk = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk20a_pll = type { i64, i64, i64 }
%struct.gm20b_pll = type { i64, %struct.gk20a_pll }

@GPC2CLK_OUT = common dso_local global i32 0, align 4
@GPC2CLK_OUT_VCODIV_MASK = common dso_local global i32 0, align 4
@GPC2CLK_OUT_VCODIV2 = common dso_local global i32 0, align 4
@GPC2CLK_OUT_VCODIV_SHIFT = common dso_local global i32 0, align 4
@GPC2CLK_OUT_VCODIV1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gm20b_clk*, %struct.gk20a_pll*)* @gm20b_pllg_program_mnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm20b_pllg_program_mnp(%struct.gm20b_clk* %0, %struct.gk20a_pll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gm20b_clk*, align 8
  %5 = alloca %struct.gk20a_pll*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.gm20b_pll, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.gm20b_clk* %0, %struct.gm20b_clk** %4, align 8
  store %struct.gk20a_pll* %1, %struct.gk20a_pll** %5, align 8
  %15 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %16 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.nvkm_subdev* %18, %struct.nvkm_subdev** %6, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %19, i32 0, i32 0
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %20, align 8
  store %struct.nvkm_device* %21, %struct.nvkm_device** %7, align 8
  %22 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %23 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %24 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @gm20b_dvfs_calc_ndiv(%struct.gm20b_clk* %22, i64 %25, i64* %9, i64* %10)
  %27 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %28 = call i32 @gm20b_pllg_read_mnp(%struct.gm20b_clk* %27, %struct.gm20b_pll* %8)
  %29 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %30 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %41 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %44 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br label %47

47:                                               ; preds = %39, %34, %2
  %48 = phi i1 [ false, %34 ], [ false, %2 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %51 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %50, i32 0, i32 0
  %52 = call i32 @gk20a_pllg_is_enabled(%struct.TYPE_5__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %47
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %57 = load i32, i32* @GPC2CLK_OUT, align 4
  %58 = load i32, i32* @GPC2CLK_OUT_VCODIV_MASK, align 4
  %59 = load i32, i32* @GPC2CLK_OUT_VCODIV2, align 4
  %60 = load i32, i32* @GPC2CLK_OUT_VCODIV_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = call i32 @nvkm_mask(%struct.nvkm_device* %56, i32 %57, i32 %58, i32 %61)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %64 = load i32, i32* @GPC2CLK_OUT, align 4
  %65 = load i32, i32* @GPC2CLK_OUT_VCODIV_MASK, align 4
  %66 = load i32, i32* @GPC2CLK_OUT_VCODIV2, align 4
  %67 = load i32, i32* @GPC2CLK_OUT_VCODIV_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = call i32 @nvkm_mask(%struct.nvkm_device* %63, i32 %64, i32 %65, i32 %68)
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %71 = load i32, i32* @GPC2CLK_OUT, align 4
  %72 = call i32 @nvkm_rd32(%struct.nvkm_device* %70, i32 %71)
  %73 = call i32 @udelay(i32 2)
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %55
  %77 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %78 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %13, align 8
  %80 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %81 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %14, align 8
  %85 = and i64 %83, %84
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %76
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i64 @ffs(i64 %89)
  %91 = sub nsw i64 %90, 1
  %92 = call i64 @BIT(i64 %91)
  %93 = or i64 %88, %92
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i64 @ffs(i64 %95)
  %97 = sub nsw i64 %96, 1
  %98 = call i64 @BIT(i64 %97)
  %99 = or i64 %94, %98
  %100 = call i64 @min(i64 %93, i64 %99)
  %101 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %102 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %104 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %106 = call i32 @gk20a_pllg_write_mnp(%struct.TYPE_5__* %104, %struct.gk20a_pll* %105)
  br label %107

107:                                              ; preds = %87, %76
  %108 = load i64, i64* %14, align 8
  %109 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %110 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %112 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %114 = call i32 @gk20a_pllg_write_mnp(%struct.TYPE_5__* %112, %struct.gk20a_pll* %113)
  br label %136

115:                                              ; preds = %55
  %116 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %117 = call i32 @gm20b_pllg_disable(%struct.gm20b_clk* %116)
  %118 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %119 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %120 = bitcast %struct.gk20a_pll* %118 to i8*
  %121 = bitcast %struct.gk20a_pll* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 24, i1 false)
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %124 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 0
  store i64 %125, i64* %126, align 8
  %127 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %128 = call i32 @gm20b_pllg_write_mnp(%struct.gm20b_clk* %127, %struct.gm20b_pll* %8)
  %129 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %130 = call i32 @gm20b_pllg_enable(%struct.gm20b_clk* %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %115
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %3, align 4
  br label %155

135:                                              ; preds = %115
  br label %136

136:                                              ; preds = %135, %107
  %137 = call i32 @udelay(i32 2)
  %138 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %139 = load i32, i32* @GPC2CLK_OUT, align 4
  %140 = load i32, i32* @GPC2CLK_OUT_VCODIV_MASK, align 4
  %141 = load i32, i32* @GPC2CLK_OUT_VCODIV1, align 4
  %142 = load i32, i32* @GPC2CLK_OUT_VCODIV_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = call i32 @nvkm_mask(%struct.nvkm_device* %138, i32 %139, i32 %140, i32 %143)
  %145 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %146 = load i32, i32* @GPC2CLK_OUT, align 4
  %147 = load i32, i32* @GPC2CLK_OUT_VCODIV_MASK, align 4
  %148 = load i32, i32* @GPC2CLK_OUT_VCODIV1, align 4
  %149 = load i32, i32* @GPC2CLK_OUT_VCODIV_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = call i32 @nvkm_mask(%struct.nvkm_device* %145, i32 %146, i32 %147, i32 %150)
  %152 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %153 = load i32, i32* @GPC2CLK_OUT, align 4
  %154 = call i32 @nvkm_rd32(%struct.nvkm_device* %152, i32 %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %136, %133
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @gm20b_dvfs_calc_ndiv(%struct.gm20b_clk*, i64, i64*, i64*) #1

declare dso_local i32 @gm20b_pllg_read_mnp(%struct.gm20b_clk*, %struct.gm20b_pll*) #1

declare dso_local i32 @gk20a_pllg_is_enabled(%struct.TYPE_5__*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i64 @ffs(i64) #1

declare dso_local i32 @gk20a_pllg_write_mnp(%struct.TYPE_5__*, %struct.gk20a_pll*) #1

declare dso_local i32 @gm20b_pllg_disable(%struct.gm20b_clk*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gm20b_pllg_write_mnp(%struct.gm20b_clk*, %struct.gm20b_pll*) #1

declare dso_local i32 @gm20b_pllg_enable(%struct.gm20b_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
