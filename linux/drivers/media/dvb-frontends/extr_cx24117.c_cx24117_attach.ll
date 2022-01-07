; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24117.c_cx24117_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24117.c_cx24117_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24117_state*, i32 }
%struct.cx24117_state = type { i32, %struct.dvb_frontend, %struct.cx24117_priv* }
%struct.cx24117_priv = type { %struct.i2c_adapter*, i32, i32 }
%struct.cx24117_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: Error attaching frontend %d\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: Attaching frontend %d\0A\00", align 1
@cx24117_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cx24117_attach(%struct.cx24117_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.cx24117_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.cx24117_state*, align 8
  %7 = alloca %struct.cx24117_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.cx24117_config* %0, %struct.cx24117_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.cx24117_state* null, %struct.cx24117_state** %6, align 8
  store %struct.cx24117_priv* null, %struct.cx24117_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %10 = load %struct.cx24117_config*, %struct.cx24117_config** %4, align 8
  %11 = getelementptr inbounds %struct.cx24117_config, %struct.cx24117_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cx24117_get_priv(%struct.cx24117_priv** %7, %struct.i2c_adapter* %9, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %33 [
    i32 0, label %15
    i32 1, label %21
  ]

15:                                               ; preds = %2
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* @KBUILD_MODNAME, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %23 = load %struct.cx24117_priv*, %struct.cx24117_priv** %7, align 8
  %24 = getelementptr inbounds %struct.cx24117_priv, %struct.cx24117_priv* %23, i32 0, i32 0
  store %struct.i2c_adapter* %22, %struct.i2c_adapter** %24, align 8
  %25 = load %struct.cx24117_config*, %struct.cx24117_config** %4, align 8
  %26 = getelementptr inbounds %struct.cx24117_config, %struct.cx24117_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cx24117_priv*, %struct.cx24117_priv** %7, align 8
  %29 = getelementptr inbounds %struct.cx24117_priv, %struct.cx24117_priv* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cx24117_priv*, %struct.cx24117_priv** %7, align 8
  %31 = getelementptr inbounds %struct.cx24117_priv, %struct.cx24117_priv* %30, i32 0, i32 1
  %32 = call i32 @mutex_init(i32* %31)
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.cx24117_state* @kzalloc(i32 32, i32 %35)
  store %struct.cx24117_state* %36, %struct.cx24117_state** %6, align 8
  %37 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %38 = icmp eq %struct.cx24117_state* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %69

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %44 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.cx24117_priv*, %struct.cx24117_priv** %7, align 8
  %46 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %47 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %46, i32 0, i32 2
  store %struct.cx24117_priv* %45, %struct.cx24117_priv** %47, align 8
  %48 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %49 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %48, i32 0, i32 2
  %50 = load %struct.cx24117_priv*, %struct.cx24117_priv** %49, align 8
  %51 = getelementptr inbounds %struct.cx24117_priv, %struct.cx24117_priv* %50, i32 0, i32 0
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %51, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* @KBUILD_MODNAME, align 4
  %55 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %56 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %60 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 1
  %62 = call i32 @memcpy(i32* %61, i32* @cx24117_ops, i32 4)
  %63 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %64 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %65 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 0
  store %struct.cx24117_state* %63, %struct.cx24117_state** %66, align 8
  %67 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %68 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %67, i32 0, i32 1
  store %struct.dvb_frontend* %68, %struct.dvb_frontend** %3, align 8
  br label %73

69:                                               ; preds = %39
  %70 = load %struct.cx24117_priv*, %struct.cx24117_priv** %7, align 8
  %71 = call i32 @cx24117_release_priv(%struct.cx24117_priv* %70)
  br label %72

72:                                               ; preds = %69, %15
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %73

73:                                               ; preds = %72, %40
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %74
}

declare dso_local i32 @cx24117_get_priv(%struct.cx24117_priv**, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.cx24117_state* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cx24117_release_priv(%struct.cx24117_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
