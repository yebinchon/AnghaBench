; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"temperature: %d C\0A\00", align 1
@TEMP_CAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0090_state*, i32*)* @dib0090_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_get_temperature(%struct.dib0090_state* %0, i32* %1) #0 {
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dib0090_state* %0, %struct.dib0090_state** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 15, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %97 [
    i32 131, label %9
    i32 130, label %32
    i32 129, label %46
    i32 128, label %66
  ]

9:                                                ; preds = %2
  %10 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %11 = call i32 @dib0090_read_reg(%struct.dib0090_state* %10, i32 16)
  %12 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %13 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %15 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %16 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, -2041
  %19 = or i32 %18, 64
  %20 = call i32 @dib0090_write_reg(%struct.dib0090_state* %14, i32 16, i32 %19)
  %21 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %22 = call i32 @dib0090_read_reg(%struct.dib0090_state* %21, i32 19)
  %23 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %24 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %26 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %27 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 768
  %30 = call i32 @dib0090_write_reg(%struct.dib0090_state* %25, i32 19, i32 %29)
  %31 = load i32*, i32** %4, align 8
  store i32 130, i32* %31, align 4
  br label %98

32:                                               ; preds = %2
  %33 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %34 = call i8* @dib0090_get_slow_adc_val(%struct.dib0090_state* %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %37 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %39 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %40 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -769
  %43 = or i32 %42, 512
  %44 = call i32 @dib0090_write_reg(%struct.dib0090_state* %38, i32 19, i32 %43)
  %45 = load i32*, i32** %4, align 8
  store i32 129, i32* %45, align 4
  br label %98

46:                                               ; preds = %2
  %47 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %48 = call i8* @dib0090_get_slow_adc_val(%struct.dib0090_state* %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %52 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %50, %53
  %55 = mul nsw i32 %54, 180
  %56 = ashr i32 %55, 8
  %57 = add nsw i32 %56, 55
  %58 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %59 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %61 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 30
  %64 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %4, align 8
  store i32 128, i32* %65, align 4
  br label %98

66:                                               ; preds = %2
  %67 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %68 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %69 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dib0090_write_reg(%struct.dib0090_state* %67, i32 19, i32 %70)
  %72 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %73 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %74 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dib0090_write_reg(%struct.dib0090_state* %72, i32 16, i32 %75)
  %77 = load i32*, i32** %4, align 8
  store i32 131, i32* %77, align 4
  %78 = load i32, i32* @TEMP_CAL, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %81 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %85 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %66
  %91 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %92 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %93 = call i32 @dib0090_read_reg(%struct.dib0090_state* %92, i32 35)
  %94 = or i32 %93, 16384
  %95 = call i32 @dib0090_write_reg(%struct.dib0090_state* %91, i32 35, i32 %94)
  br label %96

96:                                               ; preds = %90, %66
  br label %98

97:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %96, %46, %32, %9
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i8* @dib0090_get_slow_adc_val(%struct.dib0090_state*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
