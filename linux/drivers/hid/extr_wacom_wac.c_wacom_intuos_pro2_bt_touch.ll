; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_pro2_bt_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_pro2_bt_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32, %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@SW_MUTE_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*)* @wacom_intuos_pro2_bt_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_intuos_pro2_bt_touch(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  store i32 8, i32* %3, align 4
  store i32 4, i32* %4, align 4
  store i32 43, i32* %5, align 4
  %20 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %21 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %20, i32 0, i32 3
  %22 = load %struct.input_dev*, %struct.input_dev** %21, align 8
  store %struct.input_dev* %22, %struct.input_dev** %6, align 8
  %23 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %24 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  store i32 5, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %171, %1
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %174

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 43
  %33 = add nsw i32 %32, 109
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 127
  store i32 %40, i32* %12, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 128
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %29
  br label %171

48:                                               ; preds = %29
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %54 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %58 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @min(i32 %56, i32 %59)
  store i32 %60, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %144, %55
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %147

65:                                               ; preds = %61
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %67, 8
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8* %71, i8** %14, align 8
  %72 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @input_mt_get_slot_by_key(%struct.input_dev* %72, i8 zeroext %75)
  store i32 %76, i32* %15, align 4
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = call i32 @get_unaligned_le16(i8* %78)
  store i32 %79, i32* %16, align 4
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = call i32 @get_unaligned_le16(i8* %81)
  store i32 %82, i32* %17, align 4
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 6
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %88 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %89 = call zeroext i8 @input_abs_get_res(%struct.input_dev* %87, i32 %88)
  %90 = zext i8 %89 to i32
  %91 = mul nsw i32 %86, %90
  store i32 %91, i32* %18, align 4
  %92 = load i8*, i8** %14, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 7
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %97 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %98 = call zeroext i8 @input_abs_get_res(%struct.input_dev* %96, i32 %97)
  %99 = zext i8 %98 to i32
  %100 = mul nsw i32 %95, %99
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %65
  br label %144

104:                                              ; preds = %65
  %105 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @input_mt_slot(%struct.input_dev* %105, i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %109 = load i32, i32* @MT_TOOL_FINGER, align 4
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 1
  %115 = trunc i32 %114 to i8
  %116 = call i32 @input_mt_report_slot_state(%struct.input_dev* %108, i32 %109, i8 zeroext %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %118 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @input_report_abs(%struct.input_dev* %117, i32 %118, i32 %119)
  %121 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %122 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @input_report_abs(%struct.input_dev* %121, i32 %122, i32 %123)
  %125 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %126 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @max(i32 %127, i32 %128)
  %130 = call i32 @input_report_abs(%struct.input_dev* %125, i32 %126, i32 %129)
  %131 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %132 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %19, align 4
  %135 = call i32 @min(i32 %133, i32 %134)
  %136 = call i32 @input_report_abs(%struct.input_dev* %131, i32 %132, i32 %135)
  %137 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %138 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp sgt i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @input_report_abs(%struct.input_dev* %137, i32 %138, i32 %142)
  br label %144

144:                                              ; preds = %104, %103
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %61

147:                                              ; preds = %61
  %148 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %149 = call i32 @input_mt_sync_frame(%struct.input_dev* %148)
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %152 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %156 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %147
  %160 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %161 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %160, i32 0, i32 1
  store i32 0, i32* %161, align 8
  %162 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %163 = call i32 @wacom_wac_finger_count_touches(%struct.wacom_wac* %162)
  %164 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %165 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i32 %163, i32* %167, align 4
  %168 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %169 = call i32 @input_sync(%struct.input_dev* %168)
  br label %170

170:                                              ; preds = %159, %147
  br label %171

171:                                              ; preds = %170, %47
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %26

174:                                              ; preds = %26
  %175 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %176 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %181 = load i32, i32* @SW_MUTE_DEVICE, align 4
  %182 = load i8*, i8** %7, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 281
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = ashr i32 %185, 7
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 @input_report_switch(%struct.input_dev* %180, i32 %181, i32 %189)
  %191 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %192 = call i32 @input_sync(%struct.input_dev* %191)
  br label %193

193:                                              ; preds = %179, %174
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev*, i8 zeroext) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local zeroext i8 @input_abs_get_res(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @wacom_wac_finger_count_touches(%struct.wacom_wac*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_switch(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
