; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_super_2_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_super_2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nvkm_devinit* }
%struct.nvkm_devinit = type { i32 }
%struct.nvkm_head = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"supervisor 2.1 - %d khz\00", align 1
@PLL_VPLL0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_disp_super_2_1(%struct.nv50_disp* %0, %struct.nvkm_head* %1) #0 {
  %3 = alloca %struct.nv50_disp*, align 8
  %4 = alloca %struct.nvkm_head*, align 8
  %5 = alloca %struct.nvkm_devinit*, align 8
  %6 = alloca i32, align 4
  store %struct.nv50_disp* %0, %struct.nv50_disp** %3, align 8
  store %struct.nvkm_head* %1, %struct.nvkm_head** %4, align 8
  %7 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %8 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %13, align 8
  store %struct.nvkm_devinit* %14, %struct.nvkm_devinit** %5, align 8
  %15 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %16 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 1000
  store i32 %19, i32* %6, align 4
  %20 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @HEAD_DBG(%struct.nvkm_head* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %5, align 8
  %27 = load i64, i64* @PLL_VPLL0, align 8
  %28 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %29 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @nvkm_devinit_pll_set(%struct.nvkm_devinit* %26, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @HEAD_DBG(%struct.nvkm_head*, i8*, i32) #1

declare dso_local i32 @nvkm_devinit_pll_set(%struct.nvkm_devinit*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
