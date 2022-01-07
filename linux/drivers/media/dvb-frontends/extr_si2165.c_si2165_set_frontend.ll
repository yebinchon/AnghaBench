; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dtv_frontend_properties, %struct.si2165_state* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dtv_frontend_properties = type { i32 }
%struct.si2165_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_ADDR_JUMP = common dso_local global i32 0, align 4
@REG_WDOG_AND_BOOT = common dso_local global i32 0, align 4
@REG_RST_ALL = common dso_local global i32 0, align 4
@REG_GP_REG0_LSB = common dso_local global i32 0, align 4
@adc_rewrite = common dso_local global i32 0, align 4
@REG_START_SYNCHRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @si2165_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2165_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.si2165_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  %11 = load %struct.si2165_state*, %struct.si2165_state** %10, align 8
  store %struct.si2165_state* %11, %struct.si2165_state** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %5, align 8
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %18 = call i32 @si2165_set_if_freq_shift(%struct.si2165_state* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %136

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 129, label %33
  ]

25:                                               ; preds = %23
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %27 = call i32 @si2165_set_frontend_dvbt(%struct.dvb_frontend* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %136

32:                                               ; preds = %25
  br label %44

33:                                               ; preds = %23
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %35 = call i32 @si2165_set_frontend_dvbc(%struct.dvb_frontend* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %136

40:                                               ; preds = %33
  br label %44

41:                                               ; preds = %23
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %136

44:                                               ; preds = %40, %32
  %45 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %46 = load i32, i32* @REG_ADDR_JUMP, align 4
  %47 = call i32 @si2165_writereg32(%struct.si2165_state* %45, i32 %46, i32 -201326592)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %136

52:                                               ; preds = %44
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %56, align 8
  %58 = icmp ne i32 (%struct.dvb_frontend.0*)* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %63, align 8
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %66 = bitcast %struct.dvb_frontend* %65 to %struct.dvb_frontend.0*
  %67 = call i32 %64(%struct.dvb_frontend.0* %66)
  br label %68

68:                                               ; preds = %59, %52
  %69 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %70 = call i32 @si2165_set_if_freq_shift(%struct.si2165_state* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %136

75:                                               ; preds = %68
  %76 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %77 = load i32, i32* @REG_WDOG_AND_BOOT, align 4
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %79 = call i32 @si2165_readreg8(%struct.si2165_state* %76, i32 %77, i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %136

84:                                               ; preds = %75
  %85 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %86 = load i32, i32* @REG_WDOG_AND_BOOT, align 4
  %87 = call i32 @si2165_writereg8(%struct.si2165_state* %85, i32 %86, i32 0)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %136

92:                                               ; preds = %84
  %93 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %94 = load i32, i32* @REG_RST_ALL, align 4
  %95 = call i32 @si2165_writereg8(%struct.si2165_state* %93, i32 %94, i32 0)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %136

100:                                              ; preds = %92
  %101 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %102 = load i32, i32* @REG_GP_REG0_LSB, align 4
  %103 = call i32 @si2165_writereg32(%struct.si2165_state* %101, i32 %102, i32 0)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %136

108:                                              ; preds = %100
  %109 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %110 = load i32, i32* @adc_rewrite, align 4
  %111 = load i32, i32* @adc_rewrite, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = call i32 @si2165_write_reg_list(%struct.si2165_state* %109, i32 %110, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %136

118:                                              ; preds = %108
  %119 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %120 = load i32, i32* @REG_START_SYNCHRO, align 4
  %121 = call i32 @si2165_writereg8(%struct.si2165_state* %119, i32 %120, i32 1)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %136

126:                                              ; preds = %118
  %127 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %128 = load i32, i32* @REG_WDOG_AND_BOOT, align 4
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %130 = call i32 @si2165_readreg8(%struct.si2165_state* %127, i32 %128, i32* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %133, %124, %116, %106, %98, %90, %82, %73, %50, %41, %38, %30, %21
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @si2165_set_if_freq_shift(%struct.si2165_state*) #1

declare dso_local i32 @si2165_set_frontend_dvbt(%struct.dvb_frontend*) #1

declare dso_local i32 @si2165_set_frontend_dvbc(%struct.dvb_frontend*) #1

declare dso_local i32 @si2165_writereg32(%struct.si2165_state*, i32, i32) #1

declare dso_local i32 @si2165_readreg8(%struct.si2165_state*, i32, i32*) #1

declare dso_local i32 @si2165_writereg8(%struct.si2165_state*, i32, i32) #1

declare dso_local i32 @si2165_write_reg_list(%struct.si2165_state*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
