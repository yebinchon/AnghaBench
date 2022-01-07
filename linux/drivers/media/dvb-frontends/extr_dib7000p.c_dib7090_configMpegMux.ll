; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_configMpegMux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_configMpegMux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Enable Mpeg mux\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000p_state*, i32, i32, i32)* @dib7090_configMpegMux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7090_configMpegMux(%struct.dib7000p_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dib7000p_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %11 = call i32 @dib7090_enMpegMux(%struct.dib7000p_state* %10, i32 0)
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %16 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %14, %4
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 31
  %24 = shl i32 %23, 2
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 1
  %27 = shl i32 %26, 1
  %28 = or i32 %24, %27
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 1
  %31 = or i32 %28, %30
  %32 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %21, i32 1287, i32 %31)
  %33 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %34 = call i32 @dib7090_enMpegMux(%struct.dib7000p_state* %33, i32 1)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib7090_enMpegMux(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
