; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88rs2000_state*, i32 }
%struct.m88rs2000_state = type { %struct.dvb_frontend, i64, i64, i64, %struct.i2c_adapter*, %struct.m88rs2000_config* }
%struct.m88rs2000_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@m88rs2000_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @m88rs2000_attach(%struct.m88rs2000_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.m88rs2000_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.m88rs2000_state*, align 8
  store %struct.m88rs2000_config* %0, %struct.m88rs2000_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.m88rs2000_state* null, %struct.m88rs2000_state** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.m88rs2000_state* @kzalloc(i32 56, i32 %7)
  store %struct.m88rs2000_state* %8, %struct.m88rs2000_state** %6, align 8
  %9 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %10 = icmp eq %struct.m88rs2000_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.m88rs2000_config*, %struct.m88rs2000_config** %4, align 8
  %14 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %15 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %14, i32 0, i32 5
  store %struct.m88rs2000_config* %13, %struct.m88rs2000_config** %15, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %18 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %17, i32 0, i32 4
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %18, align 8
  %19 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %20 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %22 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %24 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %26 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 1
  %28 = call i32 @memcpy(i32* %27, i32* @m88rs2000_ops, i32 4)
  %29 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %30 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %31 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  store %struct.m88rs2000_state* %29, %struct.m88rs2000_state** %32, align 8
  %33 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %34 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %33, i32 0, i32 0
  store %struct.dvb_frontend* %34, %struct.dvb_frontend** %3, align 8
  br label %38

35:                                               ; preds = %11
  %36 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %37 = call i32 @kfree(%struct.m88rs2000_state* %36)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %38

38:                                               ; preds = %35, %12
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %39
}

declare dso_local %struct.m88rs2000_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.m88rs2000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
