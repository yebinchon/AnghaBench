; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.cxd2820r_priv* }
%struct.dtv_frontend_properties = type { i32 }
%struct.cxd2820r_priv = type { i64, %struct.i2c_client** }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"delivery_system=%d\0A\00", align 1
@SYS_UNDEFINED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @cxd2820r_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2820r_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.cxd2820r_priv*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %11, align 8
  store %struct.cxd2820r_priv* %12, %struct.cxd2820r_priv** %6, align 8
  %13 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %14 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %13, i32 0, i32 1
  %15 = load %struct.i2c_client**, %struct.i2c_client*** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %15, i64 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %7, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  store %struct.dtv_frontend_properties* %19, %struct.dtv_frontend_properties** %8, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %27 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SYS_UNDEFINED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %48 [
    i32 129, label %36
    i32 128, label %40
    i32 130, label %44
  ]

36:                                               ; preds = %32
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %39 = call i32 @cxd2820r_get_frontend_t(%struct.dvb_frontend* %37, %struct.dtv_frontend_properties* %38)
  store i32 %39, i32* %9, align 4
  br label %51

40:                                               ; preds = %32
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %43 = call i32 @cxd2820r_get_frontend_t2(%struct.dvb_frontend* %41, %struct.dtv_frontend_properties* %42)
  store i32 %43, i32* %9, align 4
  br label %51

44:                                               ; preds = %32
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %47 = call i32 @cxd2820r_get_frontend_c(%struct.dvb_frontend* %45, %struct.dtv_frontend_properties* %46)
  store i32 %47, i32* %9, align 4
  br label %51

48:                                               ; preds = %32
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %44, %40, %36
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %31
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @cxd2820r_get_frontend_t(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #1

declare dso_local i32 @cxd2820r_get_frontend_t2(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #1

declare dso_local i32 @cxd2820r_get_frontend_c(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
