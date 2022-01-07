; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_set_rf_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_set_rf_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0070_state* }
%struct.dib0070_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0070_set_rf_output(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib0070_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib0070_state*, %struct.dib0070_state** %8, align 8
  store %struct.dib0070_state* %9, %struct.dib0070_state** %5, align 8
  %10 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %11 = call i32 @dib0070_read_reg(%struct.dib0070_state* %10, i32 7)
  %12 = and i32 %11, 1042431
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 3, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 11
  %25 = or i32 %22, %24
  %26 = call i32 @dib0070_write_reg(%struct.dib0070_state* %21, i32 7, i32 %25)
  ret i32 %26
}

declare dso_local i32 @dib0070_read_reg(%struct.dib0070_state*, i32) #1

declare dso_local i32 @dib0070_write_reg(%struct.dib0070_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
