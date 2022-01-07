; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_adc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_adc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32)* @dib8000_set_adc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_adc_state(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %10 = call i32 @dib8000_read_word(%struct.dib8000_state* %9, i32 907)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %12 = call i32 @dib8000_read_word(%struct.dib8000_state* %11, i32 908)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %81 [
    i32 130, label %14
    i32 131, label %53
    i32 132, label %69
    i32 133, label %74
    i32 128, label %75
    i32 129, label %78
  ]

14:                                               ; preds = %2
  %15 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %16 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 32912
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, 3
  store i32 %21, i32* %8, align 4
  %22 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dib8000_write_word(%struct.dib8000_state* %22, i32 908, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, -3
  store i32 %28, i32* %8, align 4
  br label %52

29:                                               ; preds = %14
  %30 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %31 = call i32 @dib8000_read_word(%struct.dib8000_state* %30, i32 1925)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, 16
  %35 = or i32 %34, 4
  %36 = call i32 @dib8000_write_word(%struct.dib8000_state* %32, i32 1925, i32 %35)
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %38 = call i32 @dib8000_read_word(%struct.dib8000_state* %37, i32 1925)
  store i32 %38, i32* %6, align 4
  %39 = call i32 @msleep(i32 20)
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, -17
  %43 = call i32 @dib8000_write_word(%struct.dib8000_state* %40, i32 1925, i32 %42)
  %44 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %45 = call i32 @dib8000_read_word(%struct.dib8000_state* %44, i32 921)
  %46 = and i32 %45, -61441
  store i32 %46, i32* %6, align 4
  %47 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, 16384
  %50 = or i32 %49, 12288
  %51 = call i32 @dib8000_write_word(%struct.dib8000_state* %47, i32 921, i32 %50)
  br label %52

52:                                               ; preds = %29, %19
  br label %82

53:                                               ; preds = %2
  %54 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %55 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 32912
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %60 = call i32 @dib8000_read_word(%struct.dib8000_state* %59, i32 1925)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, -5
  %64 = or i32 %63, 16
  %65 = call i32 @dib8000_write_word(%struct.dib8000_state* %61, i32 1925, i32 %64)
  br label %66

66:                                               ; preds = %58, %53
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, 3
  store i32 %68, i32* %8, align 4
  br label %82

69:                                               ; preds = %2
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 4095
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 3
  store i32 %73, i32* %8, align 4
  br label %82

74:                                               ; preds = %2
  store i32 12288, i32* %7, align 4
  store i32 122, i32* %8, align 4
  br label %82

75:                                               ; preds = %2
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, -32769
  store i32 %77, i32* %7, align 4
  br label %82

78:                                               ; preds = %2
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, 32768
  store i32 %80, i32* %7, align 4
  br label %82

81:                                               ; preds = %2
  br label %82

82:                                               ; preds = %81, %78, %75, %74, %69, %66, %52
  %83 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dib8000_write_word(%struct.dib8000_state* %83, i32 907, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dib8000_write_word(%struct.dib8000_state* %88, i32 908, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
