; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_calc_dec_frac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_calc_dec_frac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_pll_10nm = type { i32, i32, %struct.dsi_pll_regs, %struct.dsi_pll_config }
%struct.dsi_pll_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dsi_pll_config = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_pll_10nm*)* @dsi_pll_calc_dec_frac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_pll_calc_dec_frac(%struct.dsi_pll_10nm* %0) #0 {
  %2 = alloca %struct.dsi_pll_10nm*, align 8
  %3 = alloca %struct.dsi_pll_config*, align 8
  %4 = alloca %struct.dsi_pll_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dsi_pll_10nm* %0, %struct.dsi_pll_10nm** %2, align 8
  %12 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %13 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %12, i32 0, i32 3
  store %struct.dsi_pll_config* %13, %struct.dsi_pll_config** %3, align 8
  %14 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %15 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %14, i32 0, i32 2
  store %struct.dsi_pll_regs* %15, %struct.dsi_pll_regs** %4, align 8
  %16 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %17 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %20 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %23 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %7, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %33 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 1, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @div_u64(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @div_u64_rem(i32 %41, i32 %42, i32* %10)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @div_u64(i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ule i64 %48, 1900000000
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %52 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %51, i32 0, i32 0
  store i32 8, i32* %52, align 4
  br label %64

53:                                               ; preds = %31
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ule i64 %55, 3000000000
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %59 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %58, i32 0, i32 0
  store i32 10, i32* %59, align 4
  br label %63

60:                                               ; preds = %53
  %61 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %62 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %61, i32 0, i32 0
  store i32 12, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 1100000000
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %70 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %69, i32 0, i32 1
  store i32 8, i32* %70, align 4
  br label %74

71:                                               ; preds = %64
  %72 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %73 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.dsi_pll_config*, %struct.dsi_pll_config** %3, align 8
  %76 = getelementptr inbounds %struct.dsi_pll_config, %struct.dsi_pll_config* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %79 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %82 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, 255
  %85 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %86 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, 65280
  %89 = ashr i32 %88, 8
  %90 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %91 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 196608
  %94 = ashr i32 %93, 16
  %95 = load %struct.dsi_pll_regs*, %struct.dsi_pll_regs** %4, align 8
  %96 = getelementptr inbounds %struct.dsi_pll_regs, %struct.dsi_pll_regs* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  ret void
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
