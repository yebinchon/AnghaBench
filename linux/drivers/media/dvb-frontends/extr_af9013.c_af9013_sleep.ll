; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9013_state* }
%struct.af9013_state = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9013_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.af9013_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.af9013_state*, %struct.af9013_state** %9, align 8
  store %struct.af9013_state* %10, %struct.af9013_state** %4, align 8
  %11 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %12 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %11, i32 0, i32 1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %18 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @regmap_update_bits(i32 %19, i32 55088, i32 1, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %69

24:                                               ; preds = %1
  %25 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %26 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regmap_update_bits(i32 %27, i32 54295, i32 16, i32 16)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %69

32:                                               ; preds = %24
  %33 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %34 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @regmap_write(i32 %35, i32 44799, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %69

40:                                               ; preds = %32
  %41 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %42 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = lshr i32 %45, 1
  %47 = and i32 %46, 1
  %48 = call i32 @regmap_read_poll_timeout(i32 %43, i32 54295, i32 %44, i32 %47, i32 5000, i32 1000000)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %69

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = lshr i32 %53, 1
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %69

60:                                               ; preds = %52
  %61 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %62 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @regmap_update_bits(i32 %63, i32 55098, i32 8, i32 8)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %75

69:                                               ; preds = %67, %57, %51, %39, %31, %23
  %70 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %68
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
