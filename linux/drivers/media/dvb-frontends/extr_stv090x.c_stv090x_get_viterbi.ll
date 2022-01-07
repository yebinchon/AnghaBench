; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_viterbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_viterbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@VITCURPUN = common dso_local global i32 0, align 4
@VIT_CURPUN_FIELD = common dso_local global i32 0, align 4
@STV090x_PR12 = common dso_local global i32 0, align 4
@STV090x_PR23 = common dso_local global i32 0, align 4
@STV090x_PR34 = common dso_local global i32 0, align 4
@STV090x_PR56 = common dso_local global i32 0, align 4
@STV090x_PR67 = common dso_local global i32 0, align 4
@STV090x_PR78 = common dso_local global i32 0, align 4
@STV090x_PRERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_get_viterbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_viterbi(%struct.stv090x_state* %0) #0 {
  %2 = alloca %struct.stv090x_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %2, align 8
  %5 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %6 = load i32, i32* @VITCURPUN, align 4
  %7 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @VIT_CURPUN_FIELD, align 4
  %10 = call i32 @STV090x_GETFIELD_Px(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %36 [
    i32 13, label %12
    i32 18, label %16
    i32 21, label %20
    i32 24, label %24
    i32 25, label %28
    i32 26, label %32
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @STV090x_PR12, align 4
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %15 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @STV090x_PR23, align 4
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %19 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load i32, i32* @STV090x_PR34, align 4
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %23 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %40

24:                                               ; preds = %1
  %25 = load i32, i32* @STV090x_PR56, align 4
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %27 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %40

28:                                               ; preds = %1
  %29 = load i32, i32* @STV090x_PR67, align 4
  %30 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %31 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %40

32:                                               ; preds = %1
  %33 = load i32, i32* @STV090x_PR78, align 4
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %35 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @STV090x_PRERR, align 4
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %39 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %32, %28, %24, %20, %16, %12
  ret i32 0
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
