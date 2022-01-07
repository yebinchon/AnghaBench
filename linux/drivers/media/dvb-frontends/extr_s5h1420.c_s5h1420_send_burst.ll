; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1420.c_s5h1420_send_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1420.c_s5h1420_send_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.s5h1420_state* }
%struct.s5h1420_state = type { i32 }

@SEC_MINI_B = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @s5h1420_send_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1420_send_burst(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5h1420_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.s5h1420_state*, %struct.s5h1420_state** %10, align 8
  store %struct.s5h1420_state* %11, %struct.s5h1420_state** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %13 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %12, i32 59)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %15 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %16 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %15, i32 59)
  %17 = and i32 %16, 112
  %18 = or i32 %17, 1
  %19 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %14, i32 59, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SEC_MINI_B, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %25 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %26 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %25, i32 59)
  %27 = or i32 %26, 4
  %28 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %24, i32 59, i32 %27)
  br label %29

29:                                               ; preds = %23, %2
  %30 = call i32 @msleep(i32 15)
  %31 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %32 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %33 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %32, i32 59)
  %34 = or i32 %33, 8
  %35 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %31, i32 59, i32 %34)
  %36 = load i32, i32* @jiffies, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 100, %37
  %39 = sdiv i32 %38, 1000
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %53, %29
  %43 = load i32, i32* @jiffies, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @time_before(i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %49 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %48, i32 59)
  %50 = and i32 %49, 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %55

53:                                               ; preds = %47
  %54 = call i32 @msleep(i32 5)
  br label %42

55:                                               ; preds = %52, %42
  %56 = load i32, i32* @jiffies, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @time_after(i32 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %64, i32 59, i32 %65)
  %67 = call i32 @msleep(i32 15)
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @s5h1420_readreg(%struct.s5h1420_state*, i32) #1

declare dso_local i32 @s5h1420_writereg(%struct.s5h1420_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
