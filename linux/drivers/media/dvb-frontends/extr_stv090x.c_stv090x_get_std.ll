; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@DMDSTATE = common dso_local global i32 0, align 4
@HEADER_MODE_FIELD = common dso_local global i32 0, align 4
@STV090x_DVBS2 = common dso_local global i32 0, align 4
@FECM = common dso_local global i32 0, align 4
@DSS_DVB_FIELD = common dso_local global i32 0, align 4
@STV090x_DSS = common dso_local global i32 0, align 4
@STV090x_DVBS1 = common dso_local global i32 0, align 4
@STV090x_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_get_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_std(%struct.stv090x_state* %0) #0 {
  %2 = alloca %struct.stv090x_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %2, align 8
  %5 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %6 = load i32, i32* @DMDSTATE, align 4
  %7 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @HEADER_MODE_FIELD, align 4
  %10 = call i32 @STV090x_GETFIELD_Px(i32 %8, i32 %9)
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @STV090x_DVBS2, align 4
  store i32 %13, i32* %4, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @HEADER_MODE_FIELD, align 4
  %17 = call i32 @STV090x_GETFIELD_Px(i32 %15, i32 %16)
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %21 = load i32, i32* @FECM, align 4
  %22 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @DSS_DVB_FIELD, align 4
  %25 = call i32 @STV090x_GETFIELD_Px(i32 %23, i32 %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @STV090x_DSS, align 4
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @STV090x_DVBS1, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %34

32:                                               ; preds = %14
  %33 = load i32, i32* @STV090x_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %31
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
