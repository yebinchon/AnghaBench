; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1432.c_s5h1432_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1432.c_s5h1432_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.s5h1432_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.s5h1432_state = type { i64 }
%struct.dtv_frontend_properties = type { i64, i32 }

@IF_FREQ_4_MHZ = common dso_local global i32 0, align 4
@S5H1432_I2C_TOP_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @s5h1432_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1432_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5h1432_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 2
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %4, align 8
  store i32 8, i32* %5, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.s5h1432_state*, %struct.s5h1432_state** %10, align 8
  store %struct.s5h1432_state* %11, %struct.s5h1432_state** %6, align 8
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.s5h1432_state*, %struct.s5h1432_state** %6, align 8
  %16 = getelementptr inbounds %struct.s5h1432_state, %struct.s5h1432_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %86

20:                                               ; preds = %1
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %24, align 8
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %27 = bitcast %struct.dvb_frontend* %26 to %struct.dvb_frontend.0*
  %28 = call i32 %25(%struct.dvb_frontend.0* %27)
  %29 = call i32 @msleep(i32 300)
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @s5h1432_set_channel_bandwidth(%struct.dvb_frontend* %30, i32 %31)
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %48 [
    i32 6000000, label %36
    i32 7000000, label %40
    i32 8000000, label %44
  ]

36:                                               ; preds = %20
  store i32 6, i32* %5, align 4
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %38 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %39 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %37, i32 %38)
  br label %49

40:                                               ; preds = %20
  store i32 7, i32* %5, align 4
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %43 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %41, i32 %42)
  br label %49

44:                                               ; preds = %20
  store i32 8, i32* %5, align 4
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %46 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %47 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %45, i32 %46)
  br label %49

48:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %92

49:                                               ; preds = %44, %40, %36
  %50 = call i32 @msleep(i32 30)
  %51 = load %struct.s5h1432_state*, %struct.s5h1432_state** %6, align 8
  %52 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %53 = call i32 @s5h1432_writereg(%struct.s5h1432_state* %51, i32 %52, i32 9, i32 26)
  %54 = call i32 @msleep(i32 30)
  %55 = load %struct.s5h1432_state*, %struct.s5h1432_state** %6, align 8
  %56 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %57 = call i32 @s5h1432_writereg(%struct.s5h1432_state* %55, i32 %56, i32 9, i32 27)
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @s5h1432_set_channel_bandwidth(%struct.dvb_frontend* %58, i32 %59)
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %76 [
    i32 6000000, label %64
    i32 7000000, label %68
    i32 8000000, label %72
  ]

64:                                               ; preds = %49
  store i32 6, i32* %5, align 4
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %66 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %67 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %65, i32 %66)
  br label %77

68:                                               ; preds = %49
  store i32 7, i32* %5, align 4
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %70 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %71 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %69, i32 %70)
  br label %77

72:                                               ; preds = %49
  store i32 8, i32* %5, align 4
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %74 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %75 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %73, i32 %74)
  br label %77

76:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %92

77:                                               ; preds = %72, %68, %64
  %78 = call i32 @msleep(i32 30)
  %79 = load %struct.s5h1432_state*, %struct.s5h1432_state** %6, align 8
  %80 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %81 = call i32 @s5h1432_writereg(%struct.s5h1432_state* %79, i32 %80, i32 9, i32 26)
  %82 = call i32 @msleep(i32 30)
  %83 = load %struct.s5h1432_state*, %struct.s5h1432_state** %6, align 8
  %84 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %85 = call i32 @s5h1432_writereg(%struct.s5h1432_state* %83, i32 %84, i32 9, i32 27)
  br label %86

86:                                               ; preds = %77, %19
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.s5h1432_state*, %struct.s5h1432_state** %6, align 8
  %91 = getelementptr inbounds %struct.s5h1432_state, %struct.s5h1432_state* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %86, %76, %48
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @s5h1432_set_channel_bandwidth(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @s5h1432_set_IF(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @s5h1432_writereg(%struct.s5h1432_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
