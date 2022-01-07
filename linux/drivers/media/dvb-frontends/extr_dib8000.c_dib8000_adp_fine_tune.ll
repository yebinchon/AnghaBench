; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_adp_fine_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_adp_fine_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@adp_Q64 = common dso_local global i32* null, align 8
@adp_Q16 = common dso_local global i32* null, align 8
@adp_Qdefault = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32)* @dib8000_adp_fine_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_adp_fine_tune(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %12
  ]

9:                                                ; preds = %2
  store i32 7, i32* %6, align 4
  %10 = load i32*, i32** @adp_Q64, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32* %11, i32** %7, align 8
  br label %18

12:                                               ; preds = %2
  store i32 7, i32* %6, align 4
  %13 = load i32*, i32** @adp_Q16, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32* %14, i32** %7, align 8
  br label %18

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %16 = load i32*, i32** @adp_Qdefault, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32* %17, i32** %7, align 8
  br label %18

18:                                               ; preds = %15, %12, %9
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 215, %24
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dib8000_write_word(%struct.dib8000_state* %23, i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
