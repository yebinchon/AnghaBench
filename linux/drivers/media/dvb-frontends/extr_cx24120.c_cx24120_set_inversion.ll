; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_inversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_inversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24120_state = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*, i32)* @cx24120_set_inversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_set_inversion(%struct.cx24120_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24120_state*, align 8
  %5 = alloca i32, align 4
  store %struct.cx24120_state* %0, %struct.cx24120_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %7 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %25 [
    i32 129, label %13
    i32 128, label %17
    i32 130, label %21
  ]

13:                                               ; preds = %2
  %14 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %15 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %19 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 4, i32* %20, align 8
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %23 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 12, i32* %24, align 8
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %21, %17, %13
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %31 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
