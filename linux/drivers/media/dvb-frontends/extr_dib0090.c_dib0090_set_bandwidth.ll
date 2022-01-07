; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib0090_state*)* @dib0090_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0090_set_bandwidth(%struct.dib0090_state* %0) #0 {
  %2 = alloca %struct.dib0090_state*, align 8
  %3 = alloca i32, align 4
  store %struct.dib0090_state* %0, %struct.dib0090_state** %2, align 8
  %4 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %5 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %4, i32 0, i32 2
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %9, 1000
  %11 = icmp sle i32 %10, 5000
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 49152, i32* %3, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %15 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  %21 = icmp sle i32 %20, 6000
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 32768, i32* %3, align 4
  br label %35

23:                                               ; preds = %13
  %24 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %25 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 1000
  %31 = icmp sle i32 %30, 7000
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 16384, i32* %3, align 4
  br label %34

33:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %22
  br label %36

36:                                               ; preds = %35, %12
  %37 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %38 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 16383
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %43 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %47 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %48 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dib0090_write_reg(%struct.dib0090_state* %46, i32 1, i32 %49)
  %51 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %52 = call i32 @dib0090_write_reg(%struct.dib0090_state* %51, i32 3, i32 24584)
  %53 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %54 = call i32 @dib0090_write_reg(%struct.dib0090_state* %53, i32 4, i32 1)
  %55 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %56 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %36
  %61 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %62 = call i32 @dib0090_write_reg(%struct.dib0090_state* %61, i32 5, i32 39887)
  br label %68

63:                                               ; preds = %36
  %64 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %65 = call i32 @dib0090_write_reg(%struct.dib0090_state* %64, i32 2, i32 10774)
  %66 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %67 = call i32 @dib0090_write_reg(%struct.dib0090_state* %66, i32 5, i32 43981)
  br label %68

68:                                               ; preds = %63, %60
  ret void
}

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
