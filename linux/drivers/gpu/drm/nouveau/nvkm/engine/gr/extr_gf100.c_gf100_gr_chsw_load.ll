; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_chsw_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_chsw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.gf100_gr = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gr*)* @gf100_gr_chsw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_gr_chsw_load(%struct.nvkm_gr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_gr*, align 8
  %4 = alloca %struct.gf100_gr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %3, align 8
  %7 = load %struct.nvkm_gr*, %struct.nvkm_gr** %3, align 8
  %8 = call %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr* %7)
  store %struct.gf100_gr* %8, %struct.gf100_gr** %4, align 8
  %9 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %10 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %15 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nvkm_rd32(i32 %19, i32 4233244)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %40

25:                                               ; preds = %13
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %28 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nvkm_rd32(i32 %32, i32 4233224)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 524288
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %40

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %25
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %24
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_rd32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
