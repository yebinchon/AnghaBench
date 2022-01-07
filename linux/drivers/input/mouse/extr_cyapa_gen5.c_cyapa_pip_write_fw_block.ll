; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_write_fw_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_write_fw_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }
%struct.cyapa_tsg_bin_image_data_record = type { i64, i64*, i32, i32 }
%struct.pip_bl_cmd_head = type { i64, i32, i32, i32, %struct.pip_bl_packet_start }
%struct.pip_bl_packet_start = type { i32, i32, i32 }
%struct.tsg_bl_flash_row_head = type { i32, i32, i64 }
%struct.pip_bl_packet_end = type { i32, i32 }

@CYAPA_TSG_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@CYAPA_TSG_FLASH_MAP_BLOCK_SIZE = common dso_local global i64 0, align 8
@PIP_OUTPUT_REPORT_ADDR = common dso_local global i64 0, align 8
@PIP_BL_CMD_REPORT_ID = common dso_local global i32 0, align 4
@PIP_SOP_KEY = common dso_local global i32 0, align 4
@PIP_BL_CMD_PROGRAM_VERIFY_ROW = common dso_local global i32 0, align 4
@PIP_EOP_KEY = common dso_local global i32 0, align 4
@cyapa_sort_tsg_pip_bl_resp_data = common dso_local global i32 0, align 4
@PIP_BL_BLOCK_WRITE_RESP_LEN = common dso_local global i32 0, align 4
@PIP_BL_RESP_REPORT_ID = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, %struct.cyapa_tsg_bin_image_data_record*)* @cyapa_pip_write_fw_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_pip_write_fw_block(%struct.cyapa* %0, %struct.cyapa_tsg_bin_image_data_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca %struct.cyapa_tsg_bin_image_data_record*, align 8
  %6 = alloca %struct.pip_bl_cmd_head*, align 8
  %7 = alloca %struct.pip_bl_packet_start*, align 8
  %8 = alloca %struct.tsg_bl_flash_row_head*, align 8
  %9 = alloca %struct.pip_bl_packet_end*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [11 x i64], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store %struct.cyapa_tsg_bin_image_data_record* %1, %struct.cyapa_tsg_bin_image_data_record** %5, align 8
  %23 = load i32, i32* @CYAPA_TSG_MAX_CMD_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.cyapa_tsg_bin_image_data_record*, %struct.cyapa_tsg_bin_image_data_record** %5, align 8
  %28 = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, %struct.cyapa_tsg_bin_image_data_record* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %13, align 8
  %30 = load %struct.cyapa_tsg_bin_image_data_record*, %struct.cyapa_tsg_bin_image_data_record** %5, align 8
  %31 = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, %struct.cyapa_tsg_bin_image_data_record* %30, i32 0, i32 3
  %32 = call i64 @get_unaligned_be16(i32* %31)
  store i64 %32, i64* %14, align 8
  %33 = load %struct.cyapa_tsg_bin_image_data_record*, %struct.cyapa_tsg_bin_image_data_record** %5, align 8
  %34 = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, %struct.cyapa_tsg_bin_image_data_record* %33, i32 0, i32 2
  %35 = call i64 @get_unaligned_be16(i32* %34)
  store i64 %35, i64* %15, align 8
  %36 = load %struct.cyapa_tsg_bin_image_data_record*, %struct.cyapa_tsg_bin_image_data_record** %5, align 8
  %37 = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, %struct.cyapa_tsg_bin_image_data_record* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %16, align 8
  %39 = load i32, i32* @CYAPA_TSG_MAX_CMD_SIZE, align 4
  %40 = call i32 @memset(i64* %26, i32 0, i32 %39)
  %41 = bitcast i64* %26 to %struct.pip_bl_cmd_head*
  store %struct.pip_bl_cmd_head* %41, %struct.pip_bl_cmd_head** %6, align 8
  %42 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %6, align 8
  %43 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %42, i32 0, i32 4
  store %struct.pip_bl_packet_start* %43, %struct.pip_bl_packet_start** %7, align 8
  %44 = load i64, i64* @CYAPA_TSG_FLASH_MAP_BLOCK_SIZE, align 8
  %45 = add i64 48, %44
  %46 = add i64 %45, 8
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* @PIP_OUTPUT_REPORT_ADDR, align 8
  %48 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %6, align 8
  %49 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %48, i32 0, i32 3
  %50 = call i32 @put_unaligned_le16(i64 %47, i32* %49)
  %51 = load i64, i64* %12, align 8
  %52 = sub nsw i64 %51, 2
  %53 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %6, align 8
  %54 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %53, i32 0, i32 2
  %55 = call i32 @put_unaligned_le16(i64 %52, i32* %54)
  %56 = load i32, i32* @PIP_BL_CMD_REPORT_ID, align 4
  %57 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %6, align 8
  %58 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @PIP_SOP_KEY, align 4
  %60 = load %struct.pip_bl_packet_start*, %struct.pip_bl_packet_start** %7, align 8
  %61 = getelementptr inbounds %struct.pip_bl_packet_start, %struct.pip_bl_packet_start* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @PIP_BL_CMD_PROGRAM_VERIFY_ROW, align 4
  %63 = load %struct.pip_bl_packet_start*, %struct.pip_bl_packet_start** %7, align 8
  %64 = getelementptr inbounds %struct.pip_bl_packet_start, %struct.pip_bl_packet_start* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i64, i64* %15, align 8
  %66 = add i64 16, %65
  store i64 %66, i64* %17, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load %struct.pip_bl_packet_start*, %struct.pip_bl_packet_start** %7, align 8
  %69 = getelementptr inbounds %struct.pip_bl_packet_start, %struct.pip_bl_packet_start* %68, i32 0, i32 0
  %70 = call i32 @put_unaligned_le16(i64 %67, i32* %69)
  %71 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %6, align 8
  %72 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.tsg_bl_flash_row_head*
  store %struct.tsg_bl_flash_row_head* %74, %struct.tsg_bl_flash_row_head** %8, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.tsg_bl_flash_row_head*, %struct.tsg_bl_flash_row_head** %8, align 8
  %77 = getelementptr inbounds %struct.tsg_bl_flash_row_head, %struct.tsg_bl_flash_row_head* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.tsg_bl_flash_row_head*, %struct.tsg_bl_flash_row_head** %8, align 8
  %80 = getelementptr inbounds %struct.tsg_bl_flash_row_head, %struct.tsg_bl_flash_row_head* %79, i32 0, i32 1
  %81 = call i32 @put_unaligned_le16(i64 %78, i32* %80)
  %82 = load %struct.tsg_bl_flash_row_head*, %struct.tsg_bl_flash_row_head** %8, align 8
  %83 = getelementptr inbounds %struct.tsg_bl_flash_row_head, %struct.tsg_bl_flash_row_head* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64*, i64** %16, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @memcpy(i32 %84, i64* %85, i64 %86)
  %88 = load %struct.pip_bl_cmd_head*, %struct.pip_bl_cmd_head** %6, align 8
  %89 = getelementptr inbounds %struct.pip_bl_cmd_head, %struct.pip_bl_cmd_head* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %17, align 8
  %92 = add nsw i64 %90, %91
  %93 = inttoptr i64 %92 to %struct.pip_bl_packet_end*
  store %struct.pip_bl_packet_end* %93, %struct.pip_bl_packet_end** %9, align 8
  %94 = load %struct.pip_bl_packet_start*, %struct.pip_bl_packet_start** %7, align 8
  %95 = bitcast %struct.pip_bl_packet_start* %94 to i64*
  %96 = load i64, i64* %17, align 8
  %97 = add i64 12, %96
  %98 = call i64 @crc_itu_t(i32 65535, i64* %95, i64 %97)
  store i64 %98, i64* %18, align 8
  %99 = load i64, i64* %18, align 8
  %100 = load %struct.pip_bl_packet_end*, %struct.pip_bl_packet_end** %9, align 8
  %101 = getelementptr inbounds %struct.pip_bl_packet_end, %struct.pip_bl_packet_end* %100, i32 0, i32 1
  %102 = call i32 @put_unaligned_le16(i64 %99, i32* %101)
  %103 = load i32, i32* @PIP_EOP_KEY, align 4
  %104 = load %struct.pip_bl_packet_end*, %struct.pip_bl_packet_end** %9, align 8
  %105 = getelementptr inbounds %struct.pip_bl_packet_end, %struct.pip_bl_packet_end* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  store i32 88, i32* %20, align 4
  %106 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds [11 x i64], [11 x i64]* %19, i64 0, i64 0
  %109 = load i32, i32* @cyapa_sort_tsg_pip_bl_resp_data, align 4
  %110 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %106, i64* %26, i64 %107, i64* %108, i32* %20, i32 500, i32 %109, i32 1)
  store i32 %110, i32* %21, align 4
  %111 = load i32, i32* %21, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %2
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* @PIP_BL_BLOCK_WRITE_RESP_LEN, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %126, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds [11 x i64], [11 x i64]* %19, i64 0, i64 2
  %119 = load i64, i64* %118, align 16
  %120 = load i64, i64* @PIP_BL_RESP_REPORT_ID, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds [11 x i64], [11 x i64]* %19, i64 0, i64 0
  %124 = call i32 @PIP_CMD_COMPLETE_SUCCESS(i64* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %122, %117, %113, %2
  %127 = load i32, i32* %21, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* %21, align 4
  br label %134

131:                                              ; preds = %126
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i32 [ %130, %129 ], [ %133, %131 ]
  store i32 %135, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %137

136:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %137

137:                                              ; preds = %136, %134
  %138 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_unaligned_be16(i32*) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @put_unaligned_le16(i64, i32*) #2

declare dso_local i32 @memcpy(i32, i64*, i64) #2

declare dso_local i64 @crc_itu_t(i32, i64*, i64) #2

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i64*, i64, i64*, i32*, i32, i32, i32) #2

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
