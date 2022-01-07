; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i64 }

@SOC7090 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*, i32)* @dib7000p_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_set_power_mode(%struct.dib7000p_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000p_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 16383, i32* %5, align 4
  store i32 65535, i32* %6, align 4
  store i32 7, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %10 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %11 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %10, i32 1280)
  %12 = and i32 %11, 511
  %13 = or i32 65024, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %57 [
    i32 130, label %15
    i32 129, label %28
    i32 128, label %44
  ]

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %17 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOC7090, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 31
  store i32 %23, i32* %9, align 4
  br label %27

24:                                               ; preds = %15
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 511
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %21
  br label %57

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, -52737
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, -2
  store i32 %32, i32* %7, align 4
  %33 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %34 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SOC7090, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, -2049
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, -65
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %2, %41
  %45 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %46 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SOC7090, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, -161
  store i32 %52, i32* %9, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, -29697
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %2, %56, %27
  %58 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %58, i32 774, i32 %59)
  %61 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %61, i32 775, i32 %62)
  %64 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %64, i32 776, i32 %65)
  %67 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %67, i32 1280, i32 %68)
  %70 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %71 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SOC7090, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %57
  %76 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %76, i32 899, i32 %77)
  br label %79

79:                                               ; preds = %75, %57
  ret i32 0
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
