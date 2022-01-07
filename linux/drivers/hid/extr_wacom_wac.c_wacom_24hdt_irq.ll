; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_24hdt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_24hdt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.input_dev* }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.input_dev = type { i32 }

@WACOM_BYTES_PER_24HDT_PACKET = common dso_local global i32 0, align 4
@WACOM_27QHDT = common dso_local global i64 0, align 8
@WACOM_BYTES_PER_QHDTHID_PACKET = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_24hdt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_24hdt_irq(%struct.wacom_wac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  %21 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %22 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %21, i32 0, i32 4
  %23 = load %struct.input_dev*, %struct.input_dev** %22, align 8
  store %struct.input_dev* %23, %struct.input_dev** %4, align 8
  %24 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %25 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 61
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %31 = load i32, i32* @WACOM_BYTES_PER_24HDT_PACKET, align 4
  store i32 %31, i32* %10, align 4
  store i32 2, i32* %11, align 4
  %32 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %33 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %1
  %39 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %40 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %47 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %237

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %38, %1
  %55 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %56 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WACOM_27QHDT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 63
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  store i32 %65, i32* %7, align 4
  store i32 10, i32* %9, align 4
  %66 = load i32, i32* @WACOM_BYTES_PER_QHDTHID_PACKET, align 4
  store i32 %66, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %73 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %77 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @min(i32 %75, i32 %78)
  store i32 %79, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %212, %74
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %215

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %99 = call i64 @report_touch_events(%struct.wacom_wac* %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %97, %84
  %102 = phi i1 [ false, %84 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %13, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = call i32 @input_mt_get_slot_by_key(%struct.input_dev* %104, i8 zeroext %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %212

115:                                              ; preds = %101
  %116 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @input_mt_slot(%struct.input_dev* %116, i32 %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %120 = load i32, i32* @MT_TOOL_FINGER, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @input_mt_report_slot_state(%struct.input_dev* %119, i32 %120, i32 %121)
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %211

125:                                              ; preds = %115
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = call i32 @get_unaligned_le16(i8* %130)
  store i32 %131, i32* %15, align 4
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 4
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %132, i64 %137
  %139 = call i32 @get_unaligned_le16(i8* %138)
  store i32 %139, i32* %16, align 4
  %140 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %141 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @input_report_abs(%struct.input_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %145 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @input_report_abs(%struct.input_dev* %144, i32 %145, i32 %146)
  %148 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %149 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @WACOM_27QHDT, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %210

154:                                              ; preds = %125
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = call i32 @get_unaligned_le16(i8* %159)
  store i32 %160, i32* %17, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = call i32 @get_unaligned_le16(i8* %165)
  store i32 %166, i32* %18, align 4
  %167 = load i8*, i8** %5, align 8
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 10
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = call i32 @get_unaligned_le16(i8* %171)
  store i32 %172, i32* %19, align 4
  %173 = load i8*, i8** %5, align 8
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 12
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = call i32 @get_unaligned_le16(i8* %177)
  store i32 %178, i32* %20, align 4
  %179 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %180 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %20, align 4
  %183 = call i32 @min(i32 %181, i32 %182)
  %184 = call i32 @input_report_abs(%struct.input_dev* %179, i32 %180, i32 %183)
  %185 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %186 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %20, align 4
  %189 = call i32 @min(i32 %187, i32 %188)
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @int_dist(i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = add nsw i32 %189, %194
  %196 = call i32 @input_report_abs(%struct.input_dev* %185, i32 %186, i32 %195)
  %197 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %198 = load i32, i32* @ABS_MT_WIDTH_MINOR, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %20, align 4
  %201 = call i32 @min(i32 %199, i32 %200)
  %202 = call i32 @input_report_abs(%struct.input_dev* %197, i32 %198, i32 %201)
  %203 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %204 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %20, align 4
  %207 = icmp sgt i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @input_report_abs(%struct.input_dev* %203, i32 %204, i32 %208)
  br label %210

210:                                              ; preds = %154, %125
  br label %211

211:                                              ; preds = %210, %115
  br label %212

212:                                              ; preds = %211, %114
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %6, align 4
  br label %80

215:                                              ; preds = %80
  %216 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %217 = call i32 @input_mt_sync_frame(%struct.input_dev* %216)
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %220 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sub nsw i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %224 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp sle i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %215
  %228 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %229 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %228, i32 0, i32 1
  store i32 0, i32* %229, align 8
  %230 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %231 = call i64 @wacom_wac_finger_count_touches(%struct.wacom_wac* %230)
  %232 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %233 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %232, i32 0, i32 2
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store i64 %231, i64* %235, align 8
  br label %236

236:                                              ; preds = %227, %215
  store i32 1, i32* %2, align 4
  br label %237

237:                                              ; preds = %236, %52
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @report_touch_events(%struct.wacom_wac*) #1

declare dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev*, i8 zeroext) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @int_dist(i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i64 @wacom_wac_finger_count_touches(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
