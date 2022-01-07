; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mmhubbub.c_mcifwb2_dump_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mmhubbub.c_mcifwb2_dump_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcif_wb = type { i32 }
%struct.mcif_buf_params = type { i32, i32 }
%struct.mcif_wb_frame_dump_info = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn20_mmhubbub = type { i32 }

@MCIF_WB_BUFMGR_SW_CONTROL = common dso_local global i32 0, align 4
@MCIF_WB_BUFMGR_SW_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mcifwb2_dump_frame(%struct.mcif_wb* %0, %struct.mcif_buf_params* %1, i32 %2, i32 %3, i32 %4, %struct.mcif_wb_frame_dump_info* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca %struct.mcif_wb*, align 8
  %12 = alloca %struct.mcif_buf_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mcif_wb_frame_dump_info*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.dcn20_mmhubbub*, align 8
  store %struct.mcif_wb* %0, %struct.mcif_wb** %11, align 8
  store %struct.mcif_buf_params* %1, %struct.mcif_buf_params** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.mcif_wb_frame_dump_info* %5, %struct.mcif_wb_frame_dump_info** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %22 = load %struct.mcif_wb*, %struct.mcif_wb** %11, align 8
  %23 = call %struct.dcn20_mmhubbub* @TO_DCN20_MMHUBBUB(%struct.mcif_wb* %22)
  store %struct.dcn20_mmhubbub* %23, %struct.dcn20_mmhubbub** %21, align 8
  %24 = load i32, i32* @MCIF_WB_BUFMGR_SW_CONTROL, align 4
  %25 = load i32, i32* @MCIF_WB_BUFMGR_SW_LOCK, align 4
  %26 = call i32 @REG_UPDATE(i32 %24, i32 %25, i32 15)
  %27 = load i8*, i8** %19, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = load %struct.mcif_buf_params*, %struct.mcif_buf_params** %12, align 8
  %30 = getelementptr inbounds %struct.mcif_buf_params, %struct.mcif_buf_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %15, align 4
  %33 = mul i32 %31, %32
  %34 = call i32 @memcpy(i8* %27, i8* %28, i32 %33)
  %35 = load i8*, i8** %20, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = load %struct.mcif_buf_params*, %struct.mcif_buf_params** %12, align 8
  %38 = getelementptr inbounds %struct.mcif_buf_params, %struct.mcif_buf_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %15, align 4
  %41 = mul i32 %39, %40
  %42 = udiv i32 %41, 2
  %43 = call i32 @memcpy(i8* %35, i8* %36, i32 %42)
  %44 = load i32, i32* @MCIF_WB_BUFMGR_SW_CONTROL, align 4
  %45 = load i32, i32* @MCIF_WB_BUFMGR_SW_LOCK, align 4
  %46 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 0)
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.mcif_wb_frame_dump_info*, %struct.mcif_wb_frame_dump_info** %16, align 8
  %49 = getelementptr inbounds %struct.mcif_wb_frame_dump_info, %struct.mcif_wb_frame_dump_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.mcif_wb_frame_dump_info*, %struct.mcif_wb_frame_dump_info** %16, align 8
  %52 = getelementptr inbounds %struct.mcif_wb_frame_dump_info, %struct.mcif_wb_frame_dump_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.mcif_wb_frame_dump_info*, %struct.mcif_wb_frame_dump_info** %16, align 8
  %55 = getelementptr inbounds %struct.mcif_wb_frame_dump_info, %struct.mcif_wb_frame_dump_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mcif_buf_params*, %struct.mcif_buf_params** %12, align 8
  %57 = getelementptr inbounds %struct.mcif_buf_params, %struct.mcif_buf_params* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mcif_wb_frame_dump_info*, %struct.mcif_wb_frame_dump_info** %16, align 8
  %60 = getelementptr inbounds %struct.mcif_wb_frame_dump_info, %struct.mcif_wb_frame_dump_info* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mcif_buf_params*, %struct.mcif_buf_params** %12, align 8
  %62 = getelementptr inbounds %struct.mcif_buf_params, %struct.mcif_buf_params* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mcif_wb_frame_dump_info*, %struct.mcif_wb_frame_dump_info** %16, align 8
  %65 = getelementptr inbounds %struct.mcif_wb_frame_dump_info, %struct.mcif_wb_frame_dump_info* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.mcif_buf_params*, %struct.mcif_buf_params** %12, align 8
  %68 = getelementptr inbounds %struct.mcif_buf_params, %struct.mcif_buf_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mcif_buf_params*, %struct.mcif_buf_params** %12, align 8
  %71 = getelementptr inbounds %struct.mcif_buf_params, %struct.mcif_buf_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %69, %72
  %74 = mul i32 %66, %73
  %75 = load %struct.mcif_wb_frame_dump_info*, %struct.mcif_wb_frame_dump_info** %16, align 8
  %76 = getelementptr inbounds %struct.mcif_wb_frame_dump_info, %struct.mcif_wb_frame_dump_info* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local %struct.dcn20_mmhubbub* @TO_DCN20_MMHUBBUB(%struct.mcif_wb*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
