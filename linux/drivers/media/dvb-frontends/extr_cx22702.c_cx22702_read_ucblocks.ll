; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22702.c_cx22702_read_ucblocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22702.c_cx22702_read_ucblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx22702_state* }
%struct.cx22702_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64*)* @cx22702_read_ucblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx22702_read_ucblocks(%struct.dvb_frontend* %0, i64* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.cx22702_state*, align 8
  %6 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.cx22702_state*, %struct.cx22702_state** %8, align 8
  store %struct.cx22702_state* %9, %struct.cx22702_state** %5, align 8
  %10 = load %struct.cx22702_state*, %struct.cx22702_state** %5, align 8
  %11 = call i64 @cx22702_readreg(%struct.cx22702_state* %10, i32 227)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.cx22702_state*, %struct.cx22702_state** %5, align 8
  %13 = getelementptr inbounds %struct.cx22702_state, %struct.cx22702_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.cx22702_state*, %struct.cx22702_state** %5, align 8
  %20 = getelementptr inbounds %struct.cx22702_state, %struct.cx22702_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load i64*, i64** %4, align 8
  store i64 %22, i64* %23, align 8
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.cx22702_state*, %struct.cx22702_state** %5, align 8
  %26 = getelementptr inbounds %struct.cx22702_state, %struct.cx22702_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64*, i64** %4, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.cx22702_state*, %struct.cx22702_state** %5, align 8
  %34 = getelementptr inbounds %struct.cx22702_state, %struct.cx22702_state* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  ret i32 0
}

declare dso_local i64 @cx22702_readreg(%struct.cx22702_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
