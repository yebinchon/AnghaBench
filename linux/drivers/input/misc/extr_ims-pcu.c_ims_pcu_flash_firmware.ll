; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_flash_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_flash_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32, i32, i32, i32* }
%struct.firmware = type { i64 }
%struct.ihex_binrec = type { i32, i32, i32 }
%struct.ims_pcu_flash_fmt = type { i32, i64, i32 }

@ERASE_APP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to erase application image, error: %d\0A\00", align 1
@PROGRAM_DEVICE = common dso_local global i32 0, align 4
@IMS_PCU_CMD_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to write block at 0x%08x, len %d, error: %d\0A\00", align 1
@PROGRAM_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to send PROGRAM_COMPLETE, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*, %struct.firmware*, i32)* @ims_pcu_flash_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_flash_firmware(%struct.ims_pcu* %0, %struct.firmware* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ims_pcu*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ihex_binrec*, align 8
  %9 = alloca %struct.ims_pcu_flash_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.firmware*, %struct.firmware** %6, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ihex_binrec*
  store %struct.ihex_binrec* %17, %struct.ihex_binrec** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %19 = load i32, i32* @ERASE_APP, align 4
  %20 = call i32 @ims_pcu_execute_bl_command(%struct.ims_pcu* %18, i32 %19, i32* null, i64 0, i32 2000)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %25 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %4, align 4
  br label %131

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %107, %30
  %32 = load %struct.ihex_binrec*, %struct.ihex_binrec** %8, align 8
  %33 = icmp ne %struct.ihex_binrec* %32, null
  br i1 %33, label %34, label %118

34:                                               ; preds = %31
  %35 = load %struct.ihex_binrec*, %struct.ihex_binrec** %8, align 8
  %36 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %11, align 4
  %40 = load %struct.ihex_binrec*, %struct.ihex_binrec** %8, align 8
  %41 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @be16_to_cpu(i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %45 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = bitcast i32* %47 to i8*
  %49 = bitcast i8* %48 to %struct.ims_pcu_flash_fmt*
  store %struct.ims_pcu_flash_fmt* %49, %struct.ims_pcu_flash_fmt** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %9, align 8
  %52 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %51, i32 0, i32 2
  %53 = call i32 @put_unaligned_le32(i32 %50, i32* %52)
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %9, align 8
  %56 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %9, align 8
  %58 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ihex_binrec*, %struct.ihex_binrec** %8, align 8
  %61 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @memcpy(i32 %59, i32 %62, i64 %63)
  %65 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %66 = load i32, i32* @PROGRAM_DEVICE, align 4
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, 5
  %69 = load i32, i32* @IMS_PCU_CMD_RESPONSE_TIMEOUT, align 4
  %70 = call i32 @ims_pcu_execute_bl_command(%struct.ims_pcu* %65, i32 %66, i32* null, i64 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %34
  %74 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %75 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i64, i64* %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %77, i64 %78, i32 %79)
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %4, align 4
  br label %131

82:                                               ; preds = %34
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %85 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %91 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.ihex_binrec*, %struct.ihex_binrec** %8, align 8
  %99 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ims_pcu_verify_block(%struct.ims_pcu* %95, i32 %96, i64 %97, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %4, align 4
  br label %131

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %88, %82
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = mul i32 %110, 100
  %112 = load i32, i32* %7, align 4
  %113 = udiv i32 %111, %112
  %114 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %115 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ihex_binrec*, %struct.ihex_binrec** %8, align 8
  %117 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %116)
  store %struct.ihex_binrec* %117, %struct.ihex_binrec** %8, align 8
  br label %31

118:                                              ; preds = %31
  %119 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %120 = load i32, i32* @PROGRAM_COMPLETE, align 4
  %121 = call i32 @ims_pcu_execute_bl_command(%struct.ims_pcu* %119, i32 %120, i32* null, i64 0, i32 2000)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %126 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %127, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %124, %118
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %104, %73, %23
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @ims_pcu_execute_bl_command(%struct.ims_pcu*, i32, i32*, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ims_pcu_verify_block(%struct.ims_pcu*, i32, i64, i32) #1

declare dso_local %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
