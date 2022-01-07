; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32, %struct.dib3000mc_state* }
%struct.dib3000mc_state = type { i32, %struct.i2c_adapter*, i32, %struct.dvb_frontend, %struct.dib3000mc_config* }
%struct.i2c_adapter = type { i32 }
%struct.dib3000mc_config = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dib3000mc_ops = common dso_local global i32 0, align 4
@DIB3000MC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @dib3000mc_attach(%struct.i2c_adapter* %0, i32 %1, %struct.dib3000mc_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib3000mc_config*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca %struct.dib3000mc_state*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dib3000mc_config* %2, %struct.dib3000mc_config** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dib3000mc_state* @kzalloc(i32 48, i32 %10)
  store %struct.dib3000mc_state* %11, %struct.dib3000mc_state** %9, align 8
  %12 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %13 = icmp eq %struct.dib3000mc_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %55

15:                                               ; preds = %3
  %16 = load %struct.dib3000mc_config*, %struct.dib3000mc_config** %7, align 8
  %17 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %18 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %17, i32 0, i32 4
  store %struct.dib3000mc_config* %16, %struct.dib3000mc_config** %18, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %20 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %21 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %20, i32 0, i32 1
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %24 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %26 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %25, i32 0, i32 3
  store %struct.dvb_frontend* %26, %struct.dvb_frontend** %8, align 8
  %27 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 1
  store %struct.dib3000mc_state* %27, %struct.dib3000mc_state** %29, align 8
  %30 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %31 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  %33 = call i32 @memcpy(i32* %32, i32* @dib3000mc_ops, i32 4)
  %34 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %35 = call i64 @dib3000mc_identify(%struct.dib3000mc_state* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %15
  br label %52

38:                                               ; preds = %15
  %39 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %40 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %39, i32 0, i32 2
  %41 = load i32, i32* @DIB3000MC, align 4
  %42 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %43 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %42, i32 0, i32 1
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %43, align 8
  %45 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %46 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dibx000_init_i2c_master(i32* %40, i32 %41, %struct.i2c_adapter* %44, i32 %47)
  %49 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %50 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %49, i32 1037, i32 12592)
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  store %struct.dvb_frontend* %51, %struct.dvb_frontend** %4, align 8
  br label %55

52:                                               ; preds = %37
  %53 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  %54 = call i32 @kfree(%struct.dib3000mc_state* %53)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %55

55:                                               ; preds = %52, %38, %14
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %56
}

declare dso_local %struct.dib3000mc_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @dib3000mc_identify(%struct.dib3000mc_state*) #1

declare dso_local i32 @dibx000_init_i2c_master(i32*, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @kfree(%struct.dib3000mc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
