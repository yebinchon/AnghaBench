; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_pll_14nm_ssc_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_pll_14nm_ssc_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_pll_14nm = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"vco=%lld ref=%lld\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ssc freq=%d spread=%d period=%d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"step_size=%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_pll_14nm*)* @pll_14nm_ssc_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pll_14nm_ssc_calc(%struct.dsi_pll_14nm* %0) #0 {
  %2 = alloca %struct.dsi_pll_14nm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsi_pll_14nm* %0, %struct.dsi_pll_14nm** %2, align 8
  %8 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %9 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %13 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %17 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 500
  store i32 %20, i32* %4, align 4
  %21 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %22 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 1000
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @CEIL(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %32 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %35 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %39 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %43 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %41, i32 %45)
  %47 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %48 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %52 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sdiv i32 %54, 1000
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @div_u64(i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 20
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @div_u64(i32 %61, i32 1000)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %64 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @div_u64(i32 %69, i32 1000)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %72 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @div_u64_rem(i32 %78, i32 %80, i32* %6)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %1
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %1
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, 65535
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %94 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  ret void
}

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @CEIL(i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
