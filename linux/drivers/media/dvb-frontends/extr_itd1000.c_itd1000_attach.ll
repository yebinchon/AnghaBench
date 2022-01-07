; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_itd1000.c_itd1000_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_itd1000.c_itd1000_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.itd1000_state*, %struct.TYPE_2__ }
%struct.itd1000_state = type { i8**, %struct.i2c_adapter*, %struct.itd1000_config* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.itd1000_config = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"successfully identified (ID: %d)\0A\00", align 1
@itd1000_tuner_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @itd1000_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, %struct.itd1000_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.itd1000_config*, align 8
  %8 = alloca %struct.itd1000_state*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store %struct.itd1000_config* %2, %struct.itd1000_config** %7, align 8
  store %struct.itd1000_state* null, %struct.itd1000_state** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.itd1000_state* @kzalloc(i32 24, i32 %10)
  store %struct.itd1000_state* %11, %struct.itd1000_state** %8, align 8
  %12 = load %struct.itd1000_state*, %struct.itd1000_state** %8, align 8
  %13 = icmp eq %struct.itd1000_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %62

15:                                               ; preds = %3
  %16 = load %struct.itd1000_config*, %struct.itd1000_config** %7, align 8
  %17 = load %struct.itd1000_state*, %struct.itd1000_state** %8, align 8
  %18 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %17, i32 0, i32 2
  store %struct.itd1000_config* %16, %struct.itd1000_config** %18, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %20 = load %struct.itd1000_state*, %struct.itd1000_state** %8, align 8
  %21 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %20, i32 0, i32 1
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %21, align 8
  %22 = load %struct.itd1000_state*, %struct.itd1000_state** %8, align 8
  %23 = call i8* @itd1000_read_reg(%struct.itd1000_state* %22, i32 0)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.itd1000_state*, %struct.itd1000_state** %8, align 8
  %29 = call i32 @kfree(%struct.itd1000_state* %28)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %62

30:                                               ; preds = %15
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @itd_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.itd1000_state*, %struct.itd1000_state** %8, align 8
  %34 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = call i32 @memset(i8** %35, i32 255, i32 8)
  store i32 101, i32* %9, align 4
  br label %37

37:                                               ; preds = %50, %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 156
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.itd1000_state*, %struct.itd1000_state** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i8* @itd1000_read_reg(%struct.itd1000_state* %41, i32 %42)
  %44 = load %struct.itd1000_state*, %struct.itd1000_state** %8, align 8
  %45 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %43, i8** %49, align 8
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %55 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @memcpy(i32* %56, i32* @itd1000_tuner_ops, i32 4)
  %58 = load %struct.itd1000_state*, %struct.itd1000_state** %8, align 8
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 0
  store %struct.itd1000_state* %58, %struct.itd1000_state** %60, align 8
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %61, %struct.dvb_frontend** %4, align 8
  br label %62

62:                                               ; preds = %53, %27, %14
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %63
}

declare dso_local %struct.itd1000_state* @kzalloc(i32, i32) #1

declare dso_local i8* @itd1000_read_reg(%struct.itd1000_state*, i32) #1

declare dso_local i32 @kfree(%struct.itd1000_state*) #1

declare dso_local i32 @itd_info(i8*, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
