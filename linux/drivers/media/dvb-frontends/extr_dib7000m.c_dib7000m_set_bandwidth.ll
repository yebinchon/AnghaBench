; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"using default timf\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"using updated timf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*, i32)* @dib7000m_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_set_bandwidth(%struct.dib7000m_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000m_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 8000, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %12 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %14 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %20 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  br label %28

22:                                               ; preds = %9
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %25 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sdiv i32 %30, 50
  %32 = mul nsw i32 %29, %31
  %33 = sdiv i32 %32, 160
  store i32 %33, i32* %5, align 4
  %34 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 65535
  %38 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %34, i32 23, i32 %37)
  %39 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 65535
  %42 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %39, i32 24, i32 %41)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
