; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_ctrl_agc_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_ctrl_agc_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0070_state* }
%struct.dib0070_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"vga filter register is set to %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dib0070_ctrl_agc_filter(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dib0070_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dib0070_state*, %struct.dib0070_state** %7, align 8
  store %struct.dib0070_state* %8, %struct.dib0070_state** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %13 = call i32 @dib0070_write_reg(%struct.dib0070_state* %12, i32 27, i32 65280)
  %14 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %15 = call i32 @dib0070_write_reg(%struct.dib0070_state* %14, i32 26, i32 0)
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %18 = call i32 @dib0070_write_reg(%struct.dib0070_state* %17, i32 27, i32 16658)
  %19 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %20 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %16
  %26 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %27 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %28 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dib0070_write_reg(%struct.dib0070_state* %26, i32 26, i32 %31)
  %33 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %34 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %42

39:                                               ; preds = %16
  %40 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %41 = call i32 @dib0070_write_reg(%struct.dib0070_state* %40, i32 26, i32 9)
  br label %42

42:                                               ; preds = %39, %25
  br label %43

43:                                               ; preds = %42, %11
  ret void
}

declare dso_local i32 @dib0070_write_reg(%struct.dib0070_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
