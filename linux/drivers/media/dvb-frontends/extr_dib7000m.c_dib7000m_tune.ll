; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state*, %struct.dtv_frontend_properties }
%struct.dib7000m_state = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32 }

@DIB7000M_POWER_COR4_CRY_ESRAM_MOUT_NUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000m_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_tune(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.dib7000m_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib7000m_state*, %struct.dib7000m_state** %10, align 8
  store %struct.dib7000m_state* %11, %struct.dib7000m_state** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %14 = call i32 @dib7000m_set_channel(%struct.dib7000m_state* %12, %struct.dtv_frontend_properties* %13, i32 0)
  %15 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %16 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %15, i32 898, i32 16384)
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %20 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %19, i32 898, i32 0)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = call i32 @msleep(i32 45)
  %24 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %25 = load i32, i32* @DIB7000M_POWER_COR4_CRY_ESRAM_MOUT_NUD, align 4
  %26 = call i32 @dib7000m_set_power_mode(%struct.dib7000m_state* %24, i32 %25)
  %27 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %28 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %27, i32 29, i32 4211)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %32 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 @msleep(i32 200)
  br label %37

37:                                               ; preds = %35, %1
  store i32 1664, i32* %6, align 4
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %47 [
    i32 130, label %41
    i32 129, label %44
    i32 128, label %48
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, 28672
  store i32 %43, i32* %6, align 4
  br label %51

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, 32768
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %37, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, 36864
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %44, %41
  %52 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %52, i32 26, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %66 [
    i32 130, label %60
    i32 129, label %63
    i32 128, label %67
  ]

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, 6
  store i32 %62, i32* %6, align 4
  br label %70

63:                                               ; preds = %51
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, 7
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %51, %66
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, 8
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %63, %60
  %71 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %71, i32 32, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %85 [
    i32 130, label %79
    i32 129, label %82
    i32 128, label %86
  ]

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, 6
  store i32 %81, i32* %6, align 4
  br label %89

82:                                               ; preds = %70
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, 7
  store i32 %84, i32* %6, align 4
  br label %89

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %70, %85
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, 8
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %82, %79
  %90 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %90, i32 33, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %96 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %95, i32 535)
  %97 = ashr i32 %96, 6
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %102 = call i32 @dib7000m_update_timf(%struct.dib7000m_state* %101)
  br label %103

103:                                              ; preds = %100, %89
  %104 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %105 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @BANDWIDTH_TO_KHZ(i32 %107)
  %109 = call i32 @dib7000m_set_bandwidth(%struct.dib7000m_state* %104, i32 %108)
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @dib7000m_set_channel(%struct.dib7000m_state*, %struct.dtv_frontend_properties*, i32) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib7000m_set_power_mode(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_update_timf(%struct.dib7000m_state*) #1

declare dso_local i32 @dib7000m_set_bandwidth(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
