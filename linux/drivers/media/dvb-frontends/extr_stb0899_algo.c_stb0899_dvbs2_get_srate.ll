; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_get_srate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_get_srate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_config*, %struct.stb0899_internal }
%struct.stb0899_config = type { i32 }
%struct.stb0899_internal = type { i32 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@BTR_NOM_FREQ = common dso_local global i32 0, align 4
@DECIM_CNTRL = common dso_local global i32 0, align 4
@DECIM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_dvbs2_get_srate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_dvbs2_get_srate(%struct.stb0899_state* %0) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %16 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %15, i32 0, i32 1
  store %struct.stb0899_internal* %16, %struct.stb0899_internal** %3, align 8
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %18 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %17, i32 0, i32 0
  %19 = load %struct.stb0899_config*, %struct.stb0899_config** %18, align 8
  store %struct.stb0899_config* %19, %struct.stb0899_config** %4, align 8
  %20 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %21 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %11, align 4
  %24 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %25 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @STB0899_S2DEMOD, align 4
  %31 = load i32, i32* @BTR_NOM_FREQ, align 4
  %32 = call i32 @STB0899_READ_S2REG(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @STB0899_S2DEMOD, align 4
  %34 = load i32, i32* @DECIM_CNTRL, align 4
  %35 = call i32 @STB0899_READ_S2REG(i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @DECIM_RATE, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @STB0899_GETFIELD(i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %42 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 1, %44
  %46 = sdiv i32 %43, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %12, align 4
  %49 = shl i32 1, %48
  %50 = sdiv i32 %47, %49
  store i32 %50, i32* %9, align 4
  %51 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %52 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 1, %54
  %56 = srem i32 %53, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %12, align 4
  %59 = shl i32 1, %58
  %60 = srem i32 %57, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 1, %67
  %69 = sdiv i32 %66, %68
  %70 = add nsw i32 %63, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 1, %74
  %76 = sdiv i32 %73, %75
  %77 = add nsw i32 %70, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sdiv i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
