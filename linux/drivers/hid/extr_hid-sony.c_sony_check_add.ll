; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_check_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_check_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 }

@DUALSHOCK4_CONTROLLER_BT = common dso_local global i32 0, align 4
@MOTION_CONTROLLER_BT = common dso_local global i32 0, align 4
@NAVIGATION_CONTROLLER_BT = common dso_local global i32 0, align 4
@SIXAXIS_CONTROLLER_BT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"UNIQ does not contain a MAC address; duplicate check skipped\0A\00", align 1
@DUALSHOCK4_CONTROLLER_USB = common dso_local global i32 0, align 4
@DUALSHOCK4_DONGLE = common dso_local global i32 0, align 4
@DS4_FEATURE_REPORT_0x81_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"failed to retrieve feature report 0x81 with the DualShock 4 MAC address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%pMR\00", align 1
@SIXAXIS_CONTROLLER_USB = common dso_local global i32 0, align 4
@NAVIGATION_CONTROLLER_USB = common dso_local global i32 0, align 4
@SIXAXIS_REPORT_0xF2_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"failed to retrieve feature report 0xf2 with the Sixaxis MAC address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sony_sc*)* @sony_check_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_check_add(%struct.sony_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sony_sc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sony_sc* %0, %struct.sony_sc** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %8 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DUALSHOCK4_CONTROLLER_BT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %1
  %14 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %15 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MOTION_CONTROLLER_BT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %13
  %21 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %22 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NAVIGATION_CONTROLLER_BT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %29 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SIXAXIS_CONTROLLER_BT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27, %20, %13, %1
  %35 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %36 = call i64 @sony_get_bt_devaddr(%struct.sony_sc* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %40 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @hid_warn(%struct.TYPE_4__* %41, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %194

43:                                               ; preds = %34
  br label %187

44:                                               ; preds = %27
  %45 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %46 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DUALSHOCK4_CONTROLLER_USB, align 4
  %49 = load i32, i32* @DUALSHOCK4_DONGLE, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %104

53:                                               ; preds = %44
  %54 = load i32, i32* @DS4_FEATURE_REPORT_0x81_SIZE, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32* @kmalloc(i32 %54, i32 %55)
  store i32* %56, i32** %4, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %194

62:                                               ; preds = %53
  %63 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %64 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @DS4_FEATURE_REPORT_0x81_SIZE, align 4
  %68 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %69 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %70 = call i32 @hid_hw_raw_request(%struct.TYPE_4__* %65, i32 129, i32* %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @DS4_FEATURE_REPORT_0x81_SIZE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %62
  %75 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %76 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @hid_err(%struct.TYPE_4__* %77, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  br label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %83 ]
  store i32 %87, i32* %6, align 4
  br label %190

88:                                               ; preds = %62
  %89 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %90 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = call i32 @memcpy(i32* %91, i32* %93, i32 8)
  %95 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %96 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %101 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @snprintf(i32 %99, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %102)
  br label %186

104:                                              ; preds = %44
  %105 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %106 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SIXAXIS_CONTROLLER_USB, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %104
  %112 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %113 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @NAVIGATION_CONTROLLER_USB, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %184

118:                                              ; preds = %111, %104
  %119 = load i32, i32* @SIXAXIS_REPORT_0xF2_SIZE, align 4
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i32* @kmalloc(i32 %119, i32 %120)
  store i32* %121, i32** %4, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %194

127:                                              ; preds = %118
  %128 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %129 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* @SIXAXIS_REPORT_0xF2_SIZE, align 4
  %133 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %134 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %135 = call i32 @hid_hw_raw_request(%struct.TYPE_4__* %130, i32 242, i32* %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @SIXAXIS_REPORT_0xF2_SIZE, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %127
  %140 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %141 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = call i32 @hid_err(%struct.TYPE_4__* %142, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %6, align 4
  br label %151

148:                                              ; preds = %139
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  br label %151

151:                                              ; preds = %148, %146
  %152 = phi i32 [ %147, %146 ], [ %150, %148 ]
  store i32 %152, i32* %6, align 4
  br label %190

153:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %171, %153
  %155 = load i32, i32* %5, align 4
  %156 = icmp slt i32 %155, 6
  br i1 %156, label %157, label %174

157:                                              ; preds = %154
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 4, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %165 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sub nsw i32 5, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %163, i32* %170, align 4
  br label %171

171:                                              ; preds = %157
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %154

174:                                              ; preds = %154
  %175 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %176 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %181 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @snprintf(i32 %179, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %182)
  br label %185

184:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %194

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185, %88
  br label %187

187:                                              ; preds = %186, %43
  %188 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %189 = call i32 @sony_check_add_dev_list(%struct.sony_sc* %188)
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %187, %151, %86
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @kfree(i32* %191)
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %190, %184, %124, %59, %38
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i64 @sony_get_bt_devaddr(%struct.sony_sc*) #1

declare dso_local i32 @hid_warn(%struct.TYPE_4__*, i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.TYPE_4__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @hid_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32*) #1

declare dso_local i32 @sony_check_add_dev_list(%struct.sony_sc*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
