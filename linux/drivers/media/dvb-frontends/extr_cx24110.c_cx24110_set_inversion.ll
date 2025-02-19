; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_set_inversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_set_inversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24110_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24110_state*, i32)* @cx24110_set_inversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_set_inversion(%struct.cx24110_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24110_state*, align 8
  %5 = alloca i32, align 4
  store %struct.cx24110_state* %0, %struct.cx24110_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %45 [
    i32 129, label %7
    i32 128, label %23
    i32 130, label %39
  ]

7:                                                ; preds = %2
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %10 = call i32 @cx24110_readreg(%struct.cx24110_state* %9, i32 55)
  %11 = or i32 %10, 1
  %12 = call i32 @cx24110_writereg(%struct.cx24110_state* %8, i32 55, i32 %11)
  %13 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %14 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %15 = call i32 @cx24110_readreg(%struct.cx24110_state* %14, i32 5)
  %16 = and i32 %15, 247
  %17 = call i32 @cx24110_writereg(%struct.cx24110_state* %13, i32 5, i32 %16)
  %18 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %19 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %20 = call i32 @cx24110_readreg(%struct.cx24110_state* %19, i32 34)
  %21 = and i32 %20, 239
  %22 = call i32 @cx24110_writereg(%struct.cx24110_state* %18, i32 34, i32 %21)
  br label %48

23:                                               ; preds = %2
  %24 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %25 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %26 = call i32 @cx24110_readreg(%struct.cx24110_state* %25, i32 55)
  %27 = or i32 %26, 1
  %28 = call i32 @cx24110_writereg(%struct.cx24110_state* %24, i32 55, i32 %27)
  %29 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %30 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %31 = call i32 @cx24110_readreg(%struct.cx24110_state* %30, i32 5)
  %32 = or i32 %31, 8
  %33 = call i32 @cx24110_writereg(%struct.cx24110_state* %29, i32 5, i32 %32)
  %34 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %35 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %36 = call i32 @cx24110_readreg(%struct.cx24110_state* %35, i32 34)
  %37 = or i32 %36, 16
  %38 = call i32 @cx24110_writereg(%struct.cx24110_state* %34, i32 34, i32 %37)
  br label %48

39:                                               ; preds = %2
  %40 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %41 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %42 = call i32 @cx24110_readreg(%struct.cx24110_state* %41, i32 55)
  %43 = and i32 %42, 254
  %44 = call i32 @cx24110_writereg(%struct.cx24110_state* %40, i32 55, i32 %43)
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %39, %23, %7
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @cx24110_writereg(%struct.cx24110_state*, i32, i32) #1

declare dso_local i32 @cx24110_readreg(%struct.cx24110_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
