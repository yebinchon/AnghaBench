; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24110_state*, i32 }
%struct.cx24110_state = type { %struct.dvb_frontend, i64, i64, i64, %struct.i2c_adapter*, %struct.cx24110_config* }
%struct.cx24110_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cx24110_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cx24110_attach(%struct.cx24110_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.cx24110_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.cx24110_state*, align 8
  %7 = alloca i32, align 4
  store %struct.cx24110_config* %0, %struct.cx24110_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.cx24110_state* null, %struct.cx24110_state** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cx24110_state* @kzalloc(i32 56, i32 %8)
  store %struct.cx24110_state* %9, %struct.cx24110_state** %6, align 8
  %10 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %11 = icmp eq %struct.cx24110_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.cx24110_config*, %struct.cx24110_config** %4, align 8
  %15 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %16 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %15, i32 0, i32 5
  store %struct.cx24110_config* %14, %struct.cx24110_config** %16, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %18 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %19 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %18, i32 0, i32 4
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %19, align 8
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %21 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %23 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %25 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %27 = call i32 @cx24110_readreg(%struct.cx24110_state* %26, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 90
  br i1 %29, label %30, label %34

30:                                               ; preds = %13
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 105
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %45

34:                                               ; preds = %30, %13
  %35 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %36 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 1
  %38 = call i32 @memcpy(i32* %37, i32* @cx24110_ops, i32 4)
  %39 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %40 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %41 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  store %struct.cx24110_state* %39, %struct.cx24110_state** %42, align 8
  %43 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %44 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %43, i32 0, i32 0
  store %struct.dvb_frontend* %44, %struct.dvb_frontend** %3, align 8
  br label %48

45:                                               ; preds = %33, %12
  %46 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %47 = call i32 @kfree(%struct.cx24110_state* %46)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %48

48:                                               ; preds = %45, %34
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %49
}

declare dso_local %struct.cx24110_state* @kzalloc(i32, i32) #1

declare dso_local i32 @cx24110_readreg(%struct.cx24110_state*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.cx24110_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
