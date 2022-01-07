; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_check_mr_contiguous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_check_mr_contiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_pble_alloc = type { i64, i32, %struct.TYPE_2__, %struct.i40iw_pble_level2 }
%struct.TYPE_2__ = type { i64 }
%struct.i40iw_pble_level2 = type { i32, %struct.i40iw_pble_info* }
%struct.i40iw_pble_info = type { i32, i64 }

@I40IW_LEVEL_1 = common dso_local global i64 0, align 8
@PBLE_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_pble_alloc*, i32)* @i40iw_check_mr_contiguous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_check_mr_contiguous(%struct.i40iw_pble_alloc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_pble_alloc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_pble_level2*, align 8
  %7 = alloca %struct.i40iw_pble_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40iw_pble_alloc* %0, %struct.i40iw_pble_alloc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %4, align 8
  %13 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %12, i32 0, i32 3
  store %struct.i40iw_pble_level2* %13, %struct.i40iw_pble_level2** %6, align 8
  %14 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %6, align 8
  %15 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %14, i32 0, i32 1
  %16 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %15, align 8
  store %struct.i40iw_pble_info* %16, %struct.i40iw_pble_info** %7, align 8
  store i64* null, i64** %8, align 8
  store i64* null, i64** %9, align 8
  %17 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @I40IW_LEVEL_1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %4, align 8
  %24 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i64*
  store i64* %27, i64** %8, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %4, align 8
  %30 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @i40iw_check_mem_contiguous(i64* %28, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %81

35:                                               ; preds = %2
  %36 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %7, align 8
  %37 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i64*
  store i64* %39, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %75, %35
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %6, align 8
  %43 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %40
  %47 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %7, align 8
  %48 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i64*
  store i64* %50, i64** %8, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @PBLE_PER_PAGE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %52, %58
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %81

64:                                               ; preds = %46
  %65 = load i64*, i64** %8, align 8
  %66 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %7, align 8
  %67 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @i40iw_check_mem_contiguous(i64* %65, i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %81

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %7, align 8
  %79 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %78, i32 1
  store %struct.i40iw_pble_info* %79, %struct.i40iw_pble_info** %7, align 8
  br label %40

80:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %73, %63, %22
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @i40iw_check_mem_contiguous(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
