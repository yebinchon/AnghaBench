; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_describe_rates_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_describe_rates_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_clock_info = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i8** }
%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.scmi_xfer = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.scmi_msg_resp_clock_describe_rates* }
%struct.scmi_msg_resp_clock_describe_rates = type { i32*, i32 }
%struct.TYPE_5__ = type { %struct.scmi_msg_clock_describe_rates* }
%struct.scmi_msg_clock_describe_rates = type { i8*, i8* }

@CLOCK_DESCRIBE_RATES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_CLOCK = common dso_local global i32 0, align 4
@SCMI_MAX_NUM_RATES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"No. of rates > MAX_NUM_RATES\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Min %llu Max %llu Step %llu Hz\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Rate %llu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i64, %struct.scmi_clock_info*)* @scmi_clock_describe_rates_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_clock_describe_rates_get(%struct.scmi_handle* %0, i64 %1, %struct.scmi_clock_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scmi_clock_info*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.scmi_xfer*, align 8
  %17 = alloca %struct.scmi_msg_clock_describe_rates*, align 8
  %18 = alloca %struct.scmi_msg_resp_clock_describe_rates*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.scmi_clock_info* %2, %struct.scmi_clock_info** %7, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %19 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %20 = load i32, i32* @CLOCK_DESCRIBE_RATES, align 4
  %21 = load i32, i32* @SCMI_PROTOCOL_CLOCK, align 4
  %22 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %19, i32 %20, i32 %21, i32 16, i32 0, %struct.scmi_xfer** %16)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %181

27:                                               ; preds = %3
  %28 = load %struct.scmi_xfer*, %struct.scmi_xfer** %16, align 8
  %29 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.scmi_msg_clock_describe_rates*, %struct.scmi_msg_clock_describe_rates** %30, align 8
  store %struct.scmi_msg_clock_describe_rates* %31, %struct.scmi_msg_clock_describe_rates** %17, align 8
  %32 = load %struct.scmi_xfer*, %struct.scmi_xfer** %16, align 8
  %33 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.scmi_msg_resp_clock_describe_rates*, %struct.scmi_msg_resp_clock_describe_rates** %34, align 8
  store %struct.scmi_msg_resp_clock_describe_rates* %35, %struct.scmi_msg_resp_clock_describe_rates** %18, align 8
  br label %36

36:                                               ; preds = %162, %27
  %37 = load i64, i64* %6, align 8
  %38 = call i8* @cpu_to_le32(i64 %37)
  %39 = load %struct.scmi_msg_clock_describe_rates*, %struct.scmi_msg_clock_describe_rates** %17, align 8
  %40 = getelementptr inbounds %struct.scmi_msg_clock_describe_rates, %struct.scmi_msg_clock_describe_rates* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i8* @cpu_to_le32(i64 %41)
  %43 = load %struct.scmi_msg_clock_describe_rates*, %struct.scmi_msg_clock_describe_rates** %17, align 8
  %44 = getelementptr inbounds %struct.scmi_msg_clock_describe_rates, %struct.scmi_msg_clock_describe_rates* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %46 = load %struct.scmi_xfer*, %struct.scmi_xfer** %16, align 8
  %47 = call i32 @scmi_do_xfer(%struct.scmi_handle* %45, %struct.scmi_xfer* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %176

51:                                               ; preds = %36
  %52 = load %struct.scmi_msg_resp_clock_describe_rates*, %struct.scmi_msg_resp_clock_describe_rates** %18, align 8
  %53 = getelementptr inbounds %struct.scmi_msg_resp_clock_describe_rates, %struct.scmi_msg_resp_clock_describe_rates* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @le32_to_cpu(i32 %54)
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i64 @NUM_REMAINING(i64 %56)
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @RATE_DISCRETE(i64 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i64, i64* %13, align 8
  %61 = call i64 @NUM_RETURNED(i64 %60)
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %14, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* @SCMI_MAX_NUM_RATES, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %69 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %164

72:                                               ; preds = %51
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %119, label %75

75:                                               ; preds = %72
  %76 = load %struct.scmi_msg_resp_clock_describe_rates*, %struct.scmi_msg_resp_clock_describe_rates** %18, align 8
  %77 = getelementptr inbounds %struct.scmi_msg_resp_clock_describe_rates, %struct.scmi_msg_resp_clock_describe_rates* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @RATE_TO_U64(i32 %80)
  %82 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %83 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i8* %81, i8** %84, align 8
  %85 = load %struct.scmi_msg_resp_clock_describe_rates*, %struct.scmi_msg_resp_clock_describe_rates** %18, align 8
  %86 = getelementptr inbounds %struct.scmi_msg_resp_clock_describe_rates, %struct.scmi_msg_resp_clock_describe_rates* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @RATE_TO_U64(i32 %89)
  %91 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %92 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load %struct.scmi_msg_resp_clock_describe_rates*, %struct.scmi_msg_resp_clock_describe_rates** %18, align 8
  %95 = getelementptr inbounds %struct.scmi_msg_resp_clock_describe_rates, %struct.scmi_msg_resp_clock_describe_rates* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @RATE_TO_U64(i32 %98)
  %100 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %101 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  %103 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %104 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %107 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %111 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %115 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %109, i8* %113, i8* %117)
  br label %164

119:                                              ; preds = %72
  %120 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %121 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds i8*, i8** %123, i64 %124
  store i8** %125, i8*** %8, align 8
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %147, %119
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %14, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %126
  %132 = load %struct.scmi_msg_resp_clock_describe_rates*, %struct.scmi_msg_resp_clock_describe_rates** %18, align 8
  %133 = getelementptr inbounds %struct.scmi_msg_resp_clock_describe_rates, %struct.scmi_msg_resp_clock_describe_rates* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @RATE_TO_U64(i32 %138)
  %140 = load i8**, i8*** %8, align 8
  store i8* %139, i8** %140, align 8
  %141 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %142 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i8**, i8*** %8, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %131
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  %150 = load i8**, i8*** %8, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i32 1
  store i8** %151, i8*** %8, align 8
  br label %126

152:                                              ; preds = %126
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %12, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %12, align 8
  br label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %14, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i64, i64* %15, align 8
  %161 = icmp ne i64 %160, 0
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi i1 [ false, %156 ], [ %161, %159 ]
  br i1 %163, label %36, label %164

164:                                              ; preds = %162, %75, %67
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i64, i64* %12, align 8
  %169 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %170 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i64 %168, i64* %171, align 8
  br label %172

172:                                              ; preds = %167, %164
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %175 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %172, %50
  %177 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %178 = load %struct.scmi_xfer*, %struct.scmi_xfer** %16, align 8
  %179 = call i32 @scmi_xfer_put(%struct.scmi_handle* %177, %struct.scmi_xfer* %178)
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %176, %25
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @NUM_REMAINING(i64) #1

declare dso_local i32 @RATE_DISCRETE(i64) #1

declare dso_local i64 @NUM_RETURNED(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @RATE_TO_U64(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
