; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_obtain_one_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_obtain_one_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.firmware_details = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, %struct.css_header*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.css_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.firmware_file = type { i32, i32, i32, i32 }
%struct.augmented_firmware_file = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"cannot find firmware \22%s\22, err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"firmware \22%s\22 is too small\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FIRMWARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Firmware %s details:\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"file size: 0x%lx bytes\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"CSS structure:\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"  module_type    0x%x\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"  header_len     0x%03x (0x%03x bytes)\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"  header_version 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"  module_id      0x%x\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"  module_vendor  0x%x\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"  date           0x%x\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"  size           0x%03x (0x%03x bytes)\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"  key_size       0x%03x (0x%03x bytes)\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"  modulus_size   0x%03x (0x%03x bytes)\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"  exponent_size  0x%03x (0x%03x bytes)\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"firmware size: 0x%lx bytes\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Invalid CSS header for \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [80 x i8] c"driver is unable to validate firmware without r2 and mu (not in firmware file)\0A\00", align 1
@AUGMENT_SIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [74 x i8] c"invalid firmware header field size: expected 0x%lx or 0x%lx, actual 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i8*, %struct.firmware_details*)* @obtain_one_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obtain_one_firmware(%struct.hfi1_devdata* %0, i8* %1, %struct.firmware_details* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.firmware_details*, align 8
  %8 = alloca %struct.css_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.firmware_file*, align 8
  %11 = alloca %struct.augmented_firmware_file*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.firmware_details* %2, %struct.firmware_details** %7, align 8
  %12 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %13 = call i32 @memset(%struct.firmware_details* %12, i32 0, i32 56)
  %14 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %15 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %14, i32 0, i32 1
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @request_firmware(%struct.TYPE_6__** %15, i8* %16, i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @dd_dev_warn(%struct.hfi1_devdata* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %338

30:                                               ; preds = %3
  %31 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %32 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 40
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %330

44:                                               ; preds = %30
  %45 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %46 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.css_header*
  store %struct.css_header* %50, %struct.css_header** %8, align 8
  %51 = load i32, i32* @FIRMWARE, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @FIRMWARE, align 4
  %55 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %56 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @FIRMWARE, align 4
  %62 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @FIRMWARE, align 4
  %64 = load %struct.css_header*, %struct.css_header** %8, align 8
  %65 = getelementptr inbounds %struct.css_header, %struct.css_header* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @FIRMWARE, align 4
  %69 = load %struct.css_header*, %struct.css_header** %8, align 8
  %70 = getelementptr inbounds %struct.css_header, %struct.css_header* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.css_header*, %struct.css_header** %8, align 8
  %73 = getelementptr inbounds %struct.css_header, %struct.css_header* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 4, %74
  %76 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load i32, i32* @FIRMWARE, align 4
  %78 = load %struct.css_header*, %struct.css_header** %8, align 8
  %79 = getelementptr inbounds %struct.css_header, %struct.css_header* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @FIRMWARE, align 4
  %83 = load %struct.css_header*, %struct.css_header** %8, align 8
  %84 = getelementptr inbounds %struct.css_header, %struct.css_header* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @FIRMWARE, align 4
  %88 = load %struct.css_header*, %struct.css_header** %8, align 8
  %89 = getelementptr inbounds %struct.css_header, %struct.css_header* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @FIRMWARE, align 4
  %93 = load %struct.css_header*, %struct.css_header** %8, align 8
  %94 = getelementptr inbounds %struct.css_header, %struct.css_header* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @FIRMWARE, align 4
  %98 = load %struct.css_header*, %struct.css_header** %8, align 8
  %99 = getelementptr inbounds %struct.css_header, %struct.css_header* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.css_header*, %struct.css_header** %8, align 8
  %102 = getelementptr inbounds %struct.css_header, %struct.css_header* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 4, %103
  %105 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %100, i32 %104)
  %106 = load i32, i32* @FIRMWARE, align 4
  %107 = load %struct.css_header*, %struct.css_header** %8, align 8
  %108 = getelementptr inbounds %struct.css_header, %struct.css_header* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.css_header*, %struct.css_header** %8, align 8
  %111 = getelementptr inbounds %struct.css_header, %struct.css_header* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 4, %112
  %114 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %109, i32 %113)
  %115 = load i32, i32* @FIRMWARE, align 4
  %116 = load %struct.css_header*, %struct.css_header** %8, align 8
  %117 = getelementptr inbounds %struct.css_header, %struct.css_header* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.css_header*, %struct.css_header** %8, align 8
  %120 = getelementptr inbounds %struct.css_header, %struct.css_header* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 4, %121
  %123 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %118, i32 %122)
  %124 = load i32, i32* @FIRMWARE, align 4
  %125 = load %struct.css_header*, %struct.css_header** %8, align 8
  %126 = getelementptr inbounds %struct.css_header, %struct.css_header* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.css_header*, %struct.css_header** %8, align 8
  %129 = getelementptr inbounds %struct.css_header, %struct.css_header* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 4, %130
  %132 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %127, i32 %131)
  %133 = load i32, i32* @FIRMWARE, align 4
  %134 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %135 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %134, i32 0, i32 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = sub i64 %139, 16
  %141 = call i32 (i32, i8*, ...) @hfi1_cdbg(i32 %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i64 %140)
  %142 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %143 = load %struct.css_header*, %struct.css_header** %8, align 8
  %144 = call i32 @verify_css_header(%struct.hfi1_devdata* %142, %struct.css_header* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %44
  %148 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @dd_dev_info(%struct.hfi1_devdata* %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %149)
  br label %329

151:                                              ; preds = %44
  %152 = load %struct.css_header*, %struct.css_header** %8, align 8
  %153 = getelementptr inbounds %struct.css_header, %struct.css_header* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 4
  %156 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %157 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %155, %160
  br i1 %161, label %162, label %230

162:                                              ; preds = %151
  %163 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %164 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to %struct.firmware_file*
  store %struct.firmware_file* %168, %struct.firmware_file** %10, align 8
  %169 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %172 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %171, i32 0, i32 1
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @payload_check(%struct.hfi1_devdata* %169, i8* %170, i32 %175, i32 16)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %229

179:                                              ; preds = %162
  %180 = load %struct.css_header*, %struct.css_header** %8, align 8
  %181 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %182 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %181, i32 0, i32 8
  store %struct.css_header* %180, %struct.css_header** %182, align 8
  %183 = load %struct.firmware_file*, %struct.firmware_file** %10, align 8
  %184 = getelementptr inbounds %struct.firmware_file, %struct.firmware_file* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %187 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 4
  %188 = load %struct.firmware_file*, %struct.firmware_file** %10, align 8
  %189 = getelementptr inbounds %struct.firmware_file, %struct.firmware_file* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %192 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 8
  %193 = load %struct.firmware_file*, %struct.firmware_file** %10, align 8
  %194 = getelementptr inbounds %struct.firmware_file, %struct.firmware_file* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %197 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 4
  %198 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %199 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %203 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  %204 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %205 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %204, i32 0, i32 9
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %209 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  %210 = load %struct.firmware_file*, %struct.firmware_file** %10, align 8
  %211 = getelementptr inbounds %struct.firmware_file, %struct.firmware_file* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %214 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %216 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %215, i32 0, i32 1
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = sub i64 %220, 16
  %222 = trunc i64 %221 to i32
  %223 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %224 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %226 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %225, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.17, i64 0, i64 0))
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %9, align 4
  br label %229

229:                                              ; preds = %179, %162
  br label %328

230:                                              ; preds = %151
  %231 = load %struct.css_header*, %struct.css_header** %8, align 8
  %232 = getelementptr inbounds %struct.css_header, %struct.css_header* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %233, 4
  %235 = load i32, i32* @AUGMENT_SIZE, align 4
  %236 = add nsw i32 %234, %235
  %237 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %238 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %237, i32 0, i32 1
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %236, %241
  br i1 %242, label %243, label %305

243:                                              ; preds = %230
  %244 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %245 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %244, i32 0, i32 1
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = inttoptr i64 %248 to %struct.augmented_firmware_file*
  store %struct.augmented_firmware_file* %249, %struct.augmented_firmware_file** %11, align 8
  %250 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %251 = load i8*, i8** %6, align 8
  %252 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %253 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %252, i32 0, i32 1
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @payload_check(%struct.hfi1_devdata* %250, i8* %251, i32 %256, i32 24)
  store i32 %257, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %304

260:                                              ; preds = %243
  %261 = load %struct.css_header*, %struct.css_header** %8, align 8
  %262 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %263 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %262, i32 0, i32 8
  store %struct.css_header* %261, %struct.css_header** %263, align 8
  %264 = load %struct.augmented_firmware_file*, %struct.augmented_firmware_file** %11, align 8
  %265 = getelementptr inbounds %struct.augmented_firmware_file, %struct.augmented_firmware_file* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %268 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %267, i32 0, i32 7
  store i32 %266, i32* %268, align 4
  %269 = load %struct.augmented_firmware_file*, %struct.augmented_firmware_file** %11, align 8
  %270 = getelementptr inbounds %struct.augmented_firmware_file, %struct.augmented_firmware_file* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %273 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %272, i32 0, i32 6
  store i32 %271, i32* %273, align 8
  %274 = load %struct.augmented_firmware_file*, %struct.augmented_firmware_file** %11, align 8
  %275 = getelementptr inbounds %struct.augmented_firmware_file, %struct.augmented_firmware_file* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %278 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %277, i32 0, i32 5
  store i32 %276, i32* %278, align 4
  %279 = load %struct.augmented_firmware_file*, %struct.augmented_firmware_file** %11, align 8
  %280 = getelementptr inbounds %struct.augmented_firmware_file, %struct.augmented_firmware_file* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %283 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %282, i32 0, i32 4
  store i32 %281, i32* %283, align 8
  %284 = load %struct.augmented_firmware_file*, %struct.augmented_firmware_file** %11, align 8
  %285 = getelementptr inbounds %struct.augmented_firmware_file, %struct.augmented_firmware_file* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %288 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 4
  %289 = load %struct.augmented_firmware_file*, %struct.augmented_firmware_file** %11, align 8
  %290 = getelementptr inbounds %struct.augmented_firmware_file, %struct.augmented_firmware_file* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %293 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 8
  %294 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %295 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %294, i32 0, i32 1
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = sub i64 %299, 24
  %301 = trunc i64 %300 to i32
  %302 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %303 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 8
  br label %304

304:                                              ; preds = %260, %243
  br label %327

305:                                              ; preds = %230
  %306 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %307 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %308 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %307, i32 0, i32 1
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sdiv i32 %311, 4
  %313 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %314 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %313, i32 0, i32 1
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @AUGMENT_SIZE, align 4
  %319 = sub nsw i32 %317, %318
  %320 = sdiv i32 %319, 4
  %321 = load %struct.css_header*, %struct.css_header** %8, align 8
  %322 = getelementptr inbounds %struct.css_header, %struct.css_header* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %306, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i32 %312, i32 %320, i32 %323)
  %325 = load i32, i32* @EINVAL, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %9, align 4
  br label %327

327:                                              ; preds = %305, %304
  br label %328

328:                                              ; preds = %327, %229
  br label %329

329:                                              ; preds = %328, %147
  br label %330

330:                                              ; preds = %329, %38
  %331 = load i32, i32* %9, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load %struct.firmware_details*, %struct.firmware_details** %7, align 8
  %335 = call i32 @dispose_one_firmware(%struct.firmware_details* %334)
  br label %336

336:                                              ; preds = %333, %330
  %337 = load i32, i32* %9, align 4
  store i32 %337, i32* %4, align 4
  br label %338

338:                                              ; preds = %336, %24
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local i32 @memset(%struct.firmware_details*, i32, i32) #1

declare dso_local i32 @request_firmware(%struct.TYPE_6__**, i8*, i32*) #1

declare dso_local i32 @dd_dev_warn(%struct.hfi1_devdata*, i8*, i8*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, ...) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, ...) #1

declare dso_local i32 @verify_css_header(%struct.hfi1_devdata*, %struct.css_header*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i8*) #1

declare dso_local i32 @payload_check(%struct.hfi1_devdata*, i8*, i32, i32) #1

declare dso_local i32 @dispose_one_firmware(%struct.firmware_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
