; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp8870.c_sp8870_set_frontend_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp8870.c_sp8870_set_frontend_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.sp8870_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.sp8870_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i64 }

@TRANSMISSION_MODE_2K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @sp8870_set_frontend_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp8870_set_frontend_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.sp8870_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 2
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.sp8870_state*, %struct.sp8870_state** %11, align 8
  store %struct.sp8870_state* %12, %struct.sp8870_state** %5, align 8
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %14 = call i32 @configure_reg0xc05(%struct.dtv_frontend_properties* %13, i32* %7)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %103

18:                                               ; preds = %1
  %19 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %20 = call i32 @sp8870_microcontroller_stop(%struct.sp8870_state* %19)
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %24, align 8
  %26 = icmp ne i32 (%struct.dvb_frontend.1*)* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %18
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %31, align 8
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %34 = bitcast %struct.dvb_frontend* %33 to %struct.dvb_frontend.1*
  %35 = call i32 %32(%struct.dvb_frontend.1* %34)
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %44, align 8
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %47 = bitcast %struct.dvb_frontend* %46 to %struct.dvb_frontend.0*
  %48 = call i32 %45(%struct.dvb_frontend.0* %47, i32 0)
  br label %49

49:                                               ; preds = %41, %27
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %52 = call i32 @sp8870_writereg(%struct.sp8870_state* %51, i32 793, i32 10)
  %53 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %54 = call i32 @sp8870_writereg(%struct.sp8870_state* %53, i32 794, i32 2731)
  %55 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %56 = call i32 @sp8870_writereg(%struct.sp8870_state* %55, i32 777, i32 1024)
  %57 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %58 = call i32 @sp8870_writereg(%struct.sp8870_state* %57, i32 778, i32 0)
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 6000000
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %65 = call i32 @sp8870_writereg(%struct.sp8870_state* %64, i32 785, i32 2)
  br label %78

66:                                               ; preds = %50
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 7000000
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %73 = call i32 @sp8870_writereg(%struct.sp8870_state* %72, i32 785, i32 1)
  br label %77

74:                                               ; preds = %66
  %75 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %76 = call i32 @sp8870_writereg(%struct.sp8870_state* %75, i32 785, i32 0)
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TRANSMISSION_MODE_2K, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %86 = call i32 @sp8870_writereg(%struct.sp8870_state* %85, i32 824, i32 0)
  br label %90

87:                                               ; preds = %78
  %88 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %89 = call i32 @sp8870_writereg(%struct.sp8870_state* %88, i32 824, i32 1)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @sp8870_writereg(%struct.sp8870_state* %91, i32 3077, i32 %92)
  %94 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %95 = call i32 @sp8870_readreg(%struct.sp8870_state* %94, i32 512)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %103

100:                                              ; preds = %90
  %101 = load %struct.sp8870_state*, %struct.sp8870_state** %5, align 8
  %102 = call i32 @sp8870_microcontroller_start(%struct.sp8870_state* %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %98, %16
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @configure_reg0xc05(%struct.dtv_frontend_properties*, i32*) #1

declare dso_local i32 @sp8870_microcontroller_stop(%struct.sp8870_state*) #1

declare dso_local i32 @sp8870_writereg(%struct.sp8870_state*, i32, i32) #1

declare dso_local i32 @sp8870_readreg(%struct.sp8870_state*, i32) #1

declare dso_local i32 @sp8870_microcontroller_start(%struct.sp8870_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
