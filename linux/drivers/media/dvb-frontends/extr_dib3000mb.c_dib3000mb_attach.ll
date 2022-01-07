; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000mb_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000mb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000_config = type { i32 }
%struct.dvb_frontend = type { %struct.dib3000_state*, i32 }
%struct.dib3000_state = type { %struct.dvb_frontend, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.dib_fe_xfer_ops = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DIB3000_REG_MANUFACTOR_ID = common dso_local global i32 0, align 4
@DIB3000_I2C_ID_DIBCOM = common dso_local global i64 0, align 8
@DIB3000_REG_DEVICE_ID = common dso_local global i32 0, align 4
@DIB3000MB_DEVICE_ID = common dso_local global i64 0, align 8
@dib3000mb_ops = common dso_local global %struct.dib3000_config zeroinitializer, align 4
@dib3000mb_pid_parse = common dso_local global i32 0, align 4
@dib3000mb_fifo_control = common dso_local global i32 0, align 4
@dib3000mb_pid_control = common dso_local global i32 0, align 4
@dib3000mb_tuner_pass_ctrl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @dib3000mb_attach(%struct.dib3000_config* %0, %struct.i2c_adapter* %1, %struct.dib_fe_xfer_ops* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dib3000_config*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.dib_fe_xfer_ops*, align 8
  %8 = alloca %struct.dib3000_state*, align 8
  store %struct.dib3000_config* %0, %struct.dib3000_config** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store %struct.dib_fe_xfer_ops* %2, %struct.dib_fe_xfer_ops** %7, align 8
  store %struct.dib3000_state* null, %struct.dib3000_state** %8, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dib3000_state* @kzalloc(i32 32, i32 %9)
  store %struct.dib3000_state* %10, %struct.dib3000_state** %8, align 8
  %11 = load %struct.dib3000_state*, %struct.dib3000_state** %8, align 8
  %12 = icmp eq %struct.dib3000_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %56

14:                                               ; preds = %3
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %16 = load %struct.dib3000_state*, %struct.dib3000_state** %8, align 8
  %17 = getelementptr inbounds %struct.dib3000_state, %struct.dib3000_state* %16, i32 0, i32 2
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %17, align 8
  %18 = load %struct.dib3000_state*, %struct.dib3000_state** %8, align 8
  %19 = getelementptr inbounds %struct.dib3000_state, %struct.dib3000_state* %18, i32 0, i32 1
  %20 = load %struct.dib3000_config*, %struct.dib3000_config** %5, align 8
  %21 = call i32 @memcpy(i32* %19, %struct.dib3000_config* %20, i32 4)
  %22 = load i32, i32* @DIB3000_REG_MANUFACTOR_ID, align 4
  %23 = call i64 @rd(i32 %22)
  %24 = load i64, i64* @DIB3000_I2C_ID_DIBCOM, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %56

27:                                               ; preds = %14
  %28 = load i32, i32* @DIB3000_REG_DEVICE_ID, align 4
  %29 = call i64 @rd(i32 %28)
  %30 = load i64, i64* @DIB3000MB_DEVICE_ID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %56

33:                                               ; preds = %27
  %34 = load %struct.dib3000_state*, %struct.dib3000_state** %8, align 8
  %35 = getelementptr inbounds %struct.dib3000_state, %struct.dib3000_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 1
  %37 = call i32 @memcpy(i32* %36, %struct.dib3000_config* @dib3000mb_ops, i32 4)
  %38 = load %struct.dib3000_state*, %struct.dib3000_state** %8, align 8
  %39 = load %struct.dib3000_state*, %struct.dib3000_state** %8, align 8
  %40 = getelementptr inbounds %struct.dib3000_state, %struct.dib3000_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 0
  store %struct.dib3000_state* %38, %struct.dib3000_state** %41, align 8
  %42 = load i32, i32* @dib3000mb_pid_parse, align 4
  %43 = load %struct.dib_fe_xfer_ops*, %struct.dib_fe_xfer_ops** %7, align 8
  %44 = getelementptr inbounds %struct.dib_fe_xfer_ops, %struct.dib_fe_xfer_ops* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @dib3000mb_fifo_control, align 4
  %46 = load %struct.dib_fe_xfer_ops*, %struct.dib_fe_xfer_ops** %7, align 8
  %47 = getelementptr inbounds %struct.dib_fe_xfer_ops, %struct.dib_fe_xfer_ops* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @dib3000mb_pid_control, align 4
  %49 = load %struct.dib_fe_xfer_ops*, %struct.dib_fe_xfer_ops** %7, align 8
  %50 = getelementptr inbounds %struct.dib_fe_xfer_ops, %struct.dib_fe_xfer_ops* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @dib3000mb_tuner_pass_ctrl, align 4
  %52 = load %struct.dib_fe_xfer_ops*, %struct.dib_fe_xfer_ops** %7, align 8
  %53 = getelementptr inbounds %struct.dib_fe_xfer_ops, %struct.dib_fe_xfer_ops* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dib3000_state*, %struct.dib3000_state** %8, align 8
  %55 = getelementptr inbounds %struct.dib3000_state, %struct.dib3000_state* %54, i32 0, i32 0
  store %struct.dvb_frontend* %55, %struct.dvb_frontend** %4, align 8
  br label %59

56:                                               ; preds = %32, %26, %13
  %57 = load %struct.dib3000_state*, %struct.dib3000_state** %8, align 8
  %58 = call i32 @kfree(%struct.dib3000_state* %57)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %59

59:                                               ; preds = %56, %33
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %60
}

declare dso_local %struct.dib3000_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dib3000_config*, i32) #1

declare dso_local i64 @rd(i32) #1

declare dso_local i32 @kfree(%struct.dib3000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
