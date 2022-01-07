; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl* }
%struct.mxl = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32 }

@MXL_DEMOD_CHAN_PARAMS_BUFF_SIZE = common dso_local global i32 0, align 4
@HYDRA_DMD_STANDARD_ADDR_OFFSET = common dso_local global i64 0, align 8
@HYDRA_DMD_STATUS_CENTER_FREQ_IN_KHZ_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"freq=%u delsys=%u srate=%u\0A\00", align 1
@DMD_STANDARD_ADDR = common dso_local global i64 0, align 8
@DMD_SYMBOL_RATE_ADDR = common dso_local global i64 0, align 8
@DMD_FEC_CODE_RATE_ADDR = common dso_local global i64 0, align 8
@DMD_DVBS2_PILOT_ON_OFF_ADDR = common dso_local global i64 0, align 8
@PILOT_OFF = common dso_local global i32 0, align 4
@PILOT_ON = common dso_local global i32 0, align 4
@DMD_MODULATION_SCHEME_ADDR = common dso_local global i64 0, align 8
@QPSK = common dso_local global i32 0, align 4
@PSK_8 = common dso_local global i32 0, align 4
@DMD_SPECTRUM_ROLL_OFF_ADDR = common dso_local global i64 0, align 8
@ROLLOFF_20 = common dso_local global i32 0, align 4
@ROLLOFF_35 = common dso_local global i32 0, align 4
@ROLLOFF_25 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.mxl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.mxl*, %struct.mxl** %12, align 8
  store %struct.mxl* %13, %struct.mxl** %6, align 8
  %14 = load i32, i32* @MXL_DEMOD_CHAN_PARAMS_BUFF_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.mxl*, %struct.mxl** %6, align 8
  %19 = getelementptr inbounds %struct.mxl, %struct.mxl* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.mxl*, %struct.mxl** %6, align 8
  %24 = load %struct.mxl*, %struct.mxl** %6, align 8
  %25 = getelementptr inbounds %struct.mxl, %struct.mxl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @HYDRA_DEMOD_STATUS_LOCK(%struct.mxl* %23, i32 %26)
  %28 = load %struct.mxl*, %struct.mxl** %6, align 8
  %29 = load i64, i64* @HYDRA_DMD_STANDARD_ADDR_OFFSET, align 8
  %30 = load %struct.mxl*, %struct.mxl** %6, align 8
  %31 = getelementptr inbounds %struct.mxl, %struct.mxl* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @HYDRA_DMD_STATUS_OFFSET(i32 %32)
  %34 = add nsw i64 %29, %33
  %35 = load i32, i32* @MXL_DEMOD_CHAN_PARAMS_BUFF_SIZE, align 4
  %36 = mul nsw i32 %35, 4
  %37 = getelementptr inbounds i32, i32* %17, i64 0
  %38 = call i32 @read_register_block(%struct.mxl* %28, i64 %34, i32 %36, i32* %37)
  %39 = load %struct.mxl*, %struct.mxl** %6, align 8
  %40 = load i64, i64* @HYDRA_DMD_STATUS_CENTER_FREQ_IN_KHZ_ADDR, align 8
  %41 = load %struct.mxl*, %struct.mxl** %6, align 8
  %42 = getelementptr inbounds %struct.mxl, %struct.mxl* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @HYDRA_DMD_STATUS_OFFSET(i32 %43)
  %45 = add nsw i64 %40, %44
  %46 = call i32 @read_register_block(%struct.mxl* %39, i64 %45, i32 4, i32* %9)
  %47 = load %struct.mxl*, %struct.mxl** %6, align 8
  %48 = load %struct.mxl*, %struct.mxl** %6, align 8
  %49 = getelementptr inbounds %struct.mxl, %struct.mxl* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @HYDRA_DEMOD_STATUS_UNLOCK(%struct.mxl* %47, i32 %50)
  %52 = load %struct.mxl*, %struct.mxl** %6, align 8
  %53 = getelementptr inbounds %struct.mxl, %struct.mxl* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.mxl*, %struct.mxl** %6, align 8
  %58 = getelementptr inbounds %struct.mxl, %struct.mxl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = load i64, i64* @DMD_STANDARD_ADDR, align 8
  %63 = getelementptr inbounds i32, i32* %17, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @DMD_SYMBOL_RATE_ADDR, align 8
  %66 = getelementptr inbounds i32, i32* %17, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %67)
  %69 = load i64, i64* @DMD_SYMBOL_RATE_ADDR, align 8
  %70 = getelementptr inbounds i32, i32* %17, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i64, i64* @DMD_FEC_CODE_RATE_ADDR, align 8
  %78 = getelementptr inbounds i32, i32* %17, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @conv_fec(i32 %79)
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %132 [
    i32 130, label %86
    i32 128, label %87
    i32 129, label %101
  ]

86:                                               ; preds = %2
  br label %135

87:                                               ; preds = %2
  %88 = load i64, i64* @DMD_DVBS2_PILOT_ON_OFF_ADDR, align 8
  %89 = getelementptr inbounds i32, i32* %17, i64 %88
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %99 [
    i32 135, label %91
    i32 134, label %95
  ]

91:                                               ; preds = %87
  %92 = load i32, i32* @PILOT_OFF, align 4
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  br label %100

95:                                               ; preds = %87
  %96 = load i32, i32* @PILOT_ON, align 4
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  br label %100

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %95, %91
  br label %101

101:                                              ; preds = %2, %100
  %102 = load i64, i64* @DMD_MODULATION_SCHEME_ADDR, align 8
  %103 = getelementptr inbounds i32, i32* %17, i64 %102
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %113 [
    i32 136, label %105
    i32 137, label %109
  ]

105:                                              ; preds = %101
  %106 = load i32, i32* @QPSK, align 4
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  br label %114

109:                                              ; preds = %101
  %110 = load i32, i32* @PSK_8, align 4
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  br label %114

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %109, %105
  %115 = load i64, i64* @DMD_SPECTRUM_ROLL_OFF_ADDR, align 8
  %116 = getelementptr inbounds i32, i32* %17, i64 %115
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %130 [
    i32 133, label %118
    i32 131, label %122
    i32 132, label %126
  ]

118:                                              ; preds = %114
  %119 = load i32, i32* @ROLLOFF_20, align 4
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  br label %131

122:                                              ; preds = %114
  %123 = load i32, i32* @ROLLOFF_35, align 4
  %124 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  br label %131

126:                                              ; preds = %114
  %127 = load i32, i32* @ROLLOFF_25, align 4
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %131

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %126, %122, %118
  br label %135

132:                                              ; preds = %2
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %136

135:                                              ; preds = %131, %86
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @HYDRA_DEMOD_STATUS_LOCK(%struct.mxl*, i32) #2

declare dso_local i32 @read_register_block(%struct.mxl*, i64, i32, i32*) #2

declare dso_local i64 @HYDRA_DMD_STATUS_OFFSET(i32) #2

declare dso_local i32 @HYDRA_DEMOD_STATUS_UNLOCK(%struct.mxl*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @conv_fec(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
