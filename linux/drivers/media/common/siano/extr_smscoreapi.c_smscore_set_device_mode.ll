; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_set_device_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_set_device_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32, i32, i32, i32 (i32, i32)*, i32, i32, i32, i32 (i32, i32*)*, i32 }
%struct.sms_msg_data = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"set device mode to %d\0A\00", align 1
@SMS_DEVICE_FAMILY2 = common dso_local global i32 0, align 4
@DEVICE_MODE_NONE = common dso_local global i32 0, align 4
@DEVICE_MODE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid mode specified %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMS_DEVICE_NOT_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"mode detect failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"device mode %d already set\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"firmware download success\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"mode %d is already supported by running firmware\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"device init failed, rc %d.\0A\00", align 1
@SMS_DMA_ALIGNMENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSG_SMS_INIT_DEVICE_REQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"return error code %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Success setting device mode.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smscore_set_device_mode(%struct.smscore_device_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smscore_device_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sms_msg_data*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %12 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SMS_DEVICE_FAMILY2, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %97

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @DEVICE_MODE_NONE, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DEVICE_MODE_MAX, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %209

30:                                               ; preds = %21
  %31 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %32 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @smscore_registry_setmode(i32 %33, i32 %34)
  %36 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %37 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SMS_DEVICE_NOT_READY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %30
  %43 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %44 = call i32 @smscore_detect_mode(%struct.smscore_device_t* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %209

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %54 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  store i32 0, i32* %3, align 4
  br label %209

61:                                               ; preds = %52
  %62 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %63 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %61
  %70 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @smscore_load_firmware_from_file(%struct.smscore_device_t* %70, i32 %71, i32* null)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %69
  br label %81

78:                                               ; preds = %61
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %77
  %82 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %83 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 2048
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @smscore_init_device(%struct.smscore_device_t* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %86
  br label %96

96:                                               ; preds = %95, %81
  br label %151

97:                                               ; preds = %2
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @DEVICE_MODE_NONE, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @DEVICE_MODE_MAX, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101, %97
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %209

110:                                              ; preds = %101
  %111 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %112 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @smscore_registry_setmode(i32 %113, i32 %114)
  %116 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %117 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %116, i32 0, i32 8
  %118 = load i32 (i32, i32*)*, i32 (i32, i32*)** %117, align 8
  %119 = icmp ne i32 (i32, i32*)* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %110
  %121 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %122 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %121, i32 0, i32 8
  %123 = load i32 (i32, i32*)*, i32 (i32, i32*)** %122, align 8
  %124 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %125 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %128 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %127, i32 0, i32 1
  %129 = call i32 %123(i32 %126, i32* %128)
  br label %130

130:                                              ; preds = %120, %110
  %131 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %132 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %130
  %137 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %138 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %137, i32 0, i32 4
  %139 = load i32 (i32, i32)*, i32 (i32, i32)** %138, align 8
  %140 = icmp ne i32 (i32, i32)* %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %143 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %142, i32 0, i32 4
  %144 = load i32 (i32, i32)*, i32 (i32, i32)** %143, align 8
  %145 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %146 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 %144(i32 %147, i32 %148)
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %141, %136, %130
  br label %151

151:                                              ; preds = %150, %96
  %152 = load i32, i32* %6, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %199

154:                                              ; preds = %151
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %157 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @SMS_DEVICE_NOT_READY, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %161 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load i64, i64* @SMS_DMA_ALIGNMENT, align 8
  %165 = add i64 16, %164
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %168 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %166, %169
  %171 = call i8* @kmalloc(i64 %165, i32 %170)
  store i8* %171, i8** %7, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %198

174:                                              ; preds = %154
  %175 = load i8*, i8** %7, align 8
  %176 = call i64 @SMS_ALIGN_ADDRESS(i8* %175)
  %177 = inttoptr i64 %176 to %struct.sms_msg_data*
  store %struct.sms_msg_data* %177, %struct.sms_msg_data** %8, align 8
  %178 = load %struct.sms_msg_data*, %struct.sms_msg_data** %8, align 8
  %179 = getelementptr inbounds %struct.sms_msg_data, %struct.sms_msg_data* %178, i32 0, i32 1
  %180 = load i32, i32* @MSG_SMS_INIT_DEVICE_REQ, align 4
  %181 = call i32 @SMS_INIT_MSG(%struct.TYPE_2__* %179, i32 %180, i32 16)
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.sms_msg_data*, %struct.sms_msg_data** %8, align 8
  %184 = getelementptr inbounds %struct.sms_msg_data, %struct.sms_msg_data* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  store i32 %182, i32* %186, align 4
  %187 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %188 = load %struct.sms_msg_data*, %struct.sms_msg_data** %8, align 8
  %189 = load %struct.sms_msg_data*, %struct.sms_msg_data** %8, align 8
  %190 = getelementptr inbounds %struct.sms_msg_data, %struct.sms_msg_data* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %194 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %193, i32 0, i32 6
  %195 = call i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %187, %struct.sms_msg_data* %188, i32 %192, i32* %194)
  store i32 %195, i32* %6, align 4
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 @kfree(i8* %196)
  br label %198

198:                                              ; preds = %174, %154
  br label %199

199:                                              ; preds = %198, %151
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %203)
  br label %207

205:                                              ; preds = %199
  %206 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %202
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %105, %58, %47, %25
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @smscore_registry_setmode(i32, i32) #1

declare dso_local i32 @smscore_detect_mode(%struct.smscore_device_t*) #1

declare dso_local i32 @smscore_load_firmware_from_file(%struct.smscore_device_t*, i32, i32*) #1

declare dso_local i32 @smscore_init_device(%struct.smscore_device_t*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @SMS_ALIGN_ADDRESS(i8*) #1

declare dso_local i32 @SMS_INIT_MSG(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t*, %struct.sms_msg_data*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
