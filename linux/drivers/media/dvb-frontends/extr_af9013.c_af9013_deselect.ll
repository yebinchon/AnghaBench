; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_deselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_deselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.af9013_state = type { i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AF9013_TS_MODE_USB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @af9013_deselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_deselect(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_mux_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.af9013_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %10 = call %struct.af9013_state* @i2c_mux_priv(%struct.i2c_mux_core* %9)
  store %struct.af9013_state* %10, %struct.af9013_state** %6, align 8
  %11 = load %struct.af9013_state*, %struct.af9013_state** %6, align 8
  %12 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.af9013_state*, %struct.af9013_state** %6, align 8
  %18 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF9013_TS_MODE_USB, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.af9013_state*, %struct.af9013_state** %6, align 8
  %24 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @regmap_update_bits(i32 %25, i32 119831, i32 8, i32 0)
  store i32 %26, i32* %8, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.af9013_state*, %struct.af9013_state** %6, align 8
  %29 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @regmap_update_bits(i32 %30, i32 120327, i32 4, i32 0)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %37

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %43

37:                                               ; preds = %35
  %38 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %36
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.af9013_state* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
