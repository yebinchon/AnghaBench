; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_read_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.or51211_state* }
%struct.or51211_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"error writing snr reg\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"read_status read error\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"noise = 0x%02x, snr = %d.%02d dB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @or51211_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @or51211_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.or51211_state*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.or51211_state*, %struct.or51211_state** %10, align 8
  store %struct.or51211_state* %11, %struct.or51211_state** %6, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 4, i32* %12, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 4, i32* %14, align 4
  %15 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %16 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %17 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %22 = call i64 @i2c_writebytes(%struct.or51211_state* %15, i32 %20, i32* %21, i32 3)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %63

26:                                               ; preds = %2
  %27 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %28 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %29 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %34 = call i64 @i2c_readbytes(%struct.or51211_state* %27, i32 %32, i32* %33, i32 2)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %63

38:                                               ; preds = %26
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @calculate_snr(i32 %40, i32 89599047)
  %42 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %43 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %45 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 16
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %52 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 24
  %55 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %56 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 65535
  %60 = mul nsw i32 %59, 100
  %61 = ashr i32 %60, 16
  %62 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %54, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %38, %36, %24
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @i2c_writebytes(%struct.or51211_state*, i32, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @i2c_readbytes(%struct.or51211_state*, i32, i32*, i32) #1

declare dso_local i32 @calculate_snr(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
