; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_cstate_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_cstate_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { %struct.nvkm_domain*, %struct.TYPE_4__ }
%struct.nvkm_domain = type { i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_volt*, %struct.nvkm_bios* }
%struct.nvkm_volt = type { i64 }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_pstate = type { i32, i32, %struct.nvkm_cstate }
%struct.nvkm_cstate = type { i32, i32, i32*, i32 }
%struct.nvbios_cstepX = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv_clk_src_max = common dso_local global i64 0, align 8
@NVKM_CLK_DOM_FLAG_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, i32, %struct.nvkm_pstate*)* @nvkm_cstate_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_cstate_new(%struct.nvkm_clk* %0, i32 %1, %struct.nvkm_pstate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_pstate*, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.nvkm_volt*, align 8
  %10 = alloca %struct.nvkm_domain*, align 8
  %11 = alloca %struct.nvkm_cstate*, align 8
  %12 = alloca %struct.nvbios_cstepX, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_pstate* %2, %struct.nvkm_pstate** %7, align 8
  %17 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %21, align 8
  store %struct.nvkm_bios* %22, %struct.nvkm_bios** %8, align 8
  %23 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.nvkm_volt*, %struct.nvkm_volt** %27, align 8
  store %struct.nvkm_volt* %28, %struct.nvkm_volt** %9, align 8
  %29 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %29, i32 0, i32 0
  %31 = load %struct.nvkm_domain*, %struct.nvkm_domain** %30, align 8
  store %struct.nvkm_domain* %31, %struct.nvkm_domain** %10, align 8
  store %struct.nvkm_cstate* null, %struct.nvkm_cstate** %11, align 8
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @nvbios_cstepXp(%struct.nvkm_bios* %32, i32 %33, i32* %13, i32* %14, %struct.nvbios_cstepX* %12)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %122

40:                                               ; preds = %3
  %41 = load %struct.nvkm_volt*, %struct.nvkm_volt** %9, align 8
  %42 = icmp ne %struct.nvkm_volt* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.nvkm_volt*, %struct.nvkm_volt** %9, align 8
  %45 = getelementptr inbounds %struct.nvbios_cstepX, %struct.nvbios_cstepX* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nvkm_volt_map_min(%struct.nvkm_volt* %44, i32 %46)
  %48 = load %struct.nvkm_volt*, %struct.nvkm_volt** %9, align 8
  %49 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %122

55:                                               ; preds = %43, %40
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.nvkm_cstate* @kzalloc(i32 24, i32 %56)
  store %struct.nvkm_cstate* %57, %struct.nvkm_cstate** %11, align 8
  %58 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %11, align 8
  %59 = icmp ne %struct.nvkm_cstate* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %122

63:                                               ; preds = %55
  %64 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %11, align 8
  %65 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %7, align 8
  %66 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %65, i32 0, i32 2
  %67 = bitcast %struct.nvkm_cstate* %64 to i8*
  %68 = bitcast %struct.nvkm_cstate* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 24, i1 false)
  %69 = getelementptr inbounds %struct.nvbios_cstepX, %struct.nvbios_cstepX* %12, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %11, align 8
  %72 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %11, align 8
  %75 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %113, %63
  %77 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %78 = icmp ne %struct.nvkm_domain* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %81 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @nv_clk_src_max, align 8
  %84 = icmp ne i64 %82, %83
  br label %85

85:                                               ; preds = %79, %76
  %86 = phi i1 [ false, %76 ], [ %84, %79 ]
  br i1 %86, label %87, label %116

87:                                               ; preds = %85
  %88 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %89 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @NVKM_CLK_DOM_FLAG_CORE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %87
  %95 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %96 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %7, align 8
  %97 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %100 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.nvbios_cstepX, %struct.nvbios_cstepX* %12, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @nvkm_clk_adjust(%struct.nvkm_clk* %95, i32 1, i32 %98, i32 %101, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %11, align 8
  %107 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %110 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %105, i32* %112, align 4
  br label %113

113:                                              ; preds = %94, %87
  %114 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  %115 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %114, i32 1
  store %struct.nvkm_domain* %115, %struct.nvkm_domain** %10, align 8
  br label %76

116:                                              ; preds = %85
  %117 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %11, align 8
  %118 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %117, i32 0, i32 1
  %119 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %7, align 8
  %120 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %119, i32 0, i32 0
  %121 = call i32 @list_add(i32* %118, i32* %120)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %116, %60, %52, %37
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @nvbios_cstepXp(%struct.nvkm_bios*, i32, i32*, i32*, %struct.nvbios_cstepX*) #1

declare dso_local i64 @nvkm_volt_map_min(%struct.nvkm_volt*, i32) #1

declare dso_local %struct.nvkm_cstate* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvkm_clk_adjust(%struct.nvkm_clk*, i32, i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
