; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nvc0_bo_move_m2mf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nvc0_bo_move_m2mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.nouveau_mem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NvSubCopy = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @nvc0_bo_move_m2mf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_bo_move_m2mf(%struct.nouveau_channel* %0, %struct.ttm_buffer_object* %1, %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %16 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %17 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %16)
  store %struct.nouveau_mem* %17, %struct.nouveau_mem** %10, align 8
  %18 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %19 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %25 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %53, %4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %106

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = icmp sgt i32 %40, 2047
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ 2047, %42 ], [ %44, %43 ]
  store i32 %46, i32* %15, align 4
  %47 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %48 = call i32 @RING_SPACE(%struct.nouveau_channel* %47, i32 12)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %5, align 4
  br label %107

53:                                               ; preds = %45
  %54 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %55 = load i32, i32* @NvSubCopy, align 4
  %56 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %54, i32 %55, i32 568, i32 2)
  %57 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @upper_32_bits(i32 %58)
  %60 = call i32 @OUT_RING(%struct.nouveau_channel* %57, i32 %59)
  %61 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @lower_32_bits(i32 %62)
  %64 = call i32 @OUT_RING(%struct.nouveau_channel* %61, i32 %63)
  %65 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %66 = load i32, i32* @NvSubCopy, align 4
  %67 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %65, i32 %66, i32 780, i32 6)
  %68 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @upper_32_bits(i32 %69)
  %71 = call i32 @OUT_RING(%struct.nouveau_channel* %68, i32 %70)
  %72 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @lower_32_bits(i32 %73)
  %75 = call i32 @OUT_RING(%struct.nouveau_channel* %72, i32 %74)
  %76 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = call i32 @OUT_RING(%struct.nouveau_channel* %76, i32 %77)
  %79 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = call i32 @OUT_RING(%struct.nouveau_channel* %79, i32 %80)
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = call i32 @OUT_RING(%struct.nouveau_channel* %82, i32 %83)
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @OUT_RING(%struct.nouveau_channel* %85, i32 %86)
  %88 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %89 = load i32, i32* @NvSubCopy, align 4
  %90 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %88, i32 %89, i32 768, i32 1)
  %91 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %92 = call i32 @OUT_RING(%struct.nouveau_channel* %91, i32 1048848)
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = load i32, i32* %15, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = load i32, i32* %15, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %36

106:                                              ; preds = %36
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %51
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg*) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NVC0(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
