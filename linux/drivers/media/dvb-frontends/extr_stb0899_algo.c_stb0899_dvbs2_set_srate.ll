; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_set_srate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_set_srate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@STB0899_BASE_DECIM_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_DECIM_CNTRL = common dso_local global i32 0, align 4
@STB0899_BASE_ANTI_ALIAS_SEL = common dso_local global i32 0, align 4
@STB0899_OFF0_ANTI_ALIAS_SEL = common dso_local global i32 0, align 4
@STB0899_BASE_BTR_NOM_FREQ = common dso_local global i32 0, align 4
@STB0899_OFF0_BTR_NOM_FREQ = common dso_local global i32 0, align 4
@BTR_CNTRL = common dso_local global i32 0, align 4
@BTR_FREQ_CORR = common dso_local global i32 0, align 4
@STB0899_BASE_BTR_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_BTR_CNTRL = common dso_local global i32 0, align 4
@STB0899_BASE_FREQ_ADJ_SCALE = common dso_local global i32 0, align 4
@STB0899_OFF0_FREQ_ADJ_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_dvbs2_set_srate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_dvbs2_set_srate(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i32, align 4
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
  %15 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %16 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %17 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %16, i32 0, i32 0
  store %struct.stb0899_internal* %17, %struct.stb0899_internal** %3, align 8
  %18 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %19 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %23 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 5, %24
  %26 = sdiv i32 %21, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 1, %29 ], [ %31, %30 ]
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @Log2Int(i32 %34)
  store i32 %35, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %36, 5
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 1, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %45 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %49 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = sdiv i32 %51, 1000
  %53 = sdiv i32 %46, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sle i32 %54, 2250
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %58

57:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %6, align 4
  %60 = shl i32 %59, 3
  %61 = and i32 %60, 24
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 %62, 5
  %64 = and i32 %63, 32
  %65 = add nsw i32 %61, %64
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 7
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %70 = load i32, i32* @STB0899_S2DEMOD, align 4
  %71 = load i32, i32* @STB0899_BASE_DECIM_CNTRL, align 4
  %72 = load i32, i32* @STB0899_OFF0_DECIM_CNTRL, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp sle i32 %75, 3450
  br i1 %76, label %77, label %78

77:                                               ; preds = %58
  store i32 0, i32* %15, align 4
  br label %84

78:                                               ; preds = %58
  %79 = load i32, i32* %8, align 4
  %80 = icmp sle i32 %79, 4250
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %15, align 4
  br label %83

82:                                               ; preds = %78
  store i32 2, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %77
  %85 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %86 = load i32, i32* @STB0899_S2DEMOD, align 4
  %87 = load i32, i32* @STB0899_BASE_ANTI_ALIAS_SEL, align 4
  %88 = load i32, i32* @STB0899_OFF0_ANTI_ALIAS_SEL, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %92 = call i32 @stb0899_dvbs2_calc_srate(%struct.stb0899_state* %91)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %94 = load i32, i32* @STB0899_S2DEMOD, align 4
  %95 = load i32, i32* @STB0899_BASE_BTR_NOM_FREQ, align 4
  %96 = load i32, i32* @STB0899_OFF0_BTR_NOM_FREQ, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %100 = call i32 @stb0899_dvbs2_calc_dev(%struct.stb0899_state* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* @STB0899_S2DEMOD, align 4
  %102 = load i32, i32* @BTR_CNTRL, align 4
  %103 = call i32 @STB0899_READ_S2REG(i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* @BTR_FREQ_CORR, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @STB0899_SETFIELD_VAL(i32 %104, i32 %105, i32 %106)
  %108 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %109 = load i32, i32* @STB0899_S2DEMOD, align 4
  %110 = load i32, i32* @STB0899_BASE_BTR_CNTRL, align 4
  %111 = load i32, i32* @STB0899_OFF0_BTR_CNTRL, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %115 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %118 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sdiv i32 %119, 4096
  %121 = sdiv i32 %116, %120
  store i32 %121, i32* %11, align 4
  %122 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %123 = load i32, i32* @STB0899_S2DEMOD, align 4
  %124 = load i32, i32* @STB0899_BASE_FREQ_ADJ_SCALE, align 4
  %125 = load i32, i32* @STB0899_OFF0_FREQ_ADJ_SCALE, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %122, i32 %123, i32 %124, i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @Log2Int(i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

declare dso_local i32 @stb0899_dvbs2_calc_srate(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_dvbs2_calc_dev(%struct.stb0899_state*) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
