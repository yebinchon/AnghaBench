; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_pls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_pls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Set Gold PLS code %d\00", align 1
@PLROOT0 = common dso_local global i32 0, align 4
@PLROOT1 = common dso_local global i32 0, align 4
@PLROOT2 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_set_pls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_set_pls(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @FE_DEBUG, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %6, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %10 = load i32, i32* @PLROOT0, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 255
  %13 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %9, i32 %10, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %18 = load i32, i32* @PLROOT1, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %17, i32 %18, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %35

25:                                               ; preds = %16
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %27 = load i32, i32* @PLROOT2, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 16
  %30 = or i32 4, %29
  %31 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %26, i32 %27, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %38

35:                                               ; preds = %33, %24, %15
  %36 = load i32, i32* @FE_ERROR, align 4
  %37 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %36, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
