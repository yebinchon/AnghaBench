; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_clk_pllg_params = type { i64, i64, i32 }
%struct.nvkm_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_device_tegra* (%struct.nvkm_device*)* }
%struct.nvkm_device_tegra = type { i64 }
%struct.nvkm_clk = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.gm20b_clk = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.nvkm_clk }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gm20b_pllg_params = common dso_local global %struct.gk20a_clk_pllg_params zeroinitializer, align 8
@gm20b_clk = common dso_local global i32 0, align 4
@KHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot use NAPLL, using legacy clock...\0A\00", align 1
@pl_to_div = common dso_local global i32 0, align 4
@div_to_pl = common dso_local global i32 0, align 4
@gm20b_dvfs_params = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"no fused calibration parameters\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gm20b_clk_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_clk** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_clk**, align 8
  %8 = alloca %struct.nvkm_device_tegra*, align 8
  %9 = alloca %struct.gm20b_clk*, align 8
  %10 = alloca %struct.nvkm_subdev*, align 8
  %11 = alloca %struct.gk20a_clk_pllg_params*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_clk** %2, %struct.nvkm_clk*** %7, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device_tegra* (%struct.nvkm_device*)*, %struct.nvkm_device_tegra* (%struct.nvkm_device*)** %16, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %19 = call %struct.nvkm_device_tegra* %17(%struct.nvkm_device* %18)
  store %struct.nvkm_device_tegra* %19, %struct.nvkm_device_tegra** %8, align 8
  %20 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.nvkm_clk**, %struct.nvkm_clk*** %7, align 8
  %28 = call i32 @gm20b_clk_new_speedo0(%struct.nvkm_device* %25, i32 %26, %struct.nvkm_clk** %27)
  store i32 %28, i32* %4, align 4
  br label %116

29:                                               ; preds = %3
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.gm20b_clk* @kzalloc(i32 48, i32 %30)
  store %struct.gm20b_clk* %31, %struct.gm20b_clk** %9, align 8
  %32 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %33 = icmp ne %struct.gm20b_clk* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %116

37:                                               ; preds = %29
  %38 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %39 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load %struct.nvkm_clk**, %struct.nvkm_clk*** %7, align 8
  store %struct.nvkm_clk* %40, %struct.nvkm_clk** %41, align 8
  %42 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %43 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %44, i32 0, i32 0
  store %struct.nvkm_subdev* %45, %struct.nvkm_subdev** %10, align 8
  %46 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %47 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %46, i64 1
  %48 = bitcast %struct.gm20b_clk* %47 to i8*
  %49 = bitcast i8* %48 to %struct.gk20a_clk_pllg_params*
  store %struct.gk20a_clk_pllg_params* %49, %struct.gk20a_clk_pllg_params** %11, align 8
  %50 = load %struct.gk20a_clk_pllg_params*, %struct.gk20a_clk_pllg_params** %11, align 8
  %51 = bitcast %struct.gk20a_clk_pllg_params* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 bitcast (%struct.gk20a_clk_pllg_params* @gm20b_pllg_params to i8*), i64 24, i1 false)
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.gk20a_clk_pllg_params*, %struct.gk20a_clk_pllg_params** %11, align 8
  %55 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %56 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %55, i32 0, i32 1
  %57 = call i32 @gk20a_clk_ctor(%struct.nvkm_device* %52, i32 %53, i32* @gm20b_clk, %struct.gk20a_clk_pllg_params* %54, %struct.TYPE_4__* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %37
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %116

62:                                               ; preds = %37
  %63 = load %struct.gk20a_clk_pllg_params*, %struct.gk20a_clk_pllg_params** %11, align 8
  %64 = getelementptr inbounds %struct.gk20a_clk_pllg_params, %struct.gk20a_clk_pllg_params* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %67 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @KHZ, align 4
  %71 = sdiv i32 %69, %70
  %72 = call i64 @DIV_ROUND_UP(i32 %65, i32 %71)
  %73 = load %struct.gk20a_clk_pllg_params*, %struct.gk20a_clk_pllg_params** %11, align 8
  %74 = getelementptr inbounds %struct.gk20a_clk_pllg_params, %struct.gk20a_clk_pllg_params* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.gk20a_clk_pllg_params*, %struct.gk20a_clk_pllg_params** %11, align 8
  %76 = getelementptr inbounds %struct.gk20a_clk_pllg_params, %struct.gk20a_clk_pllg_params* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  %77 = load %struct.gk20a_clk_pllg_params*, %struct.gk20a_clk_pllg_params** %11, align 8
  %78 = getelementptr inbounds %struct.gk20a_clk_pllg_params, %struct.gk20a_clk_pllg_params* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %62
  %82 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %83 = call i32 @nvkm_warn(%struct.nvkm_subdev* %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %85 = call i32 @kfree(%struct.gm20b_clk* %84)
  %86 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.nvkm_clk**, %struct.nvkm_clk*** %7, align 8
  %89 = call i32 @gm20b_clk_new_speedo0(%struct.nvkm_device* %86, i32 %87, %struct.nvkm_clk** %88)
  store i32 %89, i32* %4, align 4
  br label %116

90:                                               ; preds = %62
  %91 = load i32, i32* @pl_to_div, align 4
  %92 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %93 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @div_to_pl, align 4
  %96 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %97 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %100 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %99, i32 0, i32 0
  store i32* @gm20b_dvfs_params, i32** %100, align 8
  %101 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %102 = call i32 @gm20b_clk_init_fused_params(%struct.gm20b_clk* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %90
  %106 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %107 = call i32 @nvkm_warn(%struct.nvkm_subdev* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %90
  %109 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %110 = call i32 @gm20b_clk_init_safe_fmax(%struct.gm20b_clk* %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %116

115:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %113, %81, %60, %34, %24
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @gm20b_clk_new_speedo0(%struct.nvkm_device*, i32, %struct.nvkm_clk**) #1

declare dso_local %struct.gm20b_clk* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gk20a_clk_ctor(%struct.nvkm_device*, i32, i32*, %struct.gk20a_clk_pllg_params*, %struct.TYPE_4__*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @kfree(%struct.gm20b_clk*) #1

declare dso_local i32 @gm20b_clk_init_fused_params(%struct.gm20b_clk*) #1

declare dso_local i32 @gm20b_clk_init_safe_fmax(%struct.gm20b_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
