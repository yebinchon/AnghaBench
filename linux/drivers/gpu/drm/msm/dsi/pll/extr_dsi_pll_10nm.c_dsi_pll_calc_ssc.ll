; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_calc_ssc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_calc_ssc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_pll_10nm = type { %struct.dsi_pll_regs, %struct.dsi_pll_config }
%struct.dsi_pll_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsi_pll_config = type { i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"SSC not enabled\0A\00", align 1
@SSC_CENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"SCC: Dec:%d, frac:%llu, frac_bits:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"SSC: div_per:0x%X, stepsize:0x%X, adjper:0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_pll_10nm*)* @dsi_pll_calc_ssc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_pll_calc_ssc(%struct.dsi_pll_10nm* %0) #0 {
  %2 = alloca %struct.dsi_pll_10nm*, align 8
  %3 = alloca %struct.dsi_pll_config*, align 8
  %4 = alloca %struct.dsi_pll_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsi_pll_10nm* %0, %struct.dsi_pll_10nm** %2, align 8
  %9 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %10 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %9, i32 0, i32 1
  store %struct.dsi_pll_config* %10, %struct.dsi_pll_config** %3, align 8
  %11 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %12 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %11, i32 0, i32 0
  store %struct.dsi_pll_regs* %12, %struct.dsi_pll_regs** %4, align 8
  %13 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %14 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %137

19:                                               ; preds = %1
  %20 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %21 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %24 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DIV_ROUND_CLOSEST(i32 %22, i32 %25)
  %27 = sdiv i32 %26, 2
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %32 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = srem i32 %30, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %40 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %43 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %41, %45
  %47 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %48 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = or i32 %46, %50
  store i32 %51, i32* %8, align 4
  %52 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %53 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %56 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %65 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %70 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @div_u64(i32 %75, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %79, i32 1000000)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 255
  %83 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %84 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, 65280
  %87 = ashr i32 %86, 8
  %88 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %89 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, 255
  %92 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %93 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 65280
  %96 = ashr i32 %95, 8
  %97 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %98 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %100 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 255
  %103 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %104 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 4
  %105 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %106 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, 65280
  %109 = ashr i32 %108, 8
  %110 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %111 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %113 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %19
  %117 = load i32, i32* @SSC_CENTER, align 4
  br label %119

118:                                              ; preds = %19
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %122 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %121, i32 0, i32 10
  store i32 %120, i32* %122, align 4
  %123 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %124 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %128 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %134 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %119, %17
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
