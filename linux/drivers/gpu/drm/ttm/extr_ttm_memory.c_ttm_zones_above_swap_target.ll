; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_zones_above_swap_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_zones_above_swap_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, %struct.ttm_mem_zone** }
%struct.ttm_mem_zone = type { i64, i64, i64, i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_global*, i32, i64)* @ttm_zones_above_swap_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_zones_above_swap_target(%struct.ttm_mem_global* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_global*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_mem_zone*, align 8
  %10 = alloca i64, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %60, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %14 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %11
  %18 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %18, i32 0, i32 1
  %20 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %20, i64 %22
  %24 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %23, align 8
  store %struct.ttm_mem_zone* %24, %struct.ttm_mem_zone** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %9, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  br label %44

31:                                               ; preds = %17
  %32 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %33 = call i64 @capable(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %9, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %9, align 8
  %41 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %51

49:                                               ; preds = %44
  %50 = load i64, i64* %10, align 8
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i64 [ 0, %48 ], [ %50, %49 ]
  store i64 %52, i64* %10, align 8
  %53 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %9, align 8
  %54 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %64

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %11

63:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
