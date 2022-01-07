; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_btc_find_valid_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_btc_find_valid_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_clock_array = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.amdgpu_clock_array*, i64, i64)* @btc_find_valid_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btc_find_valid_clock(%struct.amdgpu_clock_array* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.amdgpu_clock_array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_clock_array* %0, %struct.amdgpu_clock_array** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %10 = icmp eq %struct.amdgpu_clock_array* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_clock_array, %struct.amdgpu_clock_array* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11, %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  br label %24

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i64 [ %21, %20 ], [ %23, %22 ]
  store i64 %25, i64* %4, align 8
  br label %97

26:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %66, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_clock_array, %struct.amdgpu_clock_array* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %27
  %34 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %35 = getelementptr inbounds %struct.amdgpu_clock_array, %struct.amdgpu_clock_array* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %33
  %44 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_clock_array, %struct.amdgpu_clock_array* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_clock_array, %struct.amdgpu_clock_array* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  br label %63

61:                                               ; preds = %43
  %62 = load i64, i64* %6, align 8
  br label %63

63:                                               ; preds = %61, %53
  %64 = phi i64 [ %60, %53 ], [ %62, %61 ]
  store i64 %64, i64* %4, align 8
  br label %97

65:                                               ; preds = %33
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %27

69:                                               ; preds = %27
  %70 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %71 = getelementptr inbounds %struct.amdgpu_clock_array, %struct.amdgpu_clock_array* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %74 = getelementptr inbounds %struct.amdgpu_clock_array, %struct.amdgpu_clock_array* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %72, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %69
  %83 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %84 = getelementptr inbounds %struct.amdgpu_clock_array, %struct.amdgpu_clock_array* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load %struct.amdgpu_clock_array*, %struct.amdgpu_clock_array** %5, align 8
  %87 = getelementptr inbounds %struct.amdgpu_clock_array, %struct.amdgpu_clock_array* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %85, i64 %90
  %92 = load i64, i64* %91, align 8
  br label %95

93:                                               ; preds = %69
  %94 = load i64, i64* %6, align 8
  br label %95

95:                                               ; preds = %93, %82
  %96 = phi i64 [ %92, %82 ], [ %94, %93 ]
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %95, %63, %24
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
