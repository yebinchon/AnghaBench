; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-quirks.c_hid_ignore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-quirks.c_hid_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.hid_device = type { i32, i32, i32, i64, i32, i32 }

@HID_QUIRK_NO_IGNORE = common dso_local global i32 0, align 4
@HID_QUIRK_IGNORE = common dso_local global i32 0, align 4
@USB_DEVICE_ID_CODEMERCS_IOW_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_CODEMERCS_IOW_LAST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LOGITECH_HARMONY_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LOGITECH_HARMONY_LAST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LOGITECH_AUDIOHUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"HOLTEK  B-LINK USB Audio  \00", align 1
@USB_DEVICE_ID_SOUNDGRAPH_IMON_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_SOUNDGRAPH_IMON_LAST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_HANWANG_TABLET_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_HANWANG_TABLET_LAST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_JESS_YUREX = common dso_local global i32 0, align 4
@HID_TYPE_USBNONE = common dso_local global i64 0, align 8
@USB_DEVICE_ID_VELLEMAN_K8055_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_VELLEMAN_K8055_LAST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_VELLEMAN_K8061_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_VELLEMAN_K8061_LAST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_ATMEL_V_USB = common dso_local global i32 0, align 4
@BUS_USB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"www.masterkit.ru MA901\00", align 1
@elan_acpi_id = common dso_local global %struct.TYPE_2__* null, align 8
@HID_TYPE_USBMOUSE = common dso_local global i64 0, align 8
@hid_mouse_ignore_list = common dso_local global i32 0, align 4
@hid_ignore_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_ignore(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HID_QUIRK_NO_IGNORE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %219

12:                                               ; preds = %1
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HID_QUIRK_IGNORE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %219

20:                                               ; preds = %12
  %21 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %199 [
    i32 134, label %24
    i32 130, label %38
    i32 129, label %65
    i32 132, label %79
    i32 131, label %93
    i32 128, label %107
    i32 135, label %133
    i32 133, label %153
  ]

24:                                               ; preds = %20
  %25 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %26 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @USB_DEVICE_ID_CODEMERCS_IOW_FIRST, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %32 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @USB_DEVICE_ID_CODEMERCS_IOW_LAST, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %219

37:                                               ; preds = %30, %24
  br label %199

38:                                               ; preds = %20
  %39 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @USB_DEVICE_ID_LOGITECH_HARMONY_FIRST, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %46 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @USB_DEVICE_ID_LOGITECH_HARMONY_LAST, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %219

51:                                               ; preds = %44, %38
  %52 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %53 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @USB_DEVICE_ID_LOGITECH_AUDIOHUB, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %59 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @strcmp(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 1, i32* %2, align 4
  br label %219

64:                                               ; preds = %57, %51
  br label %199

65:                                               ; preds = %20
  %66 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %67 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @USB_DEVICE_ID_SOUNDGRAPH_IMON_FIRST, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %73 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @USB_DEVICE_ID_SOUNDGRAPH_IMON_LAST, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %219

78:                                               ; preds = %71, %65
  br label %199

79:                                               ; preds = %20
  %80 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %81 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @USB_DEVICE_ID_HANWANG_TABLET_FIRST, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %87 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @USB_DEVICE_ID_HANWANG_TABLET_LAST, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %2, align 4
  br label %219

92:                                               ; preds = %85, %79
  br label %199

93:                                               ; preds = %20
  %94 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %95 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @USB_DEVICE_ID_JESS_YUREX, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %101 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HID_TYPE_USBNONE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 1, i32* %2, align 4
  br label %219

106:                                              ; preds = %99, %93
  br label %199

107:                                              ; preds = %20
  %108 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %109 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @USB_DEVICE_ID_VELLEMAN_K8055_FIRST, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %115 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @USB_DEVICE_ID_VELLEMAN_K8055_LAST, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %131, label %119

119:                                              ; preds = %113, %107
  %120 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %121 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @USB_DEVICE_ID_VELLEMAN_K8061_FIRST, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %127 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @USB_DEVICE_ID_VELLEMAN_K8061_LAST, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125, %113
  store i32 1, i32* %2, align 4
  br label %219

132:                                              ; preds = %125, %119
  br label %199

133:                                              ; preds = %20
  %134 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %135 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @USB_DEVICE_ID_ATMEL_V_USB, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %133
  %140 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %141 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @BUS_USB, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %147 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @strncmp(i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 22)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 1, i32* %2, align 4
  br label %219

152:                                              ; preds = %145, %139, %133
  br label %199

153:                                              ; preds = %20
  %154 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %155 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 1025
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %160 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 1024
  br i1 %162, label %163, label %198

163:                                              ; preds = %158, %153
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %194, %163
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @elan_acpi_id, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %197

173:                                              ; preds = %164
  %174 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %175 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @elan_acpi_id, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @elan_acpi_id, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @strlen(i8* %188)
  %190 = call i32 @strncmp(i32 %176, i8* %182, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %173
  store i32 1, i32* %2, align 4
  br label %219

193:                                              ; preds = %173
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %4, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %4, align 4
  br label %164

197:                                              ; preds = %164
  br label %198

198:                                              ; preds = %197, %158
  br label %199

199:                                              ; preds = %20, %198, %152, %132, %106, %92, %78, %64, %37
  %200 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %201 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @HID_TYPE_USBMOUSE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %207 = load i32, i32* @hid_mouse_ignore_list, align 4
  %208 = call i64 @hid_match_id(%struct.hid_device* %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  store i32 1, i32* %2, align 4
  br label %219

211:                                              ; preds = %205, %199
  %212 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %213 = load i32, i32* @hid_ignore_list, align 4
  %214 = call i64 @hid_match_id(%struct.hid_device* %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  %216 = xor i1 %215, true
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %211, %210, %192, %151, %131, %105, %91, %77, %63, %50, %36, %19, %11
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @hid_match_id(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
