; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_sweeprate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_sweeprate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0297_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0297_state*, i16, i64)* @stv0297_set_sweeprate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0297_set_sweeprate(%struct.stv0297_state* %0, i16 signext %1, i64 %2) #0 {
  %4 = alloca %struct.stv0297_state*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.stv0297_state* %0, %struct.stv0297_state** %4, align 8
  store i16 %1, i16* %5, align 2
  store i64 %2, i64* %6, align 8
  %8 = load i16, i16* %5, align 2
  %9 = sext i16 %8 to i64
  %10 = mul nsw i64 %9, 262144
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = sdiv i64 %12, %11
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = mul nsw i64 %14, 1024
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %19, 500000
  store i64 %20, i64* %7, align 8
  br label %24

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = sub nsw i64 %22, 500000
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* %7, align 8
  %26 = sdiv i64 %25, 1000000
  store i64 %26, i64* %7, align 8
  %27 = load %struct.stv0297_state*, %struct.stv0297_state** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %28, 255
  %30 = call i32 @stv0297_writereg(%struct.stv0297_state* %27, i32 96, i64 %29)
  %31 = load %struct.stv0297_state*, %struct.stv0297_state** %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = ashr i64 %32, 4
  %34 = and i64 %33, 240
  %35 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %31, i32 105, i32 240, i64 %34)
  ret void
}

declare dso_local i32 @stv0297_writereg(%struct.stv0297_state*, i32, i64) #1

declare dso_local i32 @stv0297_writereg_mask(%struct.stv0297_state*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
