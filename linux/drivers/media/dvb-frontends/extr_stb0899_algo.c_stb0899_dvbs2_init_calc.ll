; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_init_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_init_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32, i32, i32, i64 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@ACQ_CNTRL2 = common dso_local global i32 0, align 4
@ZIGZAG = common dso_local global i32 0, align 4
@NUM_STEPS = common dso_local global i32 0, align 4
@FREQ_STEPSIZE = common dso_local global i32 0, align 4
@STB0899_BASE_ACQ_CNTRL2 = common dso_local global i32 0, align 4
@STB0899_OFF0_ACQ_CNTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_dvbs2_init_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_dvbs2_init_calc(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %8 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %9 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %8, i32 0, i32 0
  store %struct.stb0899_internal* %9, %struct.stb0899_internal** %3, align 8
  %10 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %11 = call i32 @stb0899_dvbs2_config_uwp(%struct.stb0899_state* %10)
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %13 = call i32 @stb0899_dvbs2_config_csm_auto(%struct.stb0899_state* %12)
  %14 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %15 = call i32 @stb0899_dvbs2_set_srate(%struct.stb0899_state* %14)
  %16 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %17 = call i32 @stb0899_dvbs2_set_btr_loopbw(%struct.stb0899_state* %16)
  %18 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %19 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 1000000
  %22 = icmp sge i32 %21, 15
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 26214, i32* %5, align 4
  br label %41

24:                                               ; preds = %1
  %25 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %26 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 1000000
  %29 = icmp sge i32 %28, 10
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 18724, i32* %5, align 4
  br label %40

31:                                               ; preds = %24
  %32 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %33 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 1000000
  %36 = icmp sge i32 %35, 5
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 13107, i32* %5, align 4
  br label %39

38:                                               ; preds = %31
  store i32 32768, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %30
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %43 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 1000000
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 10, %46
  %48 = mul nsw i32 %47, 131072
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %51 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 1000000
  %54 = mul nsw i32 %49, %53
  %55 = sdiv i32 %48, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 6
  %58 = sdiv i32 %57, 10
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  br label %64

62:                                               ; preds = %41
  %63 = load i32, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 1, %61 ], [ %63, %62 ]
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = srem i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %71 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %72 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %75 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %78 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %79, 20000000
  %81 = mul nsw i32 %76, %80
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %73, %82
  %84 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %85 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 1000000
  %88 = call i32 @stb0899_dvbs2_set_carr_freq(%struct.stb0899_state* %70, i64 %83, i32 %87)
  br label %99

89:                                               ; preds = %64
  %90 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %91 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %92 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %95 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %96, 1000000
  %98 = call i32 @stb0899_dvbs2_set_carr_freq(%struct.stb0899_state* %90, i64 %93, i32 %97)
  br label %99

99:                                               ; preds = %89, %69
  %100 = load i32, i32* @STB0899_S2DEMOD, align 4
  %101 = load i32, i32* @ACQ_CNTRL2, align 4
  %102 = call i32 @STB0899_READ_S2REG(i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @ZIGZAG, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @STB0899_SETFIELD_VAL(i32 %103, i32 %104, i32 1)
  %106 = load i32, i32* @NUM_STEPS, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @STB0899_SETFIELD_VAL(i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @FREQ_STEPSIZE, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @STB0899_SETFIELD_VAL(i32 %110, i32 %111, i32 %112)
  %114 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %115 = load i32, i32* @STB0899_S2DEMOD, align 4
  %116 = load i32, i32* @STB0899_BASE_ACQ_CNTRL2, align 4
  %117 = load i32, i32* @STB0899_OFF0_ACQ_CNTRL2, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %114, i32 %115, i32 %116, i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @stb0899_dvbs2_config_uwp(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_dvbs2_config_csm_auto(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_dvbs2_set_srate(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_dvbs2_set_btr_loopbw(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_dvbs2_set_carr_freq(%struct.stb0899_state*, i64, i32) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
