; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_tpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_tpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.gf100_gr*, i32, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"GPC%d/TPC%d/TEX: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"GPC%d/TPC%d/POLY: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GPC%d/TPC%d/L1C: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GPC%d/TPC%d/MPC: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"GPC%d/TPC%d/%08x: unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*, i32, i32)* @gf100_gr_trap_tpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_gr_trap_tpc(%struct.gf100_gr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gf100_gr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %15 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %7, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %8, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @TPC_UNIT(i32 %22, i32 %23, i32 1288)
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %3
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @TPC_UNIT(i32 %31, i32 %32, i32 548)
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @nvkm_error(%struct.nvkm_subdev* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @TPC_UNIT(i32 %41, i32 %42, i32 548)
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %40, i32 %43, i32 -1073741824)
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, -2
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %29, %3
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %53 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32 (%struct.gf100_gr*, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32)** %55, align 8
  %57 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 %56(%struct.gf100_gr* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, -3
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %51, %47
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @TPC_UNIT(i32 %69, i32 %70, i32 132)
  %72 = call i32 @nvkm_rd32(%struct.nvkm_device* %68, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @nvkm_error(%struct.nvkm_subdev* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @TPC_UNIT(i32 %79, i32 %80, i32 132)
  %82 = call i32 @nvkm_wr32(%struct.nvkm_device* %78, i32 %81, i32 -1073741824)
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, -5
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %67, %63
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @TPC_UNIT(i32 %91, i32 %92, i32 1164)
  %94 = call i32 @nvkm_rd32(%struct.nvkm_device* %90, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @nvkm_error(%struct.nvkm_subdev* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97, i32 %98)
  %100 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @TPC_UNIT(i32 %101, i32 %102, i32 1164)
  %104 = call i32 @nvkm_wr32(%struct.nvkm_device* %100, i32 %103, i32 -1073741824)
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, -9
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %89, %85
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 16
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  %112 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @TPC_UNIT(i32 %113, i32 %114, i32 1072)
  %116 = call i32 @nvkm_rd32(%struct.nvkm_device* %112, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @nvkm_error(%struct.nvkm_subdev* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %119, i32 %120)
  %122 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @TPC_UNIT(i32 %123, i32 %124, i32 1072)
  %126 = call i32 @nvkm_wr32(%struct.nvkm_device* %122, i32 %125, i32 -1073741824)
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, -17
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %111, %107
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @nvkm_error(%struct.nvkm_subdev* %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %129
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
