; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r6xx_remap_render_backend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r6xx_remap_render_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_RV740 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r6xx_remap_render_backend(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 1
  %23 = shl i32 1, %22
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 255, %25
  %27 = and i32 %26, 255
  %28 = or i32 %24, %27
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = and i32 %29, 255
  %31 = icmp ne i32 %30, 255
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %5
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 1, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @r600_count_pipe_bits(i32 %38)
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %15, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CHIP_RV740, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %34
  store i32 2, i32* %12, align 4
  br label %61

60:                                               ; preds = %34
  store i32 4, i32* %12, align 4
  br label %61

61:                                               ; preds = %60, %59
  store i32 0, i32* %19, align 4
  br label %62

62:                                               ; preds = %108, %61
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %62
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %105, label %71

71:                                               ; preds = %66
  store i32 0, i32* %20, align 4
  br label %72

72:                                               ; preds = %86, %71
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %17, align 4
  %79 = shl i32 %78, %77
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %19, align 4
  %82 = sub i32 %80, %81
  %83 = sub i32 %82, 1
  %84 = load i32, i32* %17, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %20, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %20, align 4
  br label %72

89:                                               ; preds = %72
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %17, align 4
  %95 = shl i32 %94, %93
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %19, align 4
  %98 = sub i32 %96, %97
  %99 = sub i32 %98, 1
  %100 = load i32, i32* %17, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %92, %89
  br label %105

105:                                              ; preds = %104, %66
  %106 = load i32, i32* %18, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %18, align 4
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %19, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %19, align 4
  br label %62

111:                                              ; preds = %62
  %112 = load i32, i32* %17, align 4
  ret i32 %112
}

declare dso_local i32 @r600_count_pipe_bits(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
