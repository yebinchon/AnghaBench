; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.sp887x_state*, i32 }
%struct.sp887x_state = type { %struct.dvb_frontend, i64, %struct.i2c_adapter*, %struct.sp887x_config* }
%struct.sp887x_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sp887x_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @sp887x_attach(%struct.sp887x_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.sp887x_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.sp887x_state*, align 8
  store %struct.sp887x_config* %0, %struct.sp887x_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.sp887x_state* null, %struct.sp887x_state** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.sp887x_state* @kzalloc(i32 40, i32 %7)
  store %struct.sp887x_state* %8, %struct.sp887x_state** %6, align 8
  %9 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %10 = icmp eq %struct.sp887x_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.sp887x_config*, %struct.sp887x_config** %4, align 8
  %14 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %15 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %14, i32 0, i32 3
  store %struct.sp887x_config* %13, %struct.sp887x_config** %15, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %18 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %17, i32 0, i32 2
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %18, align 8
  %19 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %20 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %22 = call i64 @sp887x_readreg(%struct.sp887x_state* %21, i32 512)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %36

25:                                               ; preds = %12
  %26 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %27 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 1
  %29 = call i32 @memcpy(i32* %28, i32* @sp887x_ops, i32 4)
  %30 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %31 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %32 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  store %struct.sp887x_state* %30, %struct.sp887x_state** %33, align 8
  %34 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %35 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %34, i32 0, i32 0
  store %struct.dvb_frontend* %35, %struct.dvb_frontend** %3, align 8
  br label %39

36:                                               ; preds = %24, %11
  %37 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %38 = call i32 @kfree(%struct.sp887x_state* %37)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %40
}

declare dso_local %struct.sp887x_state* @kzalloc(i32, i32) #1

declare dso_local i64 @sp887x_readreg(%struct.sp887x_state*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.sp887x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
