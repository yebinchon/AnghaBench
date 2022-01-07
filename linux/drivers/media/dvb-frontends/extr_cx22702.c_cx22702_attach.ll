; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22702.c_cx22702_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22702.c_cx22702_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx22702_state*, i32 }
%struct.cx22702_state = type { %struct.dvb_frontend, %struct.i2c_adapter*, %struct.cx22702_config* }
%struct.cx22702_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cx22702_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cx22702_attach(%struct.cx22702_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.cx22702_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.cx22702_state*, align 8
  store %struct.cx22702_config* %0, %struct.cx22702_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.cx22702_state* null, %struct.cx22702_state** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cx22702_state* @kzalloc(i32 32, i32 %7)
  store %struct.cx22702_state* %8, %struct.cx22702_state** %6, align 8
  %9 = load %struct.cx22702_state*, %struct.cx22702_state** %6, align 8
  %10 = icmp eq %struct.cx22702_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.cx22702_config*, %struct.cx22702_config** %4, align 8
  %14 = load %struct.cx22702_state*, %struct.cx22702_state** %6, align 8
  %15 = getelementptr inbounds %struct.cx22702_state, %struct.cx22702_state* %14, i32 0, i32 2
  store %struct.cx22702_config* %13, %struct.cx22702_config** %15, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = load %struct.cx22702_state*, %struct.cx22702_state** %6, align 8
  %18 = getelementptr inbounds %struct.cx22702_state, %struct.cx22702_state* %17, i32 0, i32 1
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %18, align 8
  %19 = load %struct.cx22702_state*, %struct.cx22702_state** %6, align 8
  %20 = call i32 @cx22702_readreg(%struct.cx22702_state* %19, i32 31)
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %34

23:                                               ; preds = %12
  %24 = load %struct.cx22702_state*, %struct.cx22702_state** %6, align 8
  %25 = getelementptr inbounds %struct.cx22702_state, %struct.cx22702_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 1
  %27 = call i32 @memcpy(i32* %26, i32* @cx22702_ops, i32 4)
  %28 = load %struct.cx22702_state*, %struct.cx22702_state** %6, align 8
  %29 = load %struct.cx22702_state*, %struct.cx22702_state** %6, align 8
  %30 = getelementptr inbounds %struct.cx22702_state, %struct.cx22702_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %30, i32 0, i32 0
  store %struct.cx22702_state* %28, %struct.cx22702_state** %31, align 8
  %32 = load %struct.cx22702_state*, %struct.cx22702_state** %6, align 8
  %33 = getelementptr inbounds %struct.cx22702_state, %struct.cx22702_state* %32, i32 0, i32 0
  store %struct.dvb_frontend* %33, %struct.dvb_frontend** %3, align 8
  br label %37

34:                                               ; preds = %22, %11
  %35 = load %struct.cx22702_state*, %struct.cx22702_state** %6, align 8
  %36 = call i32 @kfree(%struct.cx22702_state* %35)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %37

37:                                               ; preds = %34, %23
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %38
}

declare dso_local %struct.cx22702_state* @kzalloc(i32, i32) #1

declare dso_local i32 @cx22702_readreg(%struct.cx22702_state*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.cx22702_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
