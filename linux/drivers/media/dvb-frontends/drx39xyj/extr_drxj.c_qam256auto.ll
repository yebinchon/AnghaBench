; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_qam256auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_qam256auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr*, %struct.drxj_data* }
%struct.i2c_device_addr = type { %struct.drx39xxj_state* }
%struct.drx39xxj_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drxj_data = type { i32 }
%struct.drx_channel = type { i32 }

@DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME = common dso_local global i64 0, align 8
@DRX_NOT_LOCKED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@DRXJ_DEMOD_LOCK = common dso_local global i32 0, align 4
@DRX_MIRROR_AUTO = common dso_local global i32 0, align 4
@DRXJ_QAM_FEC_LOCK_WAITTIME = common dso_local global i64 0, align 8
@DRX_MIRROR_YES = common dso_local global i32 0, align 4
@DRXJ_QAM_MAX_WAITTIME = common dso_local global i64 0, align 8
@DRX_LOCKED = common dso_local global i32 0, align 4
@DRX_NEVER_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drx_channel*, i32, i32*)* @qam256auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qam256auto(%struct.drx_demod_instance* %0, %struct.drx_channel* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drx_demod_instance*, align 8
  %7 = alloca %struct.drx_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drxj_data*, align 8
  %11 = alloca %struct.i2c_device_addr*, align 8
  %12 = alloca %struct.drx39xxj_state*, align 8
  %13 = alloca %struct.dtv_frontend_properties*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %6, align 8
  store %struct.drx_channel* %1, %struct.drx_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %20 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %19, i32 0, i32 1
  %21 = load %struct.drxj_data*, %struct.drxj_data** %20, align 8
  store %struct.drxj_data* %21, %struct.drxj_data** %10, align 8
  %22 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %23 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %22, i32 0, i32 0
  %24 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %23, align 8
  store %struct.i2c_device_addr* %24, %struct.i2c_device_addr** %11, align 8
  %25 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %11, align 8
  %26 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %25, i32 0, i32 0
  %27 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %26, align 8
  store %struct.drx39xxj_state* %27, %struct.drx39xxj_state** %12, align 8
  %28 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %12, align 8
  %29 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.dtv_frontend_properties* %30, %struct.dtv_frontend_properties** %13, align 8
  store i64 129, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %31 = load i64, i64* @DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME, align 8
  store i64 %31, i64* %18, align 8
  %32 = load i32, i32* @DRX_NOT_LOCKED, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @jiffies, align 4
  %35 = call i64 @jiffies_to_msecs(i32 %34)
  store i64 %35, i64* %16, align 8
  store i64 129, i64* %15, align 8
  br label %36

36:                                               ; preds = %138, %4
  %37 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @ctrl_lock_status(%struct.drx_demod_instance* %37, i32* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %141

45:                                               ; preds = %36
  %46 = load i64, i64* %15, align 8
  switch i64 %46, label %116 [
    i64 129, label %47
    i64 130, label %77
    i64 128, label %115
  ]

47:                                               ; preds = %45
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DRXJ_DEMOD_LOCK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %54 = call i32 @ctrl_get_qam_sig_quality(%struct.drx_demod_instance* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %141

60:                                               ; preds = %52
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 26800
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  store i64 130, i64* %15, align 8
  %70 = load i64, i64* @DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME, align 8
  %71 = load i64, i64* %18, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %18, align 8
  %73 = load i32, i32* @jiffies, align 4
  %74 = call i64 @jiffies_to_msecs(i32 %73)
  store i64 %74, i64* %17, align 8
  br label %75

75:                                               ; preds = %69, %60
  br label %76

76:                                               ; preds = %75, %47
  br label %117

77:                                               ; preds = %45
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DRXJ_DEMOD_LOCK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %77
  %83 = load %struct.drx_channel*, %struct.drx_channel** %7, align 8
  %84 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DRX_MIRROR_AUTO, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = load i32, i32* @jiffies, align 4
  %90 = call i64 @jiffies_to_msecs(i32 %89)
  %91 = load i64, i64* %17, align 8
  %92 = sub nsw i64 %90, %91
  %93 = load i64, i64* @DRXJ_QAM_FEC_LOCK_WAITTIME, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %88
  %96 = load i32, i32* @DRX_MIRROR_YES, align 4
  %97 = load %struct.drxj_data*, %struct.drxj_data** %10, align 8
  %98 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %100 = load %struct.drx_channel*, %struct.drx_channel** %7, align 8
  %101 = call i32 @qam_flip_spec(%struct.drx_demod_instance* %99, %struct.drx_channel* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %141

107:                                              ; preds = %95
  store i64 128, i64* %15, align 8
  %108 = load i32, i32* @jiffies, align 4
  %109 = call i64 @jiffies_to_msecs(i32 %108)
  store i64 %109, i64* %16, align 8
  %110 = load i64, i64* @DRXJ_QAM_MAX_WAITTIME, align 8
  %111 = sub nsw i64 0, %110
  %112 = sdiv i64 %111, 2
  store i64 %112, i64* %18, align 8
  br label %113

113:                                              ; preds = %107, %88, %82
  br label %114

114:                                              ; preds = %113, %77
  br label %117

115:                                              ; preds = %45
  br label %117

116:                                              ; preds = %45
  br label %117

117:                                              ; preds = %116, %115, %114, %76
  %118 = call i32 @msleep(i32 10)
  br label %119

119:                                              ; preds = %117
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DRX_LOCKED, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DRX_NEVER_LOCK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = load i32, i32* @jiffies, align 4
  %131 = call i64 @jiffies_to_msecs(i32 %130)
  %132 = load i64, i64* %16, align 8
  %133 = sub nsw i64 %131, %132
  %134 = load i64, i64* @DRXJ_QAM_MAX_WAITTIME, align 8
  %135 = load i64, i64* %18, align 8
  %136 = add nsw i64 %134, %135
  %137 = icmp slt i64 %133, %136
  br label %138

138:                                              ; preds = %129, %124, %119
  %139 = phi i1 [ false, %124 ], [ false, %119 ], [ %137, %129 ]
  br i1 %139, label %36, label %140

140:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %143

141:                                              ; preds = %104, %57, %42
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %140
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @ctrl_lock_status(%struct.drx_demod_instance*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ctrl_get_qam_sig_quality(%struct.drx_demod_instance*) #1

declare dso_local i32 @qam_flip_spec(%struct.drx_demod_instance*, %struct.drx_channel*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
