; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0297_state = type { i32 }

@STV0297_CLOCK_KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0297_state*, i64)* @stv0297_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0297_set_symbolrate(%struct.stv0297_state* %0, i64 %1) #0 {
  %3 = alloca %struct.stv0297_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.stv0297_state* %0, %struct.stv0297_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = mul nsw i64 131072, %6
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @STV0297_CLOCK_KHZ, align 4
  %10 = sdiv i32 %9, 4
  %11 = sext i32 %10 to i64
  %12 = sdiv i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = mul nsw i64 %13, 8192
  store i64 %14, i64* %5, align 8
  %15 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, 255
  %18 = trunc i64 %17 to i8
  %19 = call i32 @stv0297_writereg(%struct.stv0297_state* %15, i32 85, i8 zeroext %18)
  %20 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = ashr i64 %21, 8
  %23 = trunc i64 %22 to i8
  %24 = call i32 @stv0297_writereg(%struct.stv0297_state* %20, i32 86, i8 zeroext %23)
  %25 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = ashr i64 %26, 16
  %28 = trunc i64 %27 to i8
  %29 = call i32 @stv0297_writereg(%struct.stv0297_state* %25, i32 87, i8 zeroext %28)
  %30 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = ashr i64 %31, 24
  %33 = trunc i64 %32 to i8
  %34 = call i32 @stv0297_writereg(%struct.stv0297_state* %30, i32 88, i8 zeroext %33)
  ret void
}

declare dso_local i32 @stv0297_writereg(%struct.stv0297_state*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
