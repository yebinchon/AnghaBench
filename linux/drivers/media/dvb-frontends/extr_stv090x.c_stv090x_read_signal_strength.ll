; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i32 }

@AGCIQIN1 = common dso_local global i32 0, align 4
@AGCIQ_VALUE_FIELD = common dso_local global i32 0, align 4
@AGCIQIN0 = common dso_local global i32 0, align 4
@stv090x_rf_tab = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64*)* @stv090x_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_read_signal_strength(%struct.dvb_frontend* %0, i64* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.stv090x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i64* %1, i64** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %12, align 8
  store %struct.stv090x_state* %13, %struct.stv090x_state** %5, align 8
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %15 = load i32, i32* @AGCIQIN1, align 4
  %16 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AGCIQ_VALUE_FIELD, align 4
  %19 = call i64 @STV090x_GETFIELD_Px(i32 %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %21 = load i32, i32* @AGCIQIN0, align 4
  %22 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @AGCIQ_VALUE_FIELD, align 4
  %25 = call i64 @STV090x_GETFIELD_Px(i32 %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @MAKEWORD16(i64 %26, i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_rf_tab, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_rf_tab, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %30)
  %32 = sub nsw i32 %31, 1
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @stv090x_table_lookup(%struct.TYPE_4__* %29, i32 %32, i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_rf_tab, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %55

42:                                               ; preds = %2
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_rf_tab, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_rf_tab, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %45)
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %43, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i64 -100, i64* %10, align 8
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i64, i64* %10, align 8
  %57 = add nsw i64 %56, 100
  %58 = mul nsw i64 %57, 65535
  %59 = sdiv i64 %58, 100
  %60 = load i64*, i64** %4, align 8
  store i64 %59, i64* %60, align 8
  ret i32 0
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i64 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i64 @MAKEWORD16(i64, i64) #1

declare dso_local i64 @stv090x_table_lookup(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
