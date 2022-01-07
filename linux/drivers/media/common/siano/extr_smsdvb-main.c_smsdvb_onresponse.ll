; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_onresponse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_onresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_buffer_t = type { i32, i32, i64 }
%struct.smsdvb_client_t = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sms_msg_hdr = type { i32 }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"message not handled\0A\00", align 1
@DVB3_EVENT_FE_LOCK = common dso_local global i32 0, align 4
@DVB3_EVENT_UNC_OK = common dso_local global i32 0, align 4
@DVB3_EVENT_UNC_ERR = common dso_local global i32 0, align 4
@DVB3_EVENT_FE_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.smscore_buffer_t*)* @smsdvb_onresponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsdvb_onresponse(i8* %0, %struct.smscore_buffer_t* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.smscore_buffer_t*, align 8
  %5 = alloca %struct.smsdvb_client_t*, align 8
  %6 = alloca %struct.sms_msg_hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca %struct.dtv_frontend_properties*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.smscore_buffer_t* %1, %struct.smscore_buffer_t** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.smsdvb_client_t*
  store %struct.smsdvb_client_t* %12, %struct.smsdvb_client_t** %5, align 8
  %13 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %14 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %18 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = bitcast i32* %21 to %struct.sms_msg_hdr*
  store %struct.sms_msg_hdr* %22, %struct.sms_msg_hdr** %6, align 8
  %23 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %6, align 8
  %24 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %23, i64 1
  %25 = bitcast %struct.sms_msg_hdr* %24 to i8*
  store i8* %25, i8** %7, align 8
  %26 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %27 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %26, i32 0, i32 8
  store %struct.dvb_frontend* %27, %struct.dvb_frontend** %8, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  store %struct.dtv_frontend_properties* %29, %struct.dtv_frontend_properties** %9, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %102 [
    i32 136, label %33
    i32 130, label %55
    i32 132, label %55
    i32 129, label %59
    i32 131, label %71
    i32 128, label %74
    i32 133, label %78
    i32 134, label %82
    i32 135, label %97
  ]

33:                                               ; preds = %2
  %34 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %35 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %40 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %45 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %44, i32 0, i32 6
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %48 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @dvb_dmx_swfilter(i32* %45, i8* %46, i32 %52)
  br label %54

54:                                               ; preds = %43, %38, %33
  br label %104

55:                                               ; preds = %2, %2
  %56 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %57 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %56, i32 0, i32 5
  %58 = call i32 @complete(i32* %57)
  br label %104

59:                                               ; preds = %2
  %60 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %61 = load i32, i32* @FE_HAS_CARRIER, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FE_HAS_VITERBI, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @FE_HAS_SYNC, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FE_HAS_LOCK, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %70 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 1, i32* %10, align 4
  br label %104

71:                                               ; preds = %2
  %72 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %73 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  store i32 1, i32* %10, align 4
  br label %104

74:                                               ; preds = %2
  %75 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @smsdvb_update_tx_params(%struct.smsdvb_client_t* %75, i8* %76)
  store i32 1, i32* %10, align 4
  br label %104

78:                                               ; preds = %2
  %79 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @smsdvb_update_per_slices(%struct.smsdvb_client_t* %79, i8* %80)
  store i32 1, i32* %10, align 4
  br label %104

82:                                               ; preds = %2
  %83 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %84 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @smscore_get_device_mode(i32 %85)
  switch i32 %86, label %91 [
    i32 138, label %87
    i32 137, label %87
  ]

87:                                               ; preds = %82, %82
  %88 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @smsdvb_update_isdbt_stats(%struct.smsdvb_client_t* %88, i8* %89)
  br label %96

91:                                               ; preds = %82
  %92 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr i8, i8* %93, i64 4
  %95 = call i32 @smsdvb_update_dvb_stats(%struct.smsdvb_client_t* %92, i8* %94)
  br label %96

96:                                               ; preds = %91, %87
  store i32 1, i32* %10, align 4
  br label %104

97:                                               ; preds = %2
  %98 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr i8, i8* %99, i64 4
  %101 = call i32 @smsdvb_update_isdbt_stats_ex(%struct.smsdvb_client_t* %98, i8* %100)
  store i32 1, i32* %10, align 4
  br label %104

102:                                              ; preds = %2
  %103 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97, %96, %78, %74, %71, %59, %55, %54
  %105 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %106 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %109 = call i32 @smscore_putbuffer(i32 %107, %struct.smscore_buffer_t* %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %157

112:                                              ; preds = %104
  %113 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %114 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @FE_HAS_LOCK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %112
  %120 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %121 = load i32, i32* @DVB3_EVENT_FE_LOCK, align 4
  %122 = call i32 @sms_board_dvb3_event(%struct.smsdvb_client_t* %120, i32 %121)
  %123 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %124 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %127 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %125, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %119
  %135 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %136 = load i32, i32* @DVB3_EVENT_UNC_OK, align 4
  %137 = call i32 @sms_board_dvb3_event(%struct.smsdvb_client_t* %135, i32 %136)
  br label %142

138:                                              ; preds = %119
  %139 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %140 = load i32, i32* @DVB3_EVENT_UNC_ERR, align 4
  %141 = call i32 @sms_board_dvb3_event(%struct.smsdvb_client_t* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %144 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  br label %153

145:                                              ; preds = %112
  %146 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %147 = call i32 @smsdvb_stats_not_ready(%struct.dvb_frontend* %146)
  %148 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %149 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %151 = load i32, i32* @DVB3_EVENT_FE_UNLOCK, align 4
  %152 = call i32 @sms_board_dvb3_event(%struct.smsdvb_client_t* %150, i32 %151)
  br label %153

153:                                              ; preds = %145, %142
  %154 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %155 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %154, i32 0, i32 3
  %156 = call i32 @complete(i32* %155)
  br label %157

157:                                              ; preds = %153, %104
  ret i32 0
}

declare dso_local i32 @dvb_dmx_swfilter(i32*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @smsdvb_update_tx_params(%struct.smsdvb_client_t*, i8*) #1

declare dso_local i32 @smsdvb_update_per_slices(%struct.smsdvb_client_t*, i8*) #1

declare dso_local i32 @smscore_get_device_mode(i32) #1

declare dso_local i32 @smsdvb_update_isdbt_stats(%struct.smsdvb_client_t*, i8*) #1

declare dso_local i32 @smsdvb_update_dvb_stats(%struct.smsdvb_client_t*, i8*) #1

declare dso_local i32 @smsdvb_update_isdbt_stats_ex(%struct.smsdvb_client_t*, i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @smscore_putbuffer(i32, %struct.smscore_buffer_t*) #1

declare dso_local i32 @sms_board_dvb3_event(%struct.smsdvb_client_t*, i32) #1

declare dso_local i32 @smsdvb_stats_not_ready(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
