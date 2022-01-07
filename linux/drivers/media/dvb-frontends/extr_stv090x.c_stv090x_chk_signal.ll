; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_chk_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_chk_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CFR2 = common dso_local global i32 0, align 4
@CFR1 = common dso_local global i32 0, align 4
@AGC2I1 = common dso_local global i32 0, align 4
@AGC2I0 = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No Signal\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Found Signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_chk_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_chk_signal(%struct.stv090x_state* %0) #0 {
  %2 = alloca %struct.stv090x_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %2, align 8
  %7 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %8 = load i32, i32* @CFR2, align 4
  %9 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %7, i32 %8)
  %10 = shl i32 %9, 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %12 = load i32, i32* @CFR1, align 4
  %13 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @comp2(i32 %16, i32 16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %19 = load i32, i32* @AGC2I1, align 4
  %20 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %18, i32 %19)
  %21 = shl i32 %20, 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %23 = load i32, i32* @AGC2I0, align 4
  %24 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %28 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %29, 1000
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sdiv i32 %31, 10
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 65536, %35
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %5, align 4
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %39 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 1000
  %44 = load i32, i32* %5, align 4
  %45 = sdiv i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 16384
  br i1 %47, label %48, label %49

48:                                               ; preds = %1
  store i32 16384, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* %4, align 4
  %51 = icmp sgt i32 %50, 8192
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 2, %54
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 -2, %59
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57, %52, %49
  store i32 1, i32* %6, align 4
  %63 = load i32, i32* @FE_DEBUG, align 4
  %64 = call i32 @dprintk(i32 %63, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %68

65:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  %66 = load i32, i32* @FE_DEBUG, align 4
  %67 = call i32 @dprintk(i32 %66, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @comp2(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
