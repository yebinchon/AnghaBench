; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_calc_upll_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_calc_upll_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_uvd_calc_upll_dividers(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.radeon_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %35 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %29, align 4
  store i32 -1, i32* %30, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @max(i32 %40, i32 %41)
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @max(i32 %42, i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %28, align 4
  br label %46

46:                                               ; preds = %112, %13
  %47 = load i32, i32* %28, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp ule i32 %47, %48
  br i1 %49, label %50, label %115

50:                                               ; preds = %46
  %51 = load i32, i32* %28, align 4
  %52 = load i32, i32* %20, align 4
  %53 = mul i32 %51, %52
  store i32 %53, i32* %31, align 4
  %54 = load i32, i32* %31, align 4
  %55 = load i32, i32* %29, align 4
  %56 = call i32 @do_div(i32 %54, i32 %55)
  %57 = load i32, i32* %31, align 4
  %58 = load i32, i32* %21, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %115

61:                                               ; preds = %50
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %31, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %31, align 4
  %65 = load i32, i32* %28, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* %24, align 4
  %69 = call i32 @radeon_uvd_calc_upll_post_div(i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %32, align 4
  %70 = load i32, i32* %32, align 4
  %71 = load i32, i32* %23, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %115

74:                                               ; preds = %61
  %75 = load i32, i32* %28, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %24, align 4
  %79 = call i32 @radeon_uvd_calc_upll_post_div(i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %33, align 4
  %80 = load i32, i32* %33, align 4
  %81 = load i32, i32* %23, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %115

84:                                               ; preds = %74
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %28, align 4
  %87 = load i32, i32* %32, align 4
  %88 = udiv i32 %86, %87
  %89 = sub i32 %85, %88
  %90 = load i32, i32* %17, align 4
  %91 = add i32 %89, %90
  %92 = load i32, i32* %28, align 4
  %93 = load i32, i32* %33, align 4
  %94 = udiv i32 %92, %93
  %95 = sub i32 %91, %94
  store i32 %95, i32* %34, align 4
  %96 = load i32, i32* %34, align 4
  %97 = load i32, i32* %30, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %84
  %100 = load i32, i32* %31, align 4
  %101 = load i32*, i32** %25, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %32, align 4
  %103 = load i32*, i32** %26, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %33, align 4
  %105 = load i32*, i32** %27, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %34, align 4
  store i32 %106, i32* %30, align 4
  %107 = load i32, i32* %30, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %115

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %84
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %28, align 4
  %114 = add i32 %113, 100
  store i32 %114, i32* %28, align 4
  br label %46

115:                                              ; preds = %109, %83, %73, %60, %46
  %116 = load i32, i32* %30, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %14, align 4
  br label %122

121:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = load i32, i32* %14, align 4
  ret i32 %123
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @radeon_uvd_calc_upll_post_div(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
