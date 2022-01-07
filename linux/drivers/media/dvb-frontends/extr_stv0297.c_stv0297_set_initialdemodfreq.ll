; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_initialdemodfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_initialdemodfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0297_state = type { i32 }

@STV0297_CLOCK_KHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0297_state*, i64)* @stv0297_set_initialdemodfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0297_set_initialdemodfreq(%struct.stv0297_state* %0, i64 %1) #0 {
  %3 = alloca %struct.stv0297_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.stv0297_state* %0, %struct.stv0297_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sgt i64 %6, 10000
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* @STV0297_CLOCK_KHZ, align 8
  %10 = load i64, i64* %4, align 8
  %11 = sub nsw i64 %10, %9
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i64, i64* @STV0297_CLOCK_KHZ, align 8
  %14 = mul nsw i64 %13, 1000
  %15 = sdiv i64 %14, 65536
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = mul nsw i64 %16, 1000
  %18 = load i64, i64* %5, align 8
  %19 = sdiv i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp sgt i64 %20, 65535
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i64 65535, i64* %5, align 8
  br label %23

23:                                               ; preds = %22, %12
  %24 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %25 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %24, i32 37, i32 128, i32 128)
  %26 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = ashr i64 %27, 8
  %29 = call i32 @stv0297_writereg(%struct.stv0297_state* %26, i32 33, i64 %28)
  %30 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @stv0297_writereg(%struct.stv0297_state* %30, i32 32, i64 %31)
  ret void
}

declare dso_local i32 @stv0297_writereg_mask(%struct.stv0297_state*, i32, i32, i32) #1

declare dso_local i32 @stv0297_writereg(%struct.stv0297_state*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
