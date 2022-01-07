; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb6100.c_stb6100_get_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb6100.c_stb6100_get_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb6100_state* }
%struct.stb6100_state = type { i32 }

@STB6100_F = common dso_local global i32 0, align 4
@STB6100_F_F = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bandwidth = %u Hz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb6100_get_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_get_bandwidth(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stb6100_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.stb6100_state*, %struct.stb6100_state** %11, align 8
  store %struct.stb6100_state* %12, %struct.stb6100_state** %9, align 8
  %13 = load %struct.stb6100_state*, %struct.stb6100_state** %9, align 8
  %14 = load i32, i32* @STB6100_F, align 4
  %15 = call i32 @stb6100_read_reg(%struct.stb6100_state* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @STB6100_F_F, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 5
  %26 = mul nsw i32 %25, 2000
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = load %struct.stb6100_state*, %struct.stb6100_state** %9, align 8
  %30 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @verbose, align 4
  %33 = load i32, i32* @FE_DEBUG, align 4
  %34 = load %struct.stb6100_state*, %struct.stb6100_state** %9, align 8
  %35 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dprintk(i32 %32, i32 %33, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %20, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @stb6100_read_reg(%struct.stb6100_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
