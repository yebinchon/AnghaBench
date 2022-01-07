; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_update_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_update_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { i32 }
%struct.dibx000_bandwidth_config = type { i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"Updating pll (prediv: old =  %d new = %d ; loopdiv : old = %d new = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Waiting for PLL to lock\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dibx000_bandwidth_config*)* @dib7000p_update_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_update_pll(%struct.dvb_frontend* %0, %struct.dibx000_bandwidth_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dibx000_bandwidth_config*, align 8
  %6 = alloca %struct.dib7000p_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dibx000_bandwidth_config* %1, %struct.dibx000_bandwidth_config** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %14, align 8
  store %struct.dib7000p_state* %15, %struct.dib7000p_state** %6, align 8
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %17 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %16, i32 1856)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 63
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 6
  %22 = and i32 %21, 63
  store i32 %22, i32* %9, align 4
  %23 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %5, align 8
  %24 = icmp ne %struct.dibx000_bandwidth_config* %23, null
  br i1 %24, label %25, label %108

25:                                               ; preds = %2
  %26 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %5, align 8
  %27 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %5, align 8
  %33 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %108

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %5, align 8
  %40 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %5, align 8
  %44 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 61440
  store i32 %48, i32* %8, align 4
  %49 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %50 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %49, i32 1857)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, -32769
  %54 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %51, i32 1857, i32 %53)
  %55 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %5, align 8
  %58 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 63
  %61 = shl i32 %60, 6
  %62 = or i32 %56, %61
  %63 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %5, align 8
  %64 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 63
  %67 = or i32 %62, %66
  %68 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %55, i32 1856, i32 %67)
  %69 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %70 = call i32 @dib7000p_get_internal_freq(%struct.dib7000p_state* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %5, align 8
  %78 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %76, %79
  %81 = mul nsw i32 1000, %80
  %82 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %5, align 8
  %83 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  store i32 %85, i32* %11, align 4
  %86 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 65535
  %90 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %86, i32 18, i32 %89)
  %91 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, 65535
  %94 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %91, i32 19, i32 %93)
  %95 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, 32768
  %98 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %95, i32 1857, i32 %97)
  br label %99

99:                                               ; preds = %105, %37
  %100 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %101 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %100, i32 1856)
  %102 = ashr i32 %101, 15
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %99

107:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %111

108:                                              ; preds = %31, %2
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %107
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7000p_get_internal_freq(%struct.dib7000p_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
