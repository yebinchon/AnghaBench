; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg2160_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg2160_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.lg216x_state*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lg216x_state = type { i32, i32, i32, %struct.dvb_frontend, %struct.i2c_adapter*, %struct.lg2160_config* }
%struct.lg2160_config = type { i32, i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"(%d-%04x)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid chip requested, defaulting to LG2160\00", align 1
@lg2160_ops = common dso_local global i32 0, align 4
@lg2161_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @lg2160_attach(%struct.lg2160_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.lg2160_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.lg216x_state*, align 8
  store %struct.lg2160_config* %0, %struct.lg2160_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.lg216x_state* null, %struct.lg216x_state** %6, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %8 = icmp ne %struct.i2c_adapter* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %10)
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ %11, %9 ], [ 0, %12 ]
  %15 = load %struct.lg2160_config*, %struct.lg2160_config** %4, align 8
  %16 = icmp ne %struct.lg2160_config* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.lg2160_config*, %struct.lg2160_config** %4, align 8
  %19 = getelementptr inbounds %struct.lg2160_config, %struct.lg2160_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  %24 = call i32 @lg_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.lg216x_state* @kzalloc(i32 56, i32 %25)
  store %struct.lg216x_state* %26, %struct.lg216x_state** %6, align 8
  %27 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %28 = icmp ne %struct.lg216x_state* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %69

30:                                               ; preds = %22
  %31 = load %struct.lg2160_config*, %struct.lg2160_config** %4, align 8
  %32 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %33 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %32, i32 0, i32 5
  store %struct.lg2160_config* %31, %struct.lg2160_config** %33, align 8
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %35 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %36 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %35, i32 0, i32 4
  store %struct.i2c_adapter* %34, %struct.i2c_adapter** %36, align 8
  %37 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %38 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %37, i32 0, i32 0
  store i32 255, i32* %38, align 8
  %39 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %40 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %39, i32 0, i32 1
  store i32 255, i32* %40, align 4
  %41 = load %struct.lg2160_config*, %struct.lg2160_config** %4, align 8
  %42 = getelementptr inbounds %struct.lg2160_config, %struct.lg2160_config* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %44 [
    i32 129, label %46
    i32 128, label %51
  ]

44:                                               ; preds = %30
  %45 = call i32 @lg_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %30, %44
  %47 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %48 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %48, i32 0, i32 2
  %50 = call i32 @memcpy(i32* %49, i32* @lg2160_ops, i32 4)
  br label %56

51:                                               ; preds = %30
  %52 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %53 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 2
  %55 = call i32 @memcpy(i32* %54, i32* @lg2161_ops, i32 4)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %58 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %59 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 1
  store %struct.lg216x_state* %57, %struct.lg216x_state** %60, align 8
  %61 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %62 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %61, i32 0, i32 2
  store i32 -1, i32* %62, align 8
  %63 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %64 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %68 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %67, i32 0, i32 3
  store %struct.dvb_frontend* %68, %struct.dvb_frontend** %3, align 8
  br label %69

69:                                               ; preds = %56, %29
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %70
}

declare dso_local i32 @lg_dbg(i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local %struct.lg216x_state* @kzalloc(i32, i32) #1

declare dso_local i32 @lg_warn(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
