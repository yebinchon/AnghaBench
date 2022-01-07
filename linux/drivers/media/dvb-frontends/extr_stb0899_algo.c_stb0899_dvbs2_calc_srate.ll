; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_calc_srate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_calc_srate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_config*, %struct.stb0899_internal }
%struct.stb0899_config = type { i32 }
%struct.stb0899_internal = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_dvbs2_calc_srate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_dvbs2_calc_srate(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 1
  store %struct.stb0899_internal* %14, %struct.stb0899_internal** %3, align 8
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %16 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %15, i32 0, i32 0
  %17 = load %struct.stb0899_config*, %struct.stb0899_config** %16, align 8
  store %struct.stb0899_config* %17, %struct.stb0899_config** %4, align 8
  %18 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %19 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %23 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 5, %24
  %26 = sdiv i32 %21, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 1, %29 ], [ %31, %30 ]
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @Log2Int(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 1, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %39 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 1000
  store i32 %41, i32* %11, align 4
  %42 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %43 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 1000
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sle i32 %46, 4
  br i1 %47, label %48, label %67

48:                                               ; preds = %32
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %51 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = shl i32 1, %53
  %55 = mul nsw i32 %49, %54
  %56 = load i32, i32* %11, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %60 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = shl i32 1, %62
  %64 = mul nsw i32 %58, %63
  %65 = load i32, i32* %11, align 4
  %66 = srem i32 %64, %65
  store i32 %66, i32* %8, align 4
  br label %88

67:                                               ; preds = %32
  %68 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %69 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = shl i32 1, %71
  %73 = load i32, i32* %11, align 4
  %74 = sdiv i32 %73, 100
  %75 = sdiv i32 %72, %74
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sdiv i32 %77, 100
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %81 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = shl i32 1, %83
  %85 = mul nsw i32 %79, %84
  %86 = load i32, i32* %11, align 4
  %87 = srem i32 %85, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %67, %48
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = sdiv i32 %94, %95
  %97 = add nsw i32 %91, %96
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @Log2Int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
