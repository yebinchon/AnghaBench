; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_debugfs.c_picolcd_debug_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_debugfs.c_picolcd_debug_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { i32 }
%struct.hid_device = type { i32, i32 }
%struct.hid_report = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"report %s (%d, size=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"REPORT_ERROR_CODE\00", align 1
@error_codes = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"\09Error code 0x%02x (%s) in reply to report 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\09Error code 0x%02x in reply to report 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"REPORT_KEY_STATE\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\09No key pressed\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\09One key pressed: 0x%02x (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\09Two keys pressed: 0x%02x (%d), 0x%02x (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"REPORT_IR_DATA\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\09Unexpectedly 0 data length\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"\09Data length: %d\0A\09IR Data: \00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"\09Overflowing data length: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"REPORT_EE_DATA\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\09Data address: 0x%02x%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\09Data length: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"\09No data\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"\09Data: \00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"\09Data overflowed\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"REPORT_MEMORY\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"\09Data address: 0x%02x%02x%02x\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"\09Not supported\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"REPORT_VERSION\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"\09Firmware version: %d.%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"REPORT_BL_ERASE_MEMORY\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"REPORT_BL_READ_MEMORY\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"REPORT_BL_WRITE_MEMORY\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"REPORT_DEVID\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"\09Serial: 0x%02x%02x%02x%02x\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"\09Type: 0x%02x\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"REPORT_SPLASH_SIZE\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"\09Total splash space: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"\09Used splash space: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"REPORT_HOOK_VERSION\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@BUFF_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @picolcd_debug_raw_event(%struct.picolcd_data* %0, %struct.hid_device* %1, %struct.hid_report* %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.picolcd_data*, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_report*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.picolcd_data* %0, %struct.picolcd_data** %6, align 8
  store %struct.hid_device* %1, %struct.hid_device** %7, align 8
  store %struct.hid_report* %2, %struct.hid_report** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 1
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %553

17:                                               ; preds = %5
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i8* @kmalloc(i32 256, i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %553

23:                                               ; preds = %17
  %24 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %25 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %536 [
    i32 134, label %27
    i32 131, label %72
    i32 132, label %124
    i32 135, label %184
    i32 130, label %256
    i32 128, label %386
    i32 139, label %408
    i32 138, label %419
    i32 137, label %430
    i32 136, label %441
    i32 129, label %477
    i32 133, label %514
  ]

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %30 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @hid_debug_event(%struct.hid_device* %35, i8* %36)
  %38 = load i64*, i64** %9, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = load i8**, i8*** @error_codes, align 8
  %42 = call i64 @ARRAY_SIZE(i8** %41)
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %27
  %45 = load i8*, i8** %11, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  %49 = load i8**, i8*** @error_codes, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 256, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %48, i8* %54, i64 %57)
  br label %68

59:                                               ; preds = %27
  %60 = load i8*, i8** %11, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %60, i32 256, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %63, i64 %66)
  br label %68

68:                                               ; preds = %59, %44
  %69 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @hid_debug_event(%struct.hid_device* %69, i8* %70)
  br label %547

72:                                               ; preds = %23
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %75 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 1
  %79 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %73, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @hid_debug_event(%struct.hid_device* %80, i8* %81)
  %83 = load i64*, i64** %9, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %72
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %88, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %120

90:                                               ; preds = %72
  %91 = load i64*, i64** %9, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i8*, i8** %11, align 8
  %97 = load i64*, i64** %9, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %96, i32 256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %99, i64 %102)
  br label %119

104:                                              ; preds = %90
  %105 = load i8*, i8** %11, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %105, i32 256, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %108, i64 %111, i64 %114, i64 %117)
  br label %119

119:                                              ; preds = %104, %95
  br label %120

120:                                              ; preds = %119, %87
  %121 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @hid_debug_event(%struct.hid_device* %121, i8* %122)
  br label %547

124:                                              ; preds = %23
  %125 = load i8*, i8** %11, align 8
  %126 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %127 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 1
  %131 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %125, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %128, i32 %130)
  %132 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @hid_debug_event(%struct.hid_device* %132, i8* %133)
  %135 = load i64*, i64** %9, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %124
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %140, i32 256, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %142 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @hid_debug_event(%struct.hid_device* %142, i8* %143)
  br label %183

145:                                              ; preds = %124
  %146 = load i64*, i64** %9, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ule i64 %149, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %145
  %154 = load i8*, i8** %11, align 8
  %155 = load i64*, i64** %9, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %154, i32 256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i64 %157)
  %159 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 @hid_debug_event(%struct.hid_device* %159, i8* %160)
  %162 = load i8*, i8** %11, align 8
  %163 = load i64*, i64** %9, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 2
  %165 = load i64*, i64** %9, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @dump_buff_as_hex(i8* %162, i32 256, i64* %164, i64 %167)
  %169 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 @hid_debug_event(%struct.hid_device* %169, i8* %170)
  br label %182

172:                                              ; preds = %145
  %173 = load i8*, i8** %11, align 8
  %174 = load i64*, i64** %9, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 1
  %176 = load i64, i64* %175, align 8
  %177 = sub i64 %176, 1
  %178 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %173, i32 256, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i64 %177)
  %179 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @hid_debug_event(%struct.hid_device* %179, i8* %180)
  br label %182

182:                                              ; preds = %172, %153
  br label %183

183:                                              ; preds = %182, %139
  br label %547

184:                                              ; preds = %23
  %185 = load i8*, i8** %11, align 8
  %186 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %187 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %10, align 4
  %190 = sub nsw i32 %189, 1
  %191 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %185, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %188, i32 %190)
  %192 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = call i32 @hid_debug_event(%struct.hid_device* %192, i8* %193)
  %195 = load i8*, i8** %11, align 8
  %196 = load i64*, i64** %9, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64*, i64** %9, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %195, i32 256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 %198, i64 %201)
  %203 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %204 = load i8*, i8** %11, align 8
  %205 = call i32 @hid_debug_event(%struct.hid_device* %203, i8* %204)
  %206 = load i8*, i8** %11, align 8
  %207 = load i64*, i64** %9, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 3
  %209 = load i64, i64* %208, align 8
  %210 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %206, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i64 %209)
  %211 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 @hid_debug_event(%struct.hid_device* %211, i8* %212)
  %214 = load i64*, i64** %9, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %184
  %219 = load i8*, i8** %11, align 8
  %220 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %219, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %221 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %222 = load i8*, i8** %11, align 8
  %223 = call i32 @hid_debug_event(%struct.hid_device* %221, i8* %222)
  br label %255

224:                                              ; preds = %184
  %225 = load i64*, i64** %9, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 3
  %227 = load i64, i64* %226, align 8
  %228 = add i64 %227, 4
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = icmp ule i64 %228, %230
  br i1 %231, label %232, label %248

232:                                              ; preds = %224
  %233 = load i8*, i8** %11, align 8
  %234 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %233, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %235 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %236 = load i8*, i8** %11, align 8
  %237 = call i32 @hid_debug_event(%struct.hid_device* %235, i8* %236)
  %238 = load i8*, i8** %11, align 8
  %239 = load i64*, i64** %9, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 4
  %241 = load i64*, i64** %9, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 3
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @dump_buff_as_hex(i8* %238, i32 256, i64* %240, i64 %243)
  %245 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %246 = load i8*, i8** %11, align 8
  %247 = call i32 @hid_debug_event(%struct.hid_device* %245, i8* %246)
  br label %254

248:                                              ; preds = %224
  %249 = load i8*, i8** %11, align 8
  %250 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %249, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %251 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = call i32 @hid_debug_event(%struct.hid_device* %251, i8* %252)
  br label %254

254:                                              ; preds = %248, %232
  br label %255

255:                                              ; preds = %254, %218
  br label %547

256:                                              ; preds = %23
  %257 = load i8*, i8** %11, align 8
  %258 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %259 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %10, align 4
  %262 = sub nsw i32 %261, 1
  %263 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %257, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %260, i32 %262)
  %264 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %265 = load i8*, i8** %11, align 8
  %266 = call i32 @hid_debug_event(%struct.hid_device* %264, i8* %265)
  %267 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %268 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  switch i32 %269, label %379 [
    i32 2, label %270
    i32 3, label %323
  ]

270:                                              ; preds = %256
  %271 = load i8*, i8** %11, align 8
  %272 = load i64*, i64** %9, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 2
  %274 = load i64, i64* %273, align 8
  %275 = load i64*, i64** %9, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 1
  %277 = load i64, i64* %276, align 8
  %278 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %271, i32 256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 %274, i64 %277)
  %279 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %280 = load i8*, i8** %11, align 8
  %281 = call i32 @hid_debug_event(%struct.hid_device* %279, i8* %280)
  %282 = load i8*, i8** %11, align 8
  %283 = load i64*, i64** %9, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 3
  %285 = load i64, i64* %284, align 8
  %286 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %282, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i64 %285)
  %287 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %288 = load i8*, i8** %11, align 8
  %289 = call i32 @hid_debug_event(%struct.hid_device* %287, i8* %288)
  %290 = load i64*, i64** %9, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 3
  %292 = load i64, i64* %291, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %270
  %295 = load i8*, i8** %11, align 8
  %296 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %295, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %322

297:                                              ; preds = %270
  %298 = load i64*, i64** %9, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 3
  %300 = load i64, i64* %299, align 8
  %301 = add i64 %300, 4
  %302 = load i32, i32* %10, align 4
  %303 = sext i32 %302 to i64
  %304 = icmp ule i64 %301, %303
  br i1 %304, label %305, label %318

305:                                              ; preds = %297
  %306 = load i8*, i8** %11, align 8
  %307 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %306, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %308 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %309 = load i8*, i8** %11, align 8
  %310 = call i32 @hid_debug_event(%struct.hid_device* %308, i8* %309)
  %311 = load i8*, i8** %11, align 8
  %312 = load i64*, i64** %9, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 4
  %314 = load i64*, i64** %9, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 3
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @dump_buff_as_hex(i8* %311, i32 256, i64* %313, i64 %316)
  br label %321

318:                                              ; preds = %297
  %319 = load i8*, i8** %11, align 8
  %320 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %319, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  br label %321

321:                                              ; preds = %318, %305
  br label %322

322:                                              ; preds = %321, %294
  br label %382

323:                                              ; preds = %256
  %324 = load i8*, i8** %11, align 8
  %325 = load i64*, i64** %9, align 8
  %326 = getelementptr inbounds i64, i64* %325, i64 3
  %327 = load i64, i64* %326, align 8
  %328 = load i64*, i64** %9, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 2
  %330 = load i64, i64* %329, align 8
  %331 = load i64*, i64** %9, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 1
  %333 = load i64, i64* %332, align 8
  %334 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %324, i32 256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i64 %327, i64 %330, i64 %333)
  %335 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %336 = load i8*, i8** %11, align 8
  %337 = call i32 @hid_debug_event(%struct.hid_device* %335, i8* %336)
  %338 = load i8*, i8** %11, align 8
  %339 = load i64*, i64** %9, align 8
  %340 = getelementptr inbounds i64, i64* %339, i64 4
  %341 = load i64, i64* %340, align 8
  %342 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %338, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i64 %341)
  %343 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %344 = load i8*, i8** %11, align 8
  %345 = call i32 @hid_debug_event(%struct.hid_device* %343, i8* %344)
  %346 = load i64*, i64** %9, align 8
  %347 = getelementptr inbounds i64, i64* %346, i64 4
  %348 = load i64, i64* %347, align 8
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %323
  %351 = load i8*, i8** %11, align 8
  %352 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %351, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %378

353:                                              ; preds = %323
  %354 = load i64*, i64** %9, align 8
  %355 = getelementptr inbounds i64, i64* %354, i64 4
  %356 = load i64, i64* %355, align 8
  %357 = add i64 %356, 5
  %358 = load i32, i32* %10, align 4
  %359 = sext i32 %358 to i64
  %360 = icmp ule i64 %357, %359
  br i1 %360, label %361, label %374

361:                                              ; preds = %353
  %362 = load i8*, i8** %11, align 8
  %363 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %362, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %364 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %365 = load i8*, i8** %11, align 8
  %366 = call i32 @hid_debug_event(%struct.hid_device* %364, i8* %365)
  %367 = load i8*, i8** %11, align 8
  %368 = load i64*, i64** %9, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 5
  %370 = load i64*, i64** %9, align 8
  %371 = getelementptr inbounds i64, i64* %370, i64 4
  %372 = load i64, i64* %371, align 8
  %373 = call i32 @dump_buff_as_hex(i8* %367, i32 256, i64* %369, i64 %372)
  br label %377

374:                                              ; preds = %353
  %375 = load i8*, i8** %11, align 8
  %376 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %375, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  br label %377

377:                                              ; preds = %374, %361
  br label %378

378:                                              ; preds = %377, %350
  br label %382

379:                                              ; preds = %256
  %380 = load i8*, i8** %11, align 8
  %381 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %380, i32 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  br label %382

382:                                              ; preds = %379, %378, %322
  %383 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %384 = load i8*, i8** %11, align 8
  %385 = call i32 @hid_debug_event(%struct.hid_device* %383, i8* %384)
  br label %547

386:                                              ; preds = %23
  %387 = load i8*, i8** %11, align 8
  %388 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %389 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %10, align 4
  %392 = sub nsw i32 %391, 1
  %393 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %387, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %390, i32 %392)
  %394 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %395 = load i8*, i8** %11, align 8
  %396 = call i32 @hid_debug_event(%struct.hid_device* %394, i8* %395)
  %397 = load i8*, i8** %11, align 8
  %398 = load i64*, i64** %9, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 2
  %400 = load i64, i64* %399, align 8
  %401 = load i64*, i64** %9, align 8
  %402 = getelementptr inbounds i64, i64* %401, i64 1
  %403 = load i64, i64* %402, align 8
  %404 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %397, i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i64 %400, i64 %403)
  %405 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %406 = load i8*, i8** %11, align 8
  %407 = call i32 @hid_debug_event(%struct.hid_device* %405, i8* %406)
  br label %547

408:                                              ; preds = %23
  %409 = load i8*, i8** %11, align 8
  %410 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %411 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %10, align 4
  %414 = sub nsw i32 %413, 1
  %415 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %409, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %412, i32 %414)
  %416 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %417 = load i8*, i8** %11, align 8
  %418 = call i32 @hid_debug_event(%struct.hid_device* %416, i8* %417)
  br label %547

419:                                              ; preds = %23
  %420 = load i8*, i8** %11, align 8
  %421 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %422 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %10, align 4
  %425 = sub nsw i32 %424, 1
  %426 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %420, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i32 %423, i32 %425)
  %427 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %428 = load i8*, i8** %11, align 8
  %429 = call i32 @hid_debug_event(%struct.hid_device* %427, i8* %428)
  br label %547

430:                                              ; preds = %23
  %431 = load i8*, i8** %11, align 8
  %432 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %433 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* %10, align 4
  %436 = sub nsw i32 %435, 1
  %437 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %431, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 %434, i32 %436)
  %438 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %439 = load i8*, i8** %11, align 8
  %440 = call i32 @hid_debug_event(%struct.hid_device* %438, i8* %439)
  br label %547

441:                                              ; preds = %23
  %442 = load i8*, i8** %11, align 8
  %443 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %444 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* %10, align 4
  %447 = sub nsw i32 %446, 1
  %448 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %442, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %445, i32 %447)
  %449 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %450 = load i8*, i8** %11, align 8
  %451 = call i32 @hid_debug_event(%struct.hid_device* %449, i8* %450)
  %452 = load i8*, i8** %11, align 8
  %453 = load i64*, i64** %9, align 8
  %454 = getelementptr inbounds i64, i64* %453, i64 1
  %455 = load i64, i64* %454, align 8
  %456 = load i64*, i64** %9, align 8
  %457 = getelementptr inbounds i64, i64* %456, i64 2
  %458 = load i64, i64* %457, align 8
  %459 = load i64*, i64** %9, align 8
  %460 = getelementptr inbounds i64, i64* %459, i64 3
  %461 = load i64, i64* %460, align 8
  %462 = load i64*, i64** %9, align 8
  %463 = getelementptr inbounds i64, i64* %462, i64 4
  %464 = load i64, i64* %463, align 8
  %465 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %452, i32 256, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i64 %455, i64 %458, i64 %461, i64 %464)
  %466 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %467 = load i8*, i8** %11, align 8
  %468 = call i32 @hid_debug_event(%struct.hid_device* %466, i8* %467)
  %469 = load i8*, i8** %11, align 8
  %470 = load i64*, i64** %9, align 8
  %471 = getelementptr inbounds i64, i64* %470, i64 5
  %472 = load i64, i64* %471, align 8
  %473 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %469, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i64 %472)
  %474 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %475 = load i8*, i8** %11, align 8
  %476 = call i32 @hid_debug_event(%struct.hid_device* %474, i8* %475)
  br label %547

477:                                              ; preds = %23
  %478 = load i8*, i8** %11, align 8
  %479 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %480 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* %10, align 4
  %483 = sub nsw i32 %482, 1
  %484 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %478, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 %481, i32 %483)
  %485 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %486 = load i8*, i8** %11, align 8
  %487 = call i32 @hid_debug_event(%struct.hid_device* %485, i8* %486)
  %488 = load i8*, i8** %11, align 8
  %489 = load i64*, i64** %9, align 8
  %490 = getelementptr inbounds i64, i64* %489, i64 2
  %491 = load i64, i64* %490, align 8
  %492 = shl i64 %491, 8
  %493 = load i64*, i64** %9, align 8
  %494 = getelementptr inbounds i64, i64* %493, i64 1
  %495 = load i64, i64* %494, align 8
  %496 = or i64 %492, %495
  %497 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %488, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i64 %496)
  %498 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %499 = load i8*, i8** %11, align 8
  %500 = call i32 @hid_debug_event(%struct.hid_device* %498, i8* %499)
  %501 = load i8*, i8** %11, align 8
  %502 = load i64*, i64** %9, align 8
  %503 = getelementptr inbounds i64, i64* %502, i64 4
  %504 = load i64, i64* %503, align 8
  %505 = shl i64 %504, 8
  %506 = load i64*, i64** %9, align 8
  %507 = getelementptr inbounds i64, i64* %506, i64 3
  %508 = load i64, i64* %507, align 8
  %509 = or i64 %505, %508
  %510 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %501, i32 256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i64 %509)
  %511 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %512 = load i8*, i8** %11, align 8
  %513 = call i32 @hid_debug_event(%struct.hid_device* %511, i8* %512)
  br label %547

514:                                              ; preds = %23
  %515 = load i8*, i8** %11, align 8
  %516 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %517 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* %10, align 4
  %520 = sub nsw i32 %519, 1
  %521 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %515, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i32 %518, i32 %520)
  %522 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %523 = load i8*, i8** %11, align 8
  %524 = call i32 @hid_debug_event(%struct.hid_device* %522, i8* %523)
  %525 = load i8*, i8** %11, align 8
  %526 = load i64*, i64** %9, align 8
  %527 = getelementptr inbounds i64, i64* %526, i64 1
  %528 = load i64, i64* %527, align 8
  %529 = load i64*, i64** %9, align 8
  %530 = getelementptr inbounds i64, i64* %529, i64 2
  %531 = load i64, i64* %530, align 8
  %532 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %525, i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i64 %528, i64 %531)
  %533 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %534 = load i8*, i8** %11, align 8
  %535 = call i32 @hid_debug_event(%struct.hid_device* %533, i8* %534)
  br label %547

536:                                              ; preds = %23
  %537 = load i8*, i8** %11, align 8
  %538 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %539 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* %10, align 4
  %542 = sub nsw i32 %541, 1
  %543 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %537, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i32 %540, i32 %542)
  %544 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %545 = load i8*, i8** %11, align 8
  %546 = call i32 @hid_debug_event(%struct.hid_device* %544, i8* %545)
  br label %547

547:                                              ; preds = %536, %514, %477, %441, %430, %419, %408, %386, %382, %255, %183, %120, %68
  %548 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %549 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %548, i32 0, i32 0
  %550 = call i32 @wake_up_interruptible(i32* %549)
  %551 = load i8*, i8** %11, align 8
  %552 = call i32 @kfree(i8* %551)
  br label %553

553:                                              ; preds = %547, %22, %16
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @hid_debug_event(%struct.hid_device*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @dump_buff_as_hex(i8*, i32, i64*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
