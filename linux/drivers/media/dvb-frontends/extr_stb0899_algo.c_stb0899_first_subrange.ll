; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_first_subrange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_first_subrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.stb0899_config*, %struct.stb0899_params, %struct.stb0899_internal }
%struct.stb0899_config = type { i32 (i32*, i32*)* }
%struct.stb0899_params = type { i32 }
%struct.stb0899_internal = type { i64, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_first_subrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_first_subrange(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_params*, align 8
  %5 = alloca %struct.stb0899_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %8 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %9 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %8, i32 0, i32 3
  store %struct.stb0899_internal* %9, %struct.stb0899_internal** %3, align 8
  %10 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %11 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %10, i32 0, i32 2
  store %struct.stb0899_params* %11, %struct.stb0899_params** %4, align 8
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %13 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %12, i32 0, i32 1
  %14 = load %struct.stb0899_config*, %struct.stb0899_config** %13, align 8
  store %struct.stb0899_config* %14, %struct.stb0899_config** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %16 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %15, i32 0, i32 0
  %17 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %16, align 8
  %18 = icmp ne i32 (i32*, i32*)* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %21 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %20, i32 0, i32 0
  %22 = call i32 @stb0899_i2c_gate_ctrl(i32* %21, i32 1)
  %23 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %24 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %23, i32 0, i32 0
  %25 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %24, align 8
  %26 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %27 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %26, i32 0, i32 0
  %28 = call i32 %25(i32* %27, i32* %7)
  %29 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %30 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %29, i32 0, i32 0
  %31 = call i32 @stb0899_i2c_gate_ctrl(i32* %30, i32 0)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %34 = call i32 @stb0899_carr_width(%struct.stb0899_state* %33)
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %19, %1
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %42 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @min(i32 %43, i32 %44)
  %46 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %47 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  br label %51

48:                                               ; preds = %37
  %49 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %50 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %struct.stb0899_params*, %struct.stb0899_params** %4, align 8
  %53 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %56 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %58 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %60 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  ret void
}

declare dso_local i32 @stb0899_i2c_gate_ctrl(i32*, i32) #1

declare dso_local i32 @stb0899_carr_width(%struct.stb0899_state*) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
