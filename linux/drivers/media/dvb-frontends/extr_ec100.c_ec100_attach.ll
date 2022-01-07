; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ec100.c_ec100_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ec100.c_ec100_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec100_config = type { i32 }
%struct.dvb_frontend = type { %struct.ec100_state*, i32 }
%struct.ec100_state = type { %struct.dvb_frontend, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ec100_ops = common dso_local global %struct.ec100_config zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @ec100_attach(%struct.ec100_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.ec100_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ec100_state*, align 8
  %8 = alloca i32, align 4
  store %struct.ec100_config* %0, %struct.ec100_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.ec100_state* null, %struct.ec100_state** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ec100_state* @kzalloc(i32 32, i32 %9)
  store %struct.ec100_state* %10, %struct.ec100_state** %7, align 8
  %11 = load %struct.ec100_state*, %struct.ec100_state** %7, align 8
  %12 = icmp eq %struct.ec100_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = load %struct.ec100_state*, %struct.ec100_state** %7, align 8
  %17 = getelementptr inbounds %struct.ec100_state, %struct.ec100_state* %16, i32 0, i32 2
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %17, align 8
  %18 = load %struct.ec100_state*, %struct.ec100_state** %7, align 8
  %19 = getelementptr inbounds %struct.ec100_state, %struct.ec100_state* %18, i32 0, i32 1
  %20 = load %struct.ec100_config*, %struct.ec100_config** %4, align 8
  %21 = call i32 @memcpy(i32* %19, %struct.ec100_config* %20, i32 4)
  %22 = load %struct.ec100_state*, %struct.ec100_state** %7, align 8
  %23 = call i32 @ec100_read_reg(%struct.ec100_state* %22, i32 51, i32* %8)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 11
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %14
  br label %41

30:                                               ; preds = %26
  %31 = load %struct.ec100_state*, %struct.ec100_state** %7, align 8
  %32 = getelementptr inbounds %struct.ec100_state, %struct.ec100_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 1
  %34 = call i32 @memcpy(i32* %33, %struct.ec100_config* @ec100_ops, i32 4)
  %35 = load %struct.ec100_state*, %struct.ec100_state** %7, align 8
  %36 = load %struct.ec100_state*, %struct.ec100_state** %7, align 8
  %37 = getelementptr inbounds %struct.ec100_state, %struct.ec100_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %37, i32 0, i32 0
  store %struct.ec100_state* %35, %struct.ec100_state** %38, align 8
  %39 = load %struct.ec100_state*, %struct.ec100_state** %7, align 8
  %40 = getelementptr inbounds %struct.ec100_state, %struct.ec100_state* %39, i32 0, i32 0
  store %struct.dvb_frontend* %40, %struct.dvb_frontend** %3, align 8
  br label %44

41:                                               ; preds = %29, %13
  %42 = load %struct.ec100_state*, %struct.ec100_state** %7, align 8
  %43 = call i32 @kfree(%struct.ec100_state* %42)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %44

44:                                               ; preds = %41, %30
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %45
}

declare dso_local %struct.ec100_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ec100_config*, i32) #1

declare dso_local i32 @ec100_read_reg(%struct.ec100_state*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.ec100_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
