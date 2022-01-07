; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_reset_pll_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_reset_pll_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }
%struct.dibx000_bandwidth_config = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"ifreq: %d %x, inversion: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, %struct.dibx000_bandwidth_config*)* @dib8000_reset_pll_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_reset_pll_common(%struct.dib8000_state* %0, %struct.dibx000_bandwidth_config* %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca %struct.dibx000_bandwidth_config*, align 8
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store %struct.dibx000_bandwidth_config* %1, %struct.dibx000_bandwidth_config** %4, align 8
  %5 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %6 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %9 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %12 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 25
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %14)
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %17 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 32912
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %22 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %23 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 65535
  %28 = call i32 @dib8000_write_word(%struct.dib8000_state* %21, i32 23, i32 %27)
  %29 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %30 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %31 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = and i32 %33, 65535
  %35 = call i32 @dib8000_write_word(%struct.dib8000_state* %29, i32 24, i32 %34)
  br label %54

36:                                               ; preds = %2
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %38 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %39 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 2
  %42 = mul nsw i32 %41, 1000
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 65535
  %45 = call i32 @dib8000_write_word(%struct.dib8000_state* %37, i32 23, i32 %44)
  %46 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %47 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %48 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 2
  %51 = mul nsw i32 %50, 1000
  %52 = and i32 %51, 65535
  %53 = call i32 @dib8000_write_word(%struct.dib8000_state* %46, i32 24, i32 %52)
  br label %54

54:                                               ; preds = %36, %20
  %55 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %56 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %57 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 511
  %61 = call i32 @dib8000_write_word(%struct.dib8000_state* %55, i32 27, i32 %60)
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %63 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %64 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 65535
  %67 = call i32 @dib8000_write_word(%struct.dib8000_state* %62, i32 28, i32 %66)
  %68 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %69 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %70 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 25
  %73 = and i32 %72, 3
  %74 = call i32 @dib8000_write_word(%struct.dib8000_state* %68, i32 26, i32 %73)
  %75 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %76 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 32912
  br i1 %78, label %79, label %85

79:                                               ; preds = %54
  %80 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %81 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %82 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dib8000_write_word(%struct.dib8000_state* %80, i32 922, i32 %83)
  br label %85

85:                                               ; preds = %79, %54
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
