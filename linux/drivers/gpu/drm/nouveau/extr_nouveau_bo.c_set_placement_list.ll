; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_set_placement_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_set_placement_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_place = type { i32 }

@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_place*, i32*, i32, i32)* @set_placement_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_placement_list(%struct.ttm_place* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ttm_place*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ttm_place* %0, %struct.ttm_place** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %18, i64 %22
  %24 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %23, i32 0, i32 0
  store i32 %17, i32* %24, align 4
  br label %25

25:                                               ; preds = %14, %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %34, i64 %38
  %40 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %39, i32 0, i32 0
  store i32 %33, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %25
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %50, i64 %54
  %56 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 4
  br label %57

57:                                               ; preds = %46, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
