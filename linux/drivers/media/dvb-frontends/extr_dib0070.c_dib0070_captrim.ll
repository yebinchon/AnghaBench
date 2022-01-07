; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_captrim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_captrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0070_state = type { i32, i32, i32, i32, i32 }

@CT_TUNER_STEP_0 = common dso_local global i32 0, align 4
@CT_TUNER_STEP_1 = common dso_local global i32 0, align 4
@CT_TUNER_STEP_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CAPTRIM=%hd; ADC = %hd (ADC) & %dmV\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"CAPTRIM=%hd is closer to target (%hd/%hd)\0A\00", align 1
@CT_TUNER_STEP_3 = common dso_local global i32 0, align 4
@CT_TUNER_STEP_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0070_state*, i32*)* @dib0070_captrim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0070_captrim(%struct.dib0070_state* %0, i32* %1) #0 {
  %3 = alloca %struct.dib0070_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dib0070_state* %0, %struct.dib0070_state** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CT_TUNER_STEP_0, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %14 = call i32 @dib0070_write_reg(%struct.dib0070_state* %13, i32 15, i32 60688)
  %15 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %16 = call i32 @dib0070_write_reg(%struct.dib0070_state* %15, i32 23, i32 52)
  %17 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %18 = call i32 @dib0070_write_reg(%struct.dib0070_state* %17, i32 24, i32 50)
  %19 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %20 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %19, i32 0, i32 2
  store i32 64, i32* %20, align 4
  %21 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %22 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %21, i32 0, i32 1
  store i32 64, i32* %22, align 4
  %23 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %24 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %23, i32 0, i32 0
  store i32 64, i32* %24, align 4
  %25 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %26 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %25, i32 0, i32 3
  store i32 3000, i32* %26, align 4
  store i32 20, i32* %7, align 4
  %27 = load i32, i32* @CT_TUNER_STEP_1, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %140

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CT_TUNER_STEP_1, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %36 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %36, align 4
  %39 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %40 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %41 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %44 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  %47 = call i32 @dib0070_write_reg(%struct.dib0070_state* %39, i32 20, i32 %46)
  store i32 15, i32* %7, align 4
  %48 = load i32, i32* @CT_TUNER_STEP_2, align 4
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  br label %139

50:                                               ; preds = %29
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CT_TUNER_STEP_2, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %118

55:                                               ; preds = %50
  %56 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %57 = call i32 @dib0070_read_reg(%struct.dib0070_state* %56, i32 25)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %59 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 %62, 1800
  %64 = sdiv i32 %63, 1024
  %65 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp sge i32 %66, 400
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 400
  store i32 %70, i32* %6, align 4
  store i32 -1, i32* %5, align 4
  br label %74

71:                                               ; preds = %55
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 400, %72
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %77 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %82 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %86 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %91 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %93 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %96 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %80, %74
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %100 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %104 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %108 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load i32, i32* @CT_TUNER_STEP_1, align 4
  %113 = load i32*, i32** %4, align 8
  store i32 %112, i32* %113, align 4
  br label %117

114:                                              ; preds = %97
  %115 = load i32, i32* @CT_TUNER_STEP_3, align 4
  %116 = load i32*, i32** %4, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  br label %138

118:                                              ; preds = %50
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CT_TUNER_STEP_3, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %125 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %126 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %129 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  %132 = call i32 @dib0070_write_reg(%struct.dib0070_state* %124, i32 20, i32 %131)
  %133 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %134 = call i32 @dib0070_write_reg(%struct.dib0070_state* %133, i32 24, i32 2047)
  %135 = load i32, i32* @CT_TUNER_STEP_4, align 4
  %136 = load i32*, i32** %4, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %123, %118
  br label %138

138:                                              ; preds = %137, %117
  br label %139

139:                                              ; preds = %138, %34
  br label %140

140:                                              ; preds = %139, %12
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @dib0070_write_reg(%struct.dib0070_state*, i32, i32) #1

declare dso_local i32 @dib0070_read_reg(%struct.dib0070_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
