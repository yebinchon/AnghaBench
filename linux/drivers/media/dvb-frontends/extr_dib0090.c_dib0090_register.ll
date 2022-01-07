; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state*, %struct.TYPE_2__ }
%struct.dib0090_state = type { i32*, i32, %struct.dvb_frontend*, %struct.i2c_adapter*, %struct.dib0090_config* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.dib0090_config = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dib0090_wbd_table_default = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"DiB0090: successfully identified\0A\00", align 1
@dib0090_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @dib0090_register(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, %struct.dib0090_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.dib0090_config*, align 8
  %8 = alloca %struct.dib0090_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store %struct.dib0090_config* %2, %struct.dib0090_config** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dib0090_state* @kzalloc(i32 40, i32 %9)
  store %struct.dib0090_state* %10, %struct.dib0090_state** %8, align 8
  %11 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  %12 = icmp eq %struct.dib0090_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %61

14:                                               ; preds = %3
  %15 = load %struct.dib0090_config*, %struct.dib0090_config** %7, align 8
  %16 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  %17 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %16, i32 0, i32 4
  store %struct.dib0090_config* %15, %struct.dib0090_config** %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %19 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  %20 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %19, i32 0, i32 3
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %20, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %22 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  %23 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %22, i32 0, i32 2
  store %struct.dvb_frontend* %21, %struct.dvb_frontend** %23, align 8
  %24 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  %25 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %24, i32 0, i32 1
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  store %struct.dib0090_state* %27, %struct.dib0090_state** %29, align 8
  %30 = load %struct.dib0090_config*, %struct.dib0090_config** %7, align 8
  %31 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %14
  %35 = load i32*, i32** @dib0090_wbd_table_default, align 8
  %36 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  %37 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  br label %44

38:                                               ; preds = %14
  %39 = load %struct.dib0090_config*, %struct.dib0090_config** %7, align 8
  %40 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  %43 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %46 = call i64 @dib0090_reset(%struct.dvb_frontend* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %56

49:                                               ; preds = %44
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @memcpy(i32* %53, i32* @dib0090_ops, i32 4)
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %55, %struct.dvb_frontend** %4, align 8
  br label %61

56:                                               ; preds = %48
  %57 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  %58 = call i32 @kfree(%struct.dib0090_state* %57)
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 0
  store %struct.dib0090_state* null, %struct.dib0090_state** %60, align 8
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %61

61:                                               ; preds = %56, %49, %13
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %62
}

declare dso_local %struct.dib0090_state* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @dib0090_reset(%struct.dvb_frontend*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.dib0090_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
