; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mt_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mt_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_place = type { i32 }

@TTM_PL_MASK_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, i32, %struct.ttm_place*, i32*)* @ttm_bo_mt_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_mt_compatible(%struct.ttm_mem_type_manager* %0, i32 %1, %struct.ttm_place* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_place*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ttm_place* %2, %struct.ttm_place** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @ttm_bo_type_flags(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %15 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  %18 = load i32, i32* @TTM_PL_MASK_MEM, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

22:                                               ; preds = %4
  %23 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %24 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %44

32:                                               ; preds = %22
  %33 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %34 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %32, %31, %21
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @ttm_bo_type_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
