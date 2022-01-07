; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_match_dcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_match_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mxm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.context = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@mxm_match_tmds_partner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_mxm*, i32*, i8*)* @mxm_match_dcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_match_dcb(%struct.nvkm_mxm* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_mxm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_mxm* %0, %struct.nvkm_mxm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %16, align 8
  store %struct.nvkm_bios* %17, %struct.nvkm_bios** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.context*
  store %struct.context* %19, %struct.context** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.context*, %struct.context** %9, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 1
  %26 = call i32 @mxms_output_device(%struct.nvkm_mxm* %22, i32* %23, %struct.TYPE_6__* %25)
  %27 = load %struct.context*, %struct.context** %9, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  %33 = load %struct.context*, %struct.context** %9, align 8
  %34 = getelementptr inbounds %struct.context, %struct.context* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %111

39:                                               ; preds = %3
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 240
  %42 = icmp sge i32 %41, 32
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %45 = load %struct.context*, %struct.context** %9, align 8
  %46 = getelementptr inbounds %struct.context, %struct.context* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mxm_sor_map(%struct.nvkm_bios* %44, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.context*, %struct.context** %9, align 8
  %51 = getelementptr inbounds %struct.context, %struct.context* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 251658240
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, 15
  %58 = shl i32 %57, 24
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %111

61:                                               ; preds = %43
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 48
  %64 = ashr i32 %63, 4
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.context*, %struct.context** %9, align 8
  %67 = getelementptr inbounds %struct.context, %struct.context* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 48
  %72 = ashr i32 %71, 4
  %73 = and i32 %65, %72
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %111

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %39
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, -241
  store i32 %82, i32* %80, align 4
  %83 = load %struct.context*, %struct.context** %9, align 8
  %84 = getelementptr inbounds %struct.context, %struct.context* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 6
  br i1 %87, label %88, label %105

88:                                               ; preds = %78
  %89 = load %struct.context*, %struct.context** %9, align 8
  %90 = getelementptr inbounds %struct.context, %struct.context* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 6
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %5, align 8
  %96 = load i32, i32* @mxm_match_tmds_partner, align 4
  %97 = load %struct.context*, %struct.context** %9, align 8
  %98 = call i64 @mxms_foreach(%struct.nvkm_mxm* %95, i32 1, i32 %96, %struct.context* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, 32
  store i32 %104, i32* %102, align 4
  br label %110

105:                                              ; preds = %94, %88, %78
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, 240
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %105, %100
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %76, %60, %38
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @mxms_output_device(%struct.nvkm_mxm*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @mxm_sor_map(%struct.nvkm_bios*, i32) #1

declare dso_local i64 @mxms_foreach(%struct.nvkm_mxm*, i32, i32, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
