; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mxt_data = type { i32, i32, i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"Unable to open firmware %s\0A\00", align 1
@MXT_COMMAND_RESET = common dso_local global i32 0, align 4
@MXT_BOOT_VALUE = common dso_local global i32 0, align 4
@MXT_RESET_TIME = common dso_local global i32 0, align 4
@MXT_WAITING_BOOTLOAD_CMD = common dso_local global i32 0, align 4
@MXT_WAITING_FRAME_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unlocking bootloader\0A\00", align 1
@MXT_FRAME_CRC_PASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Retry count exceeded\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Sent %d frames, %d/%zd bytes\0A\00", align 1
@MXT_FW_RESET_TIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Sent %d frames, %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @mxt_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_load_fw(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mxt_data*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.mxt_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.mxt_data* %14, %struct.mxt_data** %6, align 8
  store %struct.firmware* null, %struct.firmware** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @request_firmware(%struct.firmware** %7, i8* %15, %struct.device* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %3, align 4
  br label %204

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.firmware*, %struct.firmware** %7, align 8
  %28 = call i32 @mxt_check_firmware_format(%struct.device* %26, %struct.firmware* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %200

32:                                               ; preds = %25
  %33 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %34 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %32
  %38 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %39 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %41 = load i32, i32* @MXT_COMMAND_RESET, align 4
  %42 = load i32, i32* @MXT_BOOT_VALUE, align 4
  %43 = call i32 @mxt_t6_command(%struct.mxt_data* %40, i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %200

47:                                               ; preds = %37
  %48 = load i32, i32* @MXT_RESET_TIME, align 4
  %49 = call i32 @msleep(i32 %48)
  %50 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %51 = call i32 @mxt_lookup_bootloader_address(%struct.mxt_data* %50, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %200

55:                                               ; preds = %47
  %56 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %57 = call i32 @mxt_free_input_device(%struct.mxt_data* %56)
  %58 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %59 = call i32 @mxt_free_object_table(%struct.mxt_data* %58)
  br label %65

60:                                               ; preds = %32
  %61 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %62 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @enable_irq(i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %67 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %66, i32 0, i32 2
  %68 = call i32 @reinit_completion(i32* %67)
  %69 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %70 = load i32, i32* @MXT_WAITING_BOOTLOAD_CMD, align 4
  %71 = call i32 @mxt_check_bootloader(%struct.mxt_data* %69, i32 %70, i32 0)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %76 = load i32, i32* @MXT_WAITING_FRAME_DATA, align 4
  %77 = call i32 @mxt_check_bootloader(%struct.mxt_data* %75, i32 %76, i32 0)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %195

81:                                               ; preds = %74
  br label %91

82:                                               ; preds = %65
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_info(%struct.device* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %86 = call i32 @mxt_send_bootloader_cmd(%struct.mxt_data* %85, i32 1)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %195

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %81
  br label %92

92:                                               ; preds = %173, %91
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.firmware*, %struct.firmware** %7, align 8
  %95 = getelementptr inbounds %struct.firmware, %struct.firmware* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %174

98:                                               ; preds = %92
  %99 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %100 = load i32, i32* @MXT_WAITING_FRAME_DATA, align 4
  %101 = call i32 @mxt_check_bootloader(%struct.mxt_data* %99, i32 %100, i32 1)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %195

105:                                              ; preds = %98
  %106 = load %struct.firmware*, %struct.firmware** %7, align 8
  %107 = getelementptr inbounds %struct.firmware, %struct.firmware* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = load %struct.firmware*, %struct.firmware** %7, align 8
  %115 = getelementptr inbounds %struct.firmware, %struct.firmware* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %113, %121
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 2
  store i32 %124, i32* %8, align 4
  %125 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %126 = load %struct.firmware*, %struct.firmware** %7, align 8
  %127 = getelementptr inbounds %struct.firmware, %struct.firmware* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @mxt_bootloader_write(%struct.mxt_data* %125, i32* %131, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %105
  br label %195

137:                                              ; preds = %105
  %138 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %139 = load i32, i32* @MXT_FRAME_CRC_PASS, align 4
  %140 = call i32 @mxt_check_bootloader(%struct.mxt_data* %138, i32 %139, i32 1)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %137
  %144 = load i32, i32* %10, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = mul i32 %146, 20
  %148 = call i32 @msleep(i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = icmp ugt i32 %149, 20
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %195

154:                                              ; preds = %143
  br label %161

155:                                              ; preds = %137
  store i32 0, i32* %10, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add i32 %157, %156
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %155, %154
  %162 = load i32, i32* %11, align 4
  %163 = urem i32 %162, 50
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.firmware*, %struct.firmware** %7, align 8
  %170 = getelementptr inbounds %struct.firmware, %struct.firmware* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %167, i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %165, %161
  br label %92

174:                                              ; preds = %92
  %175 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %176 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %177 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %176, i32 0, i32 2
  %178 = load i32, i32* @MXT_FW_RESET_TIME, align 4
  %179 = call i32 @mxt_wait_for_completion(%struct.mxt_data* %175, i32* %177, i32 %178)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %195

183:                                              ; preds = %174
  %184 = load %struct.device*, %struct.device** %4, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %185, i32 %186)
  %188 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %189 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %190 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %189, i32 0, i32 2
  %191 = load i32, i32* @MXT_FW_RESET_TIME, align 4
  %192 = call i32 @mxt_wait_for_completion(%struct.mxt_data* %188, i32* %190, i32 %191)
  %193 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %194 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %193, i32 0, i32 0
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %183, %182, %151, %136, %104, %89, %80
  %196 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %197 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @disable_irq(i32 %198)
  br label %200

200:                                              ; preds = %195, %54, %46, %31
  %201 = load %struct.firmware*, %struct.firmware** %7, align 8
  %202 = call i32 @release_firmware(%struct.firmware* %201)
  %203 = load i32, i32* %12, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %200, %20
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.mxt_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mxt_check_firmware_format(%struct.device*, %struct.firmware*) #1

declare dso_local i32 @mxt_t6_command(%struct.mxt_data*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mxt_lookup_bootloader_address(%struct.mxt_data*, i32) #1

declare dso_local i32 @mxt_free_input_device(%struct.mxt_data*) #1

declare dso_local i32 @mxt_free_object_table(%struct.mxt_data*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mxt_check_bootloader(%struct.mxt_data*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @mxt_send_bootloader_cmd(%struct.mxt_data*, i32) #1

declare dso_local i32 @mxt_bootloader_write(%struct.mxt_data*, i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @mxt_wait_for_completion(%struct.mxt_data*, i32*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
