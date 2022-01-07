; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_carrieroffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_carrieroffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0297_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0297_state*, i64)* @stv0297_set_carrieroffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0297_set_carrieroffset(%struct.stv0297_state* %0, i64 %1) #0 {
  %3 = alloca %struct.stv0297_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.stv0297_state* %0, %struct.stv0297_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = mul nsw i64 %6, 26844
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = add nsw i64 %11, 268435456
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i64, i64* %5, align 8
  %15 = and i64 %14, 268435455
  store i64 %15, i64* %5, align 8
  %16 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, 255
  %19 = trunc i64 %18 to i8
  %20 = call i32 @stv0297_writereg(%struct.stv0297_state* %16, i32 102, i8 zeroext %19)
  %21 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = ashr i64 %22, 8
  %24 = trunc i64 %23 to i8
  %25 = call i32 @stv0297_writereg(%struct.stv0297_state* %21, i32 103, i8 zeroext %24)
  %26 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = ashr i64 %27, 16
  %29 = trunc i64 %28 to i8
  %30 = call i32 @stv0297_writereg(%struct.stv0297_state* %26, i32 104, i8 zeroext %29)
  %31 = load %struct.stv0297_state*, %struct.stv0297_state** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = ashr i64 %32, 24
  %34 = and i64 %33, 15
  %35 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %31, i32 105, i32 15, i64 %34)
  ret void
}

declare dso_local i32 @stv0297_writereg(%struct.stv0297_state*, i32, i8 zeroext) #1

declare dso_local i32 @stv0297_writereg_mask(%struct.stv0297_state*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
