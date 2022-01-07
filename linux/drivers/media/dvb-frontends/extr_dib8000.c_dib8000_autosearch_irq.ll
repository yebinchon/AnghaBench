; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_autosearch_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_autosearch_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, i64 }

@AS_SEARCHING_FFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"dib8000_autosearch_irq: max correlation result available\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"dib8000_autosearch_irq failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"dib8000_autosearch_irq succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_autosearch_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_autosearch_irq(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dib8000_state*, %struct.dib8000_state** %7, align 8
  store %struct.dib8000_state* %8, %struct.dib8000_state** %4, align 8
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %10 = call i32 @dib8000_read_word(%struct.dib8000_state* %9, i32 1284)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %12 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 32770
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %17 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AS_SEARCHING_FFT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %2, align 4
  br label %42

27:                                               ; preds = %21
  br label %41

28:                                               ; preds = %15, %1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %42

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %42

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %27
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38, %32, %25
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
