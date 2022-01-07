; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_setmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.or51211_state* }
%struct.or51211_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, {}* }

@run_buf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"error 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"error 2\0A\00", align 1
@cmd_buf = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"error 3\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"error 5\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"error 6\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"rec status %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @or51211_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @or51211_setmode(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.or51211_state*, align 8
  %7 = alloca [14 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.or51211_state*, %struct.or51211_state** %9, align 8
  store %struct.or51211_state* %10, %struct.or51211_state** %6, align 8
  %11 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %12 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = bitcast {}** %14 to i32 (%struct.dvb_frontend*, i32)**
  %16 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %15, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 %16(%struct.dvb_frontend* %17, i32 %18)
  %20 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %21 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %22 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** @run_buf, align 8
  %27 = call i64 @i2c_writebytes(%struct.or51211_state* %20, i32 %25, i32* %26, i32 2)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %93

31:                                               ; preds = %2
  %32 = call i32 @msleep(i32 10)
  %33 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %34 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %35 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** @run_buf, align 8
  %40 = call i64 @i2c_writebytes(%struct.or51211_state* %33, i32 %38, i32* %39, i32 2)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %93

44:                                               ; preds = %31
  %45 = call i32 @msleep(i32 10)
  %46 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %47 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %48 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** @cmd_buf, align 8
  %53 = call i64 @i2c_writebytes(%struct.or51211_state* %46, i32 %51, i32* %52, i32 3)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %93

57:                                               ; preds = %44
  %58 = getelementptr inbounds [14 x i32], [14 x i32]* %7, i64 0, i64 0
  store i32 4, i32* %58, align 16
  %59 = getelementptr inbounds [14 x i32], [14 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds [14 x i32], [14 x i32]* %7, i64 0, i64 2
  store i32 3, i32* %60, align 8
  %61 = getelementptr inbounds [14 x i32], [14 x i32]* %7, i64 0, i64 3
  store i32 0, i32* %61, align 4
  %62 = call i32 @msleep(i32 20)
  %63 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %64 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %65 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds [14 x i32], [14 x i32]* %7, i64 0, i64 0
  %70 = call i64 @i2c_writebytes(%struct.or51211_state* %63, i32 %68, i32* %69, i32 3)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %57
  %75 = call i32 @msleep(i32 3)
  %76 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %77 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %78 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds [14 x i32], [14 x i32]* %7, i64 0, i64 10
  %83 = call i64 @i2c_readbytes(%struct.or51211_state* %76, i32 %81, i32* %82, i32 2)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %93

87:                                               ; preds = %74
  %88 = getelementptr inbounds [14 x i32], [14 x i32]* %7, i64 0, i64 10
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds [14 x i32], [14 x i32]* %7, i64 0, i64 11
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %85, %55, %42, %29
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @i2c_writebytes(%struct.or51211_state*, i32, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @i2c_readbytes(%struct.or51211_state*, i32, i32*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
