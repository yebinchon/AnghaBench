; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_cstate_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_cstate_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32, i32, i32, %struct.TYPE_4__, %struct.nvkm_domain* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_volt* }
%struct.nvkm_volt = type { i32 }
%struct.nvkm_domain = type { i64, i32 }
%struct.nvkm_cstate = type { i32, i32* }

@nv_clk_src_max = common dso_local global i64 0, align 8
@NVKM_CLK_DOM_FLAG_VPSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, %struct.nvkm_cstate*, i32, i32)* @nvkm_cstate_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_cstate_valid(%struct.nvkm_clk* %0, %struct.nvkm_cstate* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_clk*, align 8
  %7 = alloca %struct.nvkm_cstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_domain*, align 8
  %11 = alloca %struct.nvkm_volt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %6, align 8
  store %struct.nvkm_cstate* %1, %struct.nvkm_cstate** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nvkm_clk*, %struct.nvkm_clk** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %14, i32 0, i32 4
  %16 = load %struct.nvkm_domain*, %struct.nvkm_domain** %15, align 8
  store %struct.nvkm_domain* %16, %struct.nvkm_domain** %10, align 8
  %17 = load %struct.nvkm_clk*, %struct.nvkm_clk** %6, align 8
  %18 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_volt*, %struct.nvkm_volt** %21, align 8
  store %struct.nvkm_volt* %22, %struct.nvkm_volt** %11, align 8
  br label %23

23:                                               ; preds = %80, %4
  %24 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %25 = icmp ne %struct.nvkm_domain* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %28 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @nv_clk_src_max, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i1 [ false, %23 ], [ %31, %26 ]
  br i1 %33, label %34, label %83

34:                                               ; preds = %32
  %35 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %36 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NVKM_CLK_DOM_FLAG_VPSTATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %34
  %42 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %7, align 8
  %43 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %46 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.nvkm_clk*, %struct.nvkm_clk** %6, align 8
  %51 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %79 [
    i32 128, label %53
    i32 129, label %66
  ]

53:                                               ; preds = %41
  %54 = load %struct.nvkm_clk*, %struct.nvkm_clk** %6, align 8
  %55 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.nvkm_clk*, %struct.nvkm_clk** %6, align 8
  %61 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %106

65:                                               ; preds = %58, %53
  br label %66

66:                                               ; preds = %41, %65
  %67 = load %struct.nvkm_clk*, %struct.nvkm_clk** %6, align 8
  %68 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.nvkm_clk*, %struct.nvkm_clk** %6, align 8
  %74 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %106

78:                                               ; preds = %71, %66
  br label %79

79:                                               ; preds = %78, %41
  br label %80

80:                                               ; preds = %79, %34
  %81 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %82 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %81, i32 1
  store %struct.nvkm_domain* %82, %struct.nvkm_domain** %10, align 8
  br label %23

83:                                               ; preds = %32
  %84 = load %struct.nvkm_volt*, %struct.nvkm_volt** %11, align 8
  %85 = icmp ne %struct.nvkm_volt* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %106

87:                                               ; preds = %83
  %88 = load %struct.nvkm_volt*, %struct.nvkm_volt** %11, align 8
  %89 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %7, align 8
  %90 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @nvkm_volt_map(%struct.nvkm_volt* %88, i32 %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %106

97:                                               ; preds = %87
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.nvkm_volt*, %struct.nvkm_volt** %11, align 8
  %101 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @min(i32 %99, i32 %102)
  %104 = icmp sle i32 %98, %103
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %97, %96, %86, %77, %64
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @nvkm_volt_map(%struct.nvkm_volt*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
