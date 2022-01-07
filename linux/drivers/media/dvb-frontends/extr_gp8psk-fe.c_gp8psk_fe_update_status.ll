; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_gp8psk-fe.c_gp8psk_fe_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_gp8psk-fe.c_gp8psk_fe_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp8psk_fe_state = type { i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32*, i32)* }

@jiffies = common dso_local global i64 0, align 8
@GET_SIGNAL_LOCK = common dso_local global i32 0, align 4
@GET_SIGNAL_STRENGTH = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp8psk_fe_state*)* @gp8psk_fe_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_fe_update_status(%struct.gp8psk_fe_state* %0) #0 {
  %2 = alloca %struct.gp8psk_fe_state*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.gp8psk_fe_state* %0, %struct.gp8psk_fe_state** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %6 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @time_after(i64 %4, i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %12 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32, i32*, i32)** %14, align 8
  %16 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %17 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GET_SIGNAL_LOCK, align 4
  %20 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %21 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %20, i32 0, i32 0
  %22 = call i32 %15(i32 %18, i32 %19, i32 0, i32 0, i32* %21, i32 1)
  %23 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %24 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32, i32*, i32)** %26, align 8
  %28 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %29 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GET_SIGNAL_STRENGTH, align 4
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %33 = call i32 %27(i32 %30, i32 %31, i32 0, i32 0, i32* %32, i32 6)
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = or i32 %36, %38
  %40 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %41 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* @jiffies, align 8
  %43 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %44 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %47, 1000
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %42, %49
  %51 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %52 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %10, %1
  ret i32 0
}

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
