; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb6100.c_stb6100_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb6100.c_stb6100_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb6100_state* }
%struct.stb6100_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set bandwidth to %u Hz\00", align 1
@STB6100_FCCK = common dso_local global i32 0, align 4
@STB6100_FCCK_FCCK = common dso_local global i32 0, align 4
@STB6100_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stb6100_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_set_bandwidth(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stb6100_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stb6100_state*, %struct.stb6100_state** %10, align 8
  store %struct.stb6100_state* %11, %struct.stb6100_state** %8, align 8
  %12 = load i32, i32* @verbose, align 4
  %13 = load i32, i32* @FE_DEBUG, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dprintk(i32 %12, i32 %13, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 36000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 31, i32* %6, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 5000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 500000
  %28 = sdiv i32 %27, 1000000
  %29 = sub nsw i32 %28, 5
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %24
  br label %31

31:                                               ; preds = %30, %20
  %32 = load %struct.stb6100_state*, %struct.stb6100_state** %8, align 8
  %33 = load i32, i32* @STB6100_FCCK, align 4
  %34 = load i32, i32* @STB6100_FCCK_FCCK, align 4
  %35 = or i32 13, %34
  %36 = call i32 @stb6100_write_reg(%struct.stb6100_state* %32, i32 %33, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %31
  %42 = load %struct.stb6100_state*, %struct.stb6100_state** %8, align 8
  %43 = load i32, i32* @STB6100_F, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 192, %44
  %46 = call i32 @stb6100_write_reg(%struct.stb6100_state* %42, i32 %43, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %41
  %52 = call i32 @msleep(i32 5)
  %53 = load %struct.stb6100_state*, %struct.stb6100_state** %8, align 8
  %54 = load i32, i32* @STB6100_FCCK, align 4
  %55 = call i32 @stb6100_write_reg(%struct.stb6100_state* %53, i32 %54, i32 13)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %51
  %61 = call i32 @msleep(i32 10)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58, %49, %39
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @stb6100_write_reg(%struct.stb6100_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
