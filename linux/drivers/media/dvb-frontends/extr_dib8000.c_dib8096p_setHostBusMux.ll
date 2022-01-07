; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_setHostBusMux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_setHostBusMux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"SET DEM OUT OLD INTERF ON HOST BUS\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"SET DIBSTREAM TX ON HOST BUS\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SET MPEG MUX ON HOST BUS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, i32)* @dib8096p_setHostBusMux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8096p_setHostBusMux(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %7 = call i32 @dib8000_read_word(%struct.dib8000_state* %6, i32 1288)
  %8 = and i32 %7, -113
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %26 [
    i32 130, label %10
    i32 129, label %16
    i32 128, label %22
  ]

10:                                               ; preds = %2
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %13 = call i32 @dib8096p_enMpegMux(%struct.dib8000_state* %12, i32 0)
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, 64
  store i32 %15, i32* %5, align 4
  br label %27

16:                                               ; preds = %2
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %19 = call i32 @dib8096p_enMpegMux(%struct.dib8000_state* %18, i32 0)
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 32
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %2
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 16
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %22, %16, %10
  %28 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dib8000_write_word(%struct.dib8000_state* %28, i32 1288, i32 %29)
  ret void
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib8096p_enMpegMux(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
