; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_bl_initiate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_bl_initiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }
%struct.firmware = type { i32 }
%struct.cyapa_tsg_bin_image_data_record = type { i64* }
%struct.pip_bl_cmd_head = type { i64, %struct.pip_bl_packet_start, i32, i32, i32 }
%struct.pip_bl_packet_start = type { i32, i32, i32 }
%struct.pip_bl_initiate_cmd_data = type { i64*, i64*, i32 }
%struct.pip_bl_packet_end = type { i32, i32 }

@CYAPA_TSG_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@CYAPA_TSG_BL_KEY_SIZE = common dso_local global i32 0, align 4
@CYAPA_TSG_FLASH_MAP_BLOCK_SIZE = common dso_local global i32 0, align 4
@PIP_OUTPUT_REPORT_ADDR = common dso_local global i32 0, align 4
@PIP_BL_CMD_REPORT_ID = common dso_local global i32 0, align 4
@PIP_SOP_KEY = common dso_local global i32 0, align 4
@PIP_BL_CMD_INITIATE_BL = common dso_local global i32 0, align 4
@cyapa_pip_bl_cmd_key = common dso_local global i64* null, align 8
@CYAPA_TSG_FLASH_MAP_METADATA_SIZE = common dso_local global i32 0, align 4
@PIP_EOP_KEY = common dso_local global i32 0, align 4
@cyapa_sort_tsg_pip_bl_resp_data = common dso_local global i32 0, align 4
@PIP_BL_INITIATE_RESP_LEN = common dso_local global i32 0, align 4
@PIP_BL_RESP_REPORT_ID = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_pip_bl_initiate(%struct.cyapa* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.cyapa_tsg_bin_image_data_record*, align 8
  %7 = alloca %struct.pip_bl_cmd_head*, align 8
  %8 = alloca %struct.pip_bl_packet_start*, align 8
  %9 = alloca %struct.pip_bl_initiate_cmd_data*, align 8
  %10 = alloca %struct.pip_bl_packet_end*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [11 x i64], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %23 = load i32, i32* @CYAPA_TSG_MAX_CMD_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %28 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %27, i32* null, i32* null, i32* null)
  %29 = load i32, i32* @CYAPA_TSG_MAX_CMD_SIZE, align 4
  %30 = call i32 @memset(i64* %26, i32 0, i32 %29)
  %31 = bitcast i64* %26 to %struct.pip_bl_cmd_head*
  store %struct.pip_bl_cmd_head* %31, %struct.pip_bl_cmd_head** %7, align 8
  %32 = load i32, i32* @CYAPA_TSG_BL_KEY_SIZE, align 4
  %33 = load i32, i32* @CYAPA_TSG_FLASH_MAP_BLOCK_SIZE, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 32, %36
  %38 = add i64 %37, 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* @PIP_OUTPUT_REPORT_ADDR, align 4
  %41 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %7, align 8
  %42 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %41, i32 0, i32 4
  %43 = call i32 @put_unaligned_le16(i32 %40, i32* %42)
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %44, 2
  %46 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %7, align 8
  %47 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %46, i32 0, i32 3
  %48 = call i32 @put_unaligned_le16(i32 %45, i32* %47)
  %49 = load i32, i32* @PIP_BL_CMD_REPORT_ID, align 4
  %50 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %7, align 8
  %51 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %7, align 8
  %53 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %52, i32 0, i32 1
  store %struct.pip_bl_packet_start* %53, %struct.pip_bl_packet_start** %8, align 8
  %54 = load i32, i32* @PIP_SOP_KEY, align 4
  %55 = load %struct.pip_bl_packet_start*, %struct.pip_bl_packet_start** %8, align 8
  %56 = getelementptr inbounds %struct.pip_bl_packet_start, %struct.pip_bl_packet_start* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @PIP_BL_CMD_INITIATE_BL, align 4
  %58 = load %struct.pip_bl_packet_start*, %struct.pip_bl_packet_start** %8, align 8
  %59 = getelementptr inbounds %struct.pip_bl_packet_start, %struct.pip_bl_packet_start* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.pip_bl_packet_start*, %struct.pip_bl_packet_start** %8, align 8
  %62 = getelementptr inbounds %struct.pip_bl_packet_start, %struct.pip_bl_packet_start* %61, i32 0, i32 0
  %63 = call i32 @put_unaligned_le16(i32 %60, i32* %62)
  %64 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %7, align 8
  %65 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.pip_bl_initiate_cmd_data*
  store %struct.pip_bl_initiate_cmd_data* %67, %struct.pip_bl_initiate_cmd_data** %9, align 8
  %68 = load %struct.pip_bl_initiate_cmd_data*, %struct.pip_bl_initiate_cmd_data** %9, align 8
  %69 = getelementptr inbounds %struct.pip_bl_initiate_cmd_data, %struct.pip_bl_initiate_cmd_data* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64*, i64** @cyapa_pip_bl_cmd_key, align 8
  %72 = load i32, i32* @CYAPA_TSG_BL_KEY_SIZE, align 4
  %73 = call i32 @memcpy(i64* %70, i64* %71, i32 %72)
  %74 = load %struct.firmware*, %struct.firmware** %5, align 8
  %75 = call %struct.cyapa_tsg_bin_image_data_record* @cyapa_get_image_record_data_num(%struct.firmware* %74, i32* %19)
  store %struct.cyapa_tsg_bin_image_data_record* %75, %struct.cyapa_tsg_bin_image_data_record** %6, align 8
  %76 = load %struct.cyapa_tsg_bin_image_data_record*, %struct.cyapa_tsg_bin_image_data_record** %6, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, %struct.cyapa_tsg_bin_image_data_record* %76, i64 %79
  %81 = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, %struct.cyapa_tsg_bin_image_data_record* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  store i64* %82, i64** %20, align 8
  %83 = load %struct.pip_bl_initiate_cmd_data*, %struct.pip_bl_initiate_cmd_data** %9, align 8
  %84 = getelementptr inbounds %struct.pip_bl_initiate_cmd_data, %struct.pip_bl_initiate_cmd_data* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64*, i64** %20, align 8
  %87 = load i32, i32* @CYAPA_TSG_FLASH_MAP_METADATA_SIZE, align 4
  %88 = call i32 @memcpy(i64* %85, i64* %86, i32 %87)
  %89 = load %struct.pip_bl_initiate_cmd_data*, %struct.pip_bl_initiate_cmd_data** %9, align 8
  %90 = getelementptr inbounds %struct.pip_bl_initiate_cmd_data, %struct.pip_bl_initiate_cmd_data* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* @CYAPA_TSG_FLASH_MAP_METADATA_SIZE, align 4
  %93 = call i32 @crc_itu_t(i32 65535, i64* %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load %struct.pip_bl_initiate_cmd_data*, %struct.pip_bl_initiate_cmd_data** %9, align 8
  %96 = getelementptr inbounds %struct.pip_bl_initiate_cmd_data, %struct.pip_bl_initiate_cmd_data* %95, i32 0, i32 2
  %97 = call i32 @put_unaligned_le16(i32 %94, i32* %96)
  %98 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %7, align 8
  %99 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = inttoptr i64 %103 to %struct.pip_bl_packet_end*
  store %struct.pip_bl_packet_end* %104, %struct.pip_bl_packet_end** %10, align 8
  %105 = load %struct.pip_bl_packet_start*, %struct.pip_bl_packet_start** %8, align 8
  %106 = bitcast %struct.pip_bl_packet_start* %105 to i64*
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 12, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @crc_itu_t(i32 65535, i64* %106, i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.pip_bl_packet_end*, %struct.pip_bl_packet_end** %10, align 8
  %114 = getelementptr inbounds %struct.pip_bl_packet_end, %struct.pip_bl_packet_end* %113, i32 0, i32 1
  %115 = call i32 @put_unaligned_le16(i32 %112, i32* %114)
  %116 = load i32, i32* @PIP_EOP_KEY, align 4
  %117 = load %struct.pip_bl_packet_end*, %struct.pip_bl_packet_end** %10, align 8
  %118 = getelementptr inbounds %struct.pip_bl_packet_end, %struct.pip_bl_packet_end* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  store i32 88, i32* %18, align 4
  %119 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %120 = load i32, i32* %13, align 4
  %121 = getelementptr inbounds [11 x i64], [11 x i64]* %17, i64 0, i64 0
  %122 = load i32, i32* @cyapa_sort_tsg_pip_bl_resp_data, align 4
  %123 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %119, i64* %26, i32 %120, i64* %121, i32* %18, i32 12000, i32 %122, i32 1)
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %2
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @PIP_BL_INITIATE_RESP_LEN, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds [11 x i64], [11 x i64]* %17, i64 0, i64 2
  %132 = load i64, i64* %131, align 16
  %133 = load i64, i64* @PIP_BL_RESP_REPORT_ID, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds [11 x i64], [11 x i64]* %17, i64 0, i64 0
  %137 = call i32 @PIP_CMD_COMPLETE_SUCCESS(i64* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %135, %130, %126, %2
  %140 = load i32, i32* %21, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* %21, align 4
  br label %147

144:                                              ; preds = %139
  %145 = load i32, i32* @EAGAIN, align 4
  %146 = sub nsw i32 0, %145
  br label %147

147:                                              ; preds = %144, %142
  %148 = phi i32 [ %143, %142 ], [ %146, %144 ]
  store i32 %148, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %150

149:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %150

150:                                              ; preds = %149, %147
  %151 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa*, i32*, i32*, i32*) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @put_unaligned_le16(i32, i32*) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local %struct.cyapa_tsg_bin_image_data_record* @cyapa_get_image_record_data_num(%struct.firmware*, i32*) #2

declare dso_local i32 @crc_itu_t(i32, i64*, i32) #2

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i64*, i32, i64*, i32*, i32, i32, i32) #2

declare dso_local i32 @PIP_CMD_COMPLETE_SUCCESS(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
