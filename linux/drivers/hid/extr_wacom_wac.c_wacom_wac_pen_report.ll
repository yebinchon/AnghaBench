; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pen_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pen_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { i32*, i32*, i64*, %struct.TYPE_4__, %struct.TYPE_3__*, i64, %struct.input_dev* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.input_dev = type { i32 }

@BTN_TOOL_RUBBER = common dso_local global i64 0, align 8
@BTN_TOOL_PEN = common dso_local global i64 0, align 8
@BTN_STYLUS = common dso_local global i64 0, align 8
@BTN_STYLUS2 = common dso_local global i64 0, align 8
@BTN_STYLUS3 = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i64 0, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*)* @wacom_wac_pen_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_pen_report(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca %struct.wacom_wac*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_report* %1, %struct.hid_report** %4, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %13 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.wacom* %13, %struct.wacom** %5, align 8
  %14 = load %struct.wacom*, %struct.wacom** %5, align 8
  %15 = getelementptr inbounds %struct.wacom, %struct.wacom* %14, i32 0, i32 0
  store %struct.wacom_wac* %15, %struct.wacom_wac** %6, align 8
  %16 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %17 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %16, i32 0, i32 6
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %7, align 8
  %19 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %20 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %24 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %28 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %204

32:                                               ; preds = %2
  %33 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %34 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %80, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %44 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i64, i64* @BTN_TOOL_RUBBER, align 8
  %50 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %51 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 %49, i64* %53, align 8
  br label %79

54:                                               ; preds = %42
  %55 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %56 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %63 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @wacom_intuos_get_tool_type(i32 %66)
  %68 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %69 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 %67, i64* %71, align 8
  br label %78

72:                                               ; preds = %54
  %73 = load i64, i64* @BTN_TOOL_PEN, align 8
  %74 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %75 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %61
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79, %39, %32
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %83 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %82, i32 0, i32 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %87 = call i32 @delay_pen_events(%struct.wacom_wac* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %188, label %89

89:                                               ; preds = %80
  %90 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %91 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %188

96:                                               ; preds = %89
  %97 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %98 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  %102 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %103 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %107 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 1
  %111 = or i32 %105, %110
  store i32 %111, i32* %11, align 4
  %112 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %113 = load i64, i64* @BTN_STYLUS, align 8
  %114 = load i32, i32* %11, align 4
  %115 = icmp eq i32 %114, 1
  %116 = zext i1 %115 to i32
  %117 = call i32 @input_report_key(%struct.input_dev* %112, i64 %113, i32 %116)
  %118 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %119 = load i64, i64* @BTN_STYLUS2, align 8
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 2
  %122 = zext i1 %121 to i32
  %123 = call i32 @input_report_key(%struct.input_dev* %118, i64 %119, i32 %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %125 = load i64, i64* @BTN_STYLUS3, align 8
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %126, 3
  %128 = zext i1 %127 to i32
  %129 = call i32 @input_report_key(%struct.input_dev* %124, i64 %125, i32 %128)
  %130 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %131 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 52
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %96
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @wacom_intuos_id_mangle(i32 %138)
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %137, %96
  %141 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %142 = load i64, i64* @BTN_TOUCH, align 8
  %143 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %144 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @input_report_key(%struct.input_dev* %141, i64 %142, i32 %146)
  %148 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %149 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %150 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %149, i32 0, i32 2
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @input_report_key(%struct.input_dev* %148, i64 %153, i32 %154)
  %156 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %157 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %140
  %163 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %164 = load i32, i32* @EV_MSC, align 4
  %165 = load i32, i32* @MSC_SERIAL, align 4
  %166 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %167 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @input_event(%struct.input_dev* %163, i32 %164, i32 %165, i32 %170)
  %172 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %173 = load i32, i32* @ABS_MISC, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %162
  %177 = load i32, i32* %10, align 4
  br label %179

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i32 [ %177, %176 ], [ 0, %178 ]
  %181 = call i32 @input_report_abs(%struct.input_dev* %172, i32 %173, i32 %180)
  br label %182

182:                                              ; preds = %179, %140
  %183 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %184 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 4
  store i32 0, i32* %185, align 8
  %186 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %187 = call i32 @input_sync(%struct.input_dev* %186)
  br label %188

188:                                              ; preds = %182, %89, %80
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %204, label %191

191:                                              ; preds = %188
  %192 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %193 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %192, i32 0, i32 2
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  store i64 0, i64* %195, align 8
  %196 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %197 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 0, i32* %199, align 4
  %200 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %201 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  store i32 0, i32* %203, align 4
  br label %204

204:                                              ; preds = %31, %191, %188
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @wacom_intuos_get_tool_type(i32) #1

declare dso_local i32 @delay_pen_events(%struct.wacom_wac*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @wacom_intuos_id_mangle(i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
