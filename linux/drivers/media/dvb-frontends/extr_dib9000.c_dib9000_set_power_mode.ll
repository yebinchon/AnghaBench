; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib9000_state*, i32)* @dib9000_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib9000_set_power_mode(%struct.dib9000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib9000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 16383, i32* %5, align 4
  store i32 65535, i32* %6, align 4
  store i32 65535, i32* %7, align 4
  %10 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %11 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 16387
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %16 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 16388
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %21 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 16389
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14, %2
  store i32 1, i32* %9, align 4
  br label %26

25:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 906, %28
  %30 = call i32 @dib9000_read_word(%struct.dib9000_state* %27, i32 %29)
  %31 = or i32 %30, 3
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %50 [
    i32 133, label %33
    i32 130, label %34
    i32 129, label %37
    i32 131, label %44
    i32 132, label %47
    i32 128, label %51
  ]

33:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %52

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, -229
  store i32 %36, i32* %7, align 4
  br label %52

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, -52225
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, -245
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, -2
  store i32 %43, i32* %8, align 4
  br label %52

44:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  store i32 32799, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, -2
  store i32 %46, i32* %8, align 4
  br label %52

47:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  store i32 32768, i32* %6, align 4
  store i32 267, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, -2
  store i32 %49, i32* %8, align 4
  br label %52

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %26, %50
  br label %52

52:                                               ; preds = %51, %47, %44, %37, %34, %33
  %53 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %54 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, 214
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %64 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 16384
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 903, %72
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dib9000_write_word(%struct.dib9000_state* %71, i32 %73, i32 %74)
  %76 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 904, %77
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dib9000_write_word(%struct.dib9000_state* %76, i32 %78, i32 %79)
  %81 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 905, %82
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dib9000_write_word(%struct.dib9000_state* %81, i32 %83, i32 %84)
  %86 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 906, %87
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dib9000_write_word(%struct.dib9000_state* %86, i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @dib9000_read_word(%struct.dib9000_state*, i32) #1

declare dso_local i32 @dib9000_write_word(%struct.dib9000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
