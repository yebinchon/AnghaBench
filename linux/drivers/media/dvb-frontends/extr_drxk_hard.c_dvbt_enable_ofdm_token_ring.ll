; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_dvbt_enable_ofdm_token_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_dvbt_enable_ofdm_token_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxk_state = type { i32 }

@SIO_OFDM_SH_OFDM_RING_ENABLE_ON = common dso_local global i64 0, align 8
@SIO_OFDM_SH_OFDM_RING_STATUS_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SIO_OFDM_SH_OFDM_RING_ENABLE_OFF = common dso_local global i64 0, align 8
@SIO_OFDM_SH_OFDM_RING_STATUS_DOWN = common dso_local global i64 0, align 8
@SIO_OFDM_SH_OFDM_RING_STATUS__A = common dso_local global i32 0, align 4
@SIO_OFDM_SH_OFDM_RING_ENABLE__A = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DRXK_OFDM_TR_SHUTDOWN_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"SIO not ready\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxk_state*, i32)* @dvbt_enable_ofdm_token_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbt_enable_ofdm_token_ring(%struct.drxk_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drxk_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.drxk_state* %0, %struct.drxk_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %11 = load i64, i64* @SIO_OFDM_SH_OFDM_RING_ENABLE_ON, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* @SIO_OFDM_SH_OFDM_RING_STATUS_ENABLED, align 8
  store i64 %12, i64* %9, align 8
  %13 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @SIO_OFDM_SH_OFDM_RING_ENABLE_OFF, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* @SIO_OFDM_SH_OFDM_RING_STATUS_DOWN, align 8
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %21 = load i32, i32* @SIO_OFDM_SH_OFDM_RING_STATUS__A, align 4
  %22 = call i32 @read16(%struct.drxk_state* %20, i32 %21, i64* %7)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %68

31:                                               ; preds = %25, %19
  %32 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %33 = load i32, i32* @SIO_OFDM_SH_OFDM_RING_ENABLE__A, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @write16(%struct.drxk_state* %32, i32 %33, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i32, i32* @DRXK_OFDM_TR_SHUTDOWN_TIMEOUT, align 4
  %38 = call i64 @msecs_to_jiffies(i32 %37)
  %39 = add i64 %36, %38
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %57, %31
  %41 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %42 = load i32, i32* @SIO_OFDM_SH_OFDM_RING_STATUS__A, align 4
  %43 = call i32 @read16(%struct.drxk_state* %41, i32 %42, i64* %7)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46, %40
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @time_is_after_jiffies(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  br label %58

55:                                               ; preds = %50
  %56 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %57

57:                                               ; preds = %55
  br i1 true, label %40, label %58

58:                                               ; preds = %57, %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %62, %29
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @read16(%struct.drxk_state*, i32, i64*) #1

declare dso_local i32 @write16(%struct.drxk_state*, i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
