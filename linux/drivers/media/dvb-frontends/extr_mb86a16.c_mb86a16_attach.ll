; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.mb86a16_state* }
%struct.TYPE_2__ = type { i32 }
%struct.mb86a16_state = type { %struct.dvb_frontend, %struct.mb86a16_config*, %struct.i2c_adapter* }
%struct.mb86a16_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mb86a16_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @mb86a16_attach(%struct.mb86a16_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.mb86a16_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mb86a16_state*, align 8
  store %struct.mb86a16_config* %0, %struct.mb86a16_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.mb86a16_state* null, %struct.mb86a16_state** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mb86a16_state* @kmalloc(i32 32, i32 %8)
  store %struct.mb86a16_state* %9, %struct.mb86a16_state** %7, align 8
  %10 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %11 = icmp eq %struct.mb86a16_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.mb86a16_config*, %struct.mb86a16_config** %4, align 8
  %15 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %16 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %15, i32 0, i32 1
  store %struct.mb86a16_config* %14, %struct.mb86a16_config** %16, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %18 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %19 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %18, i32 0, i32 2
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %19, align 8
  %20 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %21 = call i32 @mb86a16_read(%struct.mb86a16_state* %20, i32 127, i32* %6)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 254
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %45

25:                                               ; preds = %13
  %26 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %27 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = call i32 @memcpy(%struct.TYPE_2__* %28, i32* @mb86a16_ops, i32 4)
  %30 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %31 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %32 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 1
  store %struct.mb86a16_state* %30, %struct.mb86a16_state** %33, align 8
  %34 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %35 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %34, i32 0, i32 1
  %36 = load %struct.mb86a16_config*, %struct.mb86a16_config** %35, align 8
  %37 = getelementptr inbounds %struct.mb86a16_config, %struct.mb86a16_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %40 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %44 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %43, i32 0, i32 0
  store %struct.dvb_frontend* %44, %struct.dvb_frontend** %3, align 8
  br label %48

45:                                               ; preds = %24, %12
  %46 = load %struct.mb86a16_state*, %struct.mb86a16_state** %7, align 8
  %47 = call i32 @kfree(%struct.mb86a16_state* %46)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %48

48:                                               ; preds = %45, %25
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %49
}

declare dso_local %struct.mb86a16_state* @kmalloc(i32, i32) #1

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mb86a16_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
