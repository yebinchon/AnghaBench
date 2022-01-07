; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_wac_pen_serial_enforce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_wac_pen_serial_enforce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32, %struct.hid_field** }
%struct.hid_field = type { i32, i32, i32, %struct.hid_usage* }
%struct.hid_usage = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { i32*, i32*, i32, %struct.wacom_features }
%struct.wacom_features = type { i32 }

@WACOM_QUIRK_TOOLSERIAL = common dso_local global i32 0, align 4
@HID_DG_INRANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @wacom_wac_pen_serial_enforce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_wac_pen_serial_enforce(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wacom*, align 8
  %11 = alloca %struct.wacom_wac*, align 8
  %12 = alloca %struct.wacom_features*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hid_field*, align 8
  %18 = alloca %struct.hid_usage*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %24 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %23)
  store %struct.wacom* %24, %struct.wacom** %10, align 8
  %25 = load %struct.wacom*, %struct.wacom** %10, align 8
  %26 = getelementptr inbounds %struct.wacom, %struct.wacom* %25, i32 0, i32 0
  store %struct.wacom_wac* %26, %struct.wacom_wac** %11, align 8
  %27 = load %struct.wacom_wac*, %struct.wacom_wac** %11, align 8
  %28 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %27, i32 0, i32 3
  store %struct.wacom_features* %28, %struct.wacom_features** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = load %struct.wacom_wac*, %struct.wacom_wac** %11, align 8
  %30 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %4
  %36 = load %struct.wacom_features*, %struct.wacom_features** %12, align 8
  %37 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @WACOM_QUIRK_TOOLSERIAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35, %4
  store i32 0, i32* %5, align 4
  br label %184

43:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %152, %43
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %47 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %155

50:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %148, %50
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %54 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %53, i32 0, i32 1
  %55 = load %struct.hid_field**, %struct.hid_field*** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %55, i64 %57
  %59 = load %struct.hid_field*, %struct.hid_field** %58, align 8
  %60 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %52, %61
  br i1 %62, label %63, label %151

63:                                               ; preds = %51
  %64 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %65 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %64, i32 0, i32 1
  %66 = load %struct.hid_field**, %struct.hid_field*** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %66, i64 %68
  %70 = load %struct.hid_field*, %struct.hid_field** %69, align 8
  store %struct.hid_field* %70, %struct.hid_field** %17, align 8
  %71 = load %struct.hid_field*, %struct.hid_field** %17, align 8
  %72 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %71, i32 0, i32 3
  %73 = load %struct.hid_usage*, %struct.hid_usage** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %73, i64 %75
  store %struct.hid_usage* %76, %struct.hid_usage** %18, align 8
  %77 = load %struct.hid_usage*, %struct.hid_usage** %18, align 8
  %78 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @wacom_equivalent_usage(i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @HID_DG_INRANGE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %63
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 130
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 129
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 128
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %148

94:                                               ; preds = %90, %87, %84, %63
  %95 = load %struct.hid_field*, %struct.hid_field** %17, align 8
  %96 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %20, align 4
  %98 = load %struct.hid_field*, %struct.hid_field** %17, align 8
  %99 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %21, align 4
  %101 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %21, align 4
  %107 = mul i32 %105, %106
  %108 = add i32 %104, %107
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @hid_field_extract(%struct.hid_device* %101, i32* %103, i32 %108, i32 %109)
  store i32 %110, i32* %22, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* @HID_DG_INRANGE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %94
  %115 = load i32, i32* %22, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %22, align 4
  br label %119

119:                                              ; preds = %114, %94
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  store i32 1, i32* %13, align 4
  %123 = load i32, i32* %19, align 4
  switch i32 %123, label %145 [
    i32 130, label %124
    i32 129, label %130
    i32 128, label %139
  ]

124:                                              ; preds = %122
  %125 = load i32, i32* %22, align 4
  %126 = load %struct.wacom_wac*, %struct.wacom_wac** %11, align 8
  %127 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %125, i32* %129, align 4
  br label %145

130:                                              ; preds = %122
  %131 = load i32, i32* %22, align 4
  %132 = shl i32 %131, 32
  %133 = load %struct.wacom_wac*, %struct.wacom_wac** %11, align 8
  %134 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %132
  store i32 %138, i32* %136, align 4
  br label %145

139:                                              ; preds = %122
  %140 = load i32, i32* %22, align 4
  %141 = load %struct.wacom_wac*, %struct.wacom_wac** %11, align 8
  %142 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %122, %139, %130, %124
  br label %147

146:                                              ; preds = %119
  store i32 1, i32* %14, align 4
  br label %147

147:                                              ; preds = %146, %145
  br label %148

148:                                              ; preds = %147, %93
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %51

151:                                              ; preds = %51
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %44

155:                                              ; preds = %44
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %160 = load %struct.wacom_wac*, %struct.wacom_wac** %11, align 8
  %161 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %160, i32 0, i32 2
  %162 = call i32 @wacom_wac_queue_flush(%struct.hid_device* %159, i32* %161)
  br label %174

163:                                              ; preds = %155
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %168 = load %struct.wacom_wac*, %struct.wacom_wac** %11, align 8
  %169 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %168, i32 0, i32 2
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @wacom_wac_queue_insert(%struct.hid_device* %167, i32* %169, i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %166, %163
  br label %174

174:                                              ; preds = %173, %158
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  br label %181

181:                                              ; preds = %177, %174
  %182 = phi i1 [ false, %174 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %181, %42
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

declare dso_local i32 @hid_field_extract(%struct.hid_device*, i32*, i32, i32) #1

declare dso_local i32 @wacom_wac_queue_flush(%struct.hid_device*, i32*) #1

declare dso_local i32 @wacom_wac_queue_insert(%struct.hid_device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
