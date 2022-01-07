; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i64 }
%struct.sdma_engine = type { i32, i32, i32, i32 }
%struct.sdma_firmware_header = type { i64, i32, i32, i32, i32, i32 }
%struct.sdma_script_start_addrs = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"external firmware not found, using ROM firmware\0A\00", align 1
@SDMA_FIRMWARE_MAGIC = common dso_local global i64 0, align 8
@SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1 = common dso_local global i32 0, align 4
@SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V2 = common dso_local global i32 0, align 4
@SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3 = common dso_local global i32 0, align 4
@SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown firmware version\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"loaded firmware %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @sdma_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_load_firmware(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sdma_engine*, align 8
  %6 = alloca %struct.sdma_firmware_header*, align 8
  %7 = alloca %struct.sdma_script_start_addrs*, align 8
  %8 = alloca i16*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sdma_engine*
  store %struct.sdma_engine* %10, %struct.sdma_engine** %5, align 8
  %11 = load %struct.firmware*, %struct.firmware** %3, align 8
  %12 = icmp ne %struct.firmware* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %15 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @dev_info(i32 %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %132

18:                                               ; preds = %2
  %19 = load %struct.firmware*, %struct.firmware** %3, align 8
  %20 = getelementptr inbounds %struct.firmware, %struct.firmware* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 32
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %129

25:                                               ; preds = %18
  %26 = load %struct.firmware*, %struct.firmware** %3, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.sdma_firmware_header*
  store %struct.sdma_firmware_header* %29, %struct.sdma_firmware_header** %6, align 8
  %30 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %31 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SDMA_FIRMWARE_MAGIC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %129

36:                                               ; preds = %25
  %37 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %38 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %41 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.firmware*, %struct.firmware** %3, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %129

49:                                               ; preds = %36
  %50 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %51 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %69 [
    i32 1, label %53
    i32 2, label %57
    i32 3, label %61
    i32 4, label %65
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* @SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1, align 4
  %55 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %56 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %74

57:                                               ; preds = %49
  %58 = load i32, i32* @SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V2, align 4
  %59 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %60 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  br label %74

61:                                               ; preds = %49
  %62 = load i32, i32* @SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3, align 4
  %63 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %64 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  br label %74

65:                                               ; preds = %49
  %66 = load i32, i32* @SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V4, align 4
  %67 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %68 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %74

69:                                               ; preds = %49
  %70 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %71 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %129

74:                                               ; preds = %65, %61, %57, %53
  %75 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %76 = bitcast %struct.sdma_firmware_header* %75 to i8*
  %77 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %78 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %76, i64 %80
  %82 = bitcast i8* %81 to %struct.sdma_script_start_addrs*
  store %struct.sdma_script_start_addrs* %82, %struct.sdma_script_start_addrs** %7, align 8
  %83 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %84 = bitcast %struct.sdma_firmware_header* %83 to i8*
  %85 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %86 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %84, i64 %88
  %90 = bitcast i8* %89 to i16*
  store i16* %90, i16** %8, align 8
  %91 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %92 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @clk_enable(i32 %93)
  %95 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %96 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @clk_enable(i32 %97)
  %99 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %100 = load i16*, i16** %8, align 8
  %101 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %102 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sdma_script_start_addrs*, %struct.sdma_script_start_addrs** %7, align 8
  %105 = getelementptr inbounds %struct.sdma_script_start_addrs, %struct.sdma_script_start_addrs* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @sdma_load_script(%struct.sdma_engine* %99, i16* %100, i32 %103, i32 %106)
  %108 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %109 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @clk_disable(i32 %110)
  %112 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %113 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @clk_disable(i32 %114)
  %116 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %117 = load %struct.sdma_script_start_addrs*, %struct.sdma_script_start_addrs** %7, align 8
  %118 = call i32 @sdma_add_scripts(%struct.sdma_engine* %116, %struct.sdma_script_start_addrs* %117)
  %119 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %120 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %123 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %6, align 8
  %126 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, ...) @dev_info(i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %74, %69, %48, %35, %24
  %130 = load %struct.firmware*, %struct.firmware** %3, align 8
  %131 = call i32 @release_firmware(%struct.firmware* %130)
  br label %132

132:                                              ; preds = %129, %13
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @sdma_load_script(%struct.sdma_engine*, i16*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @sdma_add_scripts(%struct.sdma_engine*, %struct.sdma_script_start_addrs*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
