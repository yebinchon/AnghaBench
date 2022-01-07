; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.cxd2820r_priv* }
%struct.dtv_frontend_properties = type { i32 }
%struct.cxd2820r_priv = type { %struct.i2c_client** }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"delivery_system=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cxd2820r_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2820r_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.cxd2820r_priv*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %8, align 8
  store %struct.cxd2820r_priv* %9, %struct.cxd2820r_priv** %3, align 8
  %10 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %3, align 8
  %11 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %10, i32 0, i32 0
  %12 = load %struct.i2c_client**, %struct.i2c_client*** %11, align 8
  %13 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %12, i64 0
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %4, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  store %struct.dtv_frontend_properties* %16, %struct.dtv_frontend_properties** %5, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %35 [
    i32 129, label %26
    i32 128, label %29
    i32 130, label %32
  ]

26:                                               ; preds = %1
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %28 = call i32 @cxd2820r_sleep_t(%struct.dvb_frontend* %27)
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %31 = call i32 @cxd2820r_sleep_t2(%struct.dvb_frontend* %30)
  store i32 %31, i32* %6, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %34 = call i32 @cxd2820r_sleep_c(%struct.dvb_frontend* %33)
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %32, %29, %26
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @cxd2820r_sleep_t(%struct.dvb_frontend*) #1

declare dso_local i32 @cxd2820r_sleep_t2(%struct.dvb_frontend*) #1

declare dso_local i32 @cxd2820r_sleep_c(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
