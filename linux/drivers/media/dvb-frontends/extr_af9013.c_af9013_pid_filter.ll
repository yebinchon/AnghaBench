; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9013_state* }
%struct.af9013_state = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"index %d, pid %04x, onoff %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32)* @af9013_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_pid_filter(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.af9013_state*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.af9013_state*, %struct.af9013_state** %15, align 8
  store %struct.af9013_state* %16, %struct.af9013_state** %10, align 8
  %17 = load %struct.af9013_state*, %struct.af9013_state** %10, align 8
  %18 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %17, i32 0, i32 1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 8191
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %60

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 0
  %32 = and i32 %31, 255
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.af9013_state*, %struct.af9013_state** %10, align 8
  %39 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %42 = call i32 @regmap_bulk_write(i32 %40, i32 54533, i32* %41, i32 2)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %60

46:                                               ; preds = %29
  %47 = load %struct.af9013_state*, %struct.af9013_state** %10, align 8
  %48 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 5
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 0
  %54 = or i32 %51, %53
  %55 = call i32 @regmap_write(i32 %49, i32 54532, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %60

59:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %66

60:                                               ; preds = %58, %45, %28
  %61 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %59
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
