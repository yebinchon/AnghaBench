; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_setup_pwm_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_setup_pwm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000mc_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib3000mc_state*)* @dib3000mc_setup_pwm_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_setup_pwm_state(%struct.dib3000mc_state* %0) #0 {
  %2 = alloca %struct.dib3000mc_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dib3000mc_state* %0, %struct.dib3000mc_state** %2, align 8
  %5 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %2, align 8
  %6 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 65275
  store i32 %12, i32* %4, align 4
  %13 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %2, align 8
  %14 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  store i32 33226, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, 4
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %1
  store i32 37322, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, 256
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %26, i32 51, i32 %27)
  %29 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %29, i32 52, i32 %30)
  %32 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %2, align 8
  %33 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %2, align 8
  %40 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %39, i32 245, i32 9)
  br label %44

41:                                               ; preds = %25
  %42 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %2, align 8
  %43 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %42, i32 245, i32 0)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %2, align 8
  %46 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %45, i32 1040, i32 3)
  ret i32 0
}

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
