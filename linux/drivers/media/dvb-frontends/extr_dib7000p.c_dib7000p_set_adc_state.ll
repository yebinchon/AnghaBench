; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_adc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_adc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SOC7090 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000p_state*, i32)* @dib7000p_set_adc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000p_set_adc_state(%struct.dib7000p_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000p_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %9 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SOC7090, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %15 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %14, i32 908)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %17 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %16, i32 909)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %93 [
    i32 130, label %20
    i32 131, label %59
    i32 132, label %77
    i32 133, label %82
    i32 128, label %87
    i32 129, label %90
  ]

20:                                               ; preds = %18
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %22 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOC7090, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %28 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %27, i32 1925)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 16
  %32 = or i32 %31, 4
  %33 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %29, i32 1925, i32 %32)
  %34 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %35 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %34, i32 1925)
  store i32 %35, i32* %7, align 4
  %36 = call i32 @msleep(i32 200)
  %37 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, -17
  %40 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %37, i32 1925, i32 %39)
  %41 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %42 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %41, i32 72)
  %43 = and i32 %42, -61441
  store i32 %43, i32* %7, align 4
  %44 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, 16384
  %47 = or i32 %46, 12288
  %48 = or i32 %47, 524
  %49 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %44, i32 72, i32 %48)
  br label %58

50:                                               ; preds = %20
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, 3
  store i32 %52, i32* %6, align 4
  %53 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %53, i32 909, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, -3
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %50, %26
  br label %94

59:                                               ; preds = %18
  %60 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %61 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SOC7090, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %67 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %66, i32 1925)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, -5
  %71 = or i32 %70, 16
  %72 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %68, i32 1925, i32 %71)
  br label %76

73:                                               ; preds = %59
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, 3
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %65
  br label %94

77:                                               ; preds = %18
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 4095
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 3
  store i32 %81, i32* %6, align 4
  br label %94

82:                                               ; preds = %18
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, 28672
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, 60
  store i32 %86, i32* %6, align 4
  br label %94

87:                                               ; preds = %18
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, -32769
  store i32 %89, i32* %5, align 4
  br label %94

90:                                               ; preds = %18
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, 32768
  store i32 %92, i32* %5, align 4
  br label %94

93:                                               ; preds = %18
  br label %94

94:                                               ; preds = %93, %90, %87, %82, %77, %76, %58
  %95 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %96 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 1
  %100 = shl i32 %99, 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %104 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 1
  %108 = shl i32 %107, 7
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %112 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SOC7090, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %94
  %117 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %117, i32 908, i32 %118)
  %120 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %120, i32 909, i32 %121)
  br label %123

123:                                              ; preds = %116, %94
  ret void
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
