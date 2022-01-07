; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"powermode : 774 : %x ; 775 : %x; 776 : %x ; 900 : %x; 1280 : %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, i32)* @dib8000_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_set_power_mode(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 16383, i32* %5, align 4
  store i32 65535, i32* %6, align 4
  store i32 65535, i32* %7, align 4
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %11 = call i32 @dib8000_read_word(%struct.dib8000_state* %10, i32 900)
  %12 = and i32 %11, 65532
  %13 = or i32 %12, 3
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %15 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 32912
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %20 = call i32 @dib8000_read_word(%struct.dib8000_state* %19, i32 1280)
  %21 = and i32 %20, 255
  %22 = or i32 %21, 65280
  store i32 %22, i32* %9, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %25 = call i32 @dib8000_read_word(%struct.dib8000_state* %24, i32 1280)
  %26 = and i32 %25, 28799
  %27 = or i32 %26, 36736
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %56 [
    i32 129, label %30
    i32 128, label %44
  ]

30:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 65532
  store i32 %32, i32* %8, align 4
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %34 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 32912
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %9, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 28799
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %56

44:                                               ; preds = %28
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %46 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 32912
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 255
  store i32 %51, i32* %9, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 64123
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %28, %55, %43
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @dprintk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dib8000_write_word(%struct.dib8000_state* %63, i32 774, i32 %64)
  %66 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dib8000_write_word(%struct.dib8000_state* %66, i32 775, i32 %67)
  %69 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @dib8000_write_word(%struct.dib8000_state* %69, i32 776, i32 %70)
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @dib8000_write_word(%struct.dib8000_state* %72, i32 900, i32 %73)
  %75 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @dib8000_write_word(%struct.dib8000_state* %75, i32 1280, i32 %76)
  ret void
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
