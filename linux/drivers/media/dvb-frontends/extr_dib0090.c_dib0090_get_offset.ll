; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_get_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i32 }

@INTERN_WAIT = common dso_local global i32 0, align 4
@CT_TUNER_STEP_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0090_state*, i32*)* @dib0090_get_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_get_offset(%struct.dib0090_state* %0, i32* %1) #0 {
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.dib0090_state* %0, %struct.dib0090_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @INTERN_WAIT, align 4
  %7 = mul nsw i32 %6, 10
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %31 [
    i32 130, label %10
    i32 129, label %14
    i32 128, label %22
  ]

10:                                               ; preds = %2
  %11 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %12 = call i32 @dib0090_write_reg(%struct.dib0090_state* %11, i32 31, i32 7)
  %13 = load i32*, i32** %4, align 8
  store i32 129, i32* %13, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %16 = call i32 @dib0090_read_reg(%struct.dib0090_state* %15, i32 29)
  %17 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %18 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %20 = call i32 @dib0090_write_reg(%struct.dib0090_state* %19, i32 31, i32 4)
  %21 = load i32*, i32** %4, align 8
  store i32 128, i32* %21, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %24 = call i32 @dib0090_read_reg(%struct.dib0090_state* %23, i32 29)
  %25 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %26 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @CT_TUNER_STEP_5, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %5, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %22, %14, %10
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
