; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_dcn10_link_encoder_update_mst_stream_allocation_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_dcn10_link_encoder_update_mst_stream_allocation_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32 }
%struct.link_mst_stream_allocation_table = type { i32, i32* }
%struct.dcn10_link_encoder = type { i32 }

@DP_MSE_SAT0 = common dso_local global i32 0, align 4
@DP_MSE_SAT_SRC0 = common dso_local global i32 0, align 4
@DP_MSE_SAT_SLOT_COUNT0 = common dso_local global i32 0, align 4
@DP_MSE_SAT_SRC1 = common dso_local global i32 0, align 4
@DP_MSE_SAT_SLOT_COUNT1 = common dso_local global i32 0, align 4
@DP_MSE_SAT1 = common dso_local global i32 0, align 4
@DP_MSE_SAT_SRC2 = common dso_local global i32 0, align 4
@DP_MSE_SAT_SLOT_COUNT2 = common dso_local global i32 0, align 4
@DP_MSE_SAT_SRC3 = common dso_local global i32 0, align 4
@DP_MSE_SAT_SLOT_COUNT3 = common dso_local global i32 0, align 4
@DP_MSE_SAT_UPDATE = common dso_local global i32 0, align 4
@DP_MSE_16_MTP_KEEPOUT = common dso_local global i32 0, align 4
@DP_MST_UPDATE_MAX_RETRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_link_encoder_update_mst_stream_allocation_table(%struct.link_encoder* %0, %struct.link_mst_stream_allocation_table* %1) #0 {
  %3 = alloca %struct.link_encoder*, align 8
  %4 = alloca %struct.link_mst_stream_allocation_table*, align 8
  %5 = alloca %struct.dcn10_link_encoder*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.link_encoder* %0, %struct.link_encoder** %3, align 8
  store %struct.link_mst_stream_allocation_table* %1, %struct.link_mst_stream_allocation_table** %4, align 8
  %12 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %13 = call %struct.dcn10_link_encoder* @TO_DCN10_LINK_ENC(%struct.link_encoder* %12)
  store %struct.dcn10_link_encoder* %13, %struct.dcn10_link_encoder** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.link_mst_stream_allocation_table*, %struct.link_mst_stream_allocation_table** %4, align 8
  %15 = getelementptr inbounds %struct.link_mst_stream_allocation_table, %struct.link_mst_stream_allocation_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.link_mst_stream_allocation_table*, %struct.link_mst_stream_allocation_table** %4, align 8
  %20 = getelementptr inbounds %struct.link_mst_stream_allocation_table, %struct.link_mst_stream_allocation_table* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = call i32 @fill_stream_allocation_row_info(i32* %22, i64* %10, i64* %9)
  br label %25

24:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* @DP_MSE_SAT0, align 4
  %27 = load i32, i32* @DP_MSE_SAT_SRC0, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* @DP_MSE_SAT_SLOT_COUNT0, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @REG_UPDATE_2(i32 %26, i32 %27, i64 %28, i32 %29, i64 %30)
  %32 = load %struct.link_mst_stream_allocation_table*, %struct.link_mst_stream_allocation_table** %4, align 8
  %33 = getelementptr inbounds %struct.link_mst_stream_allocation_table, %struct.link_mst_stream_allocation_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.link_mst_stream_allocation_table*, %struct.link_mst_stream_allocation_table** %4, align 8
  %38 = getelementptr inbounds %struct.link_mst_stream_allocation_table, %struct.link_mst_stream_allocation_table* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = call i32 @fill_stream_allocation_row_info(i32* %40, i64* %10, i64* %9)
  br label %43

42:                                               ; preds = %25
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* @DP_MSE_SAT0, align 4
  %45 = load i32, i32* @DP_MSE_SAT_SRC1, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* @DP_MSE_SAT_SLOT_COUNT1, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @REG_UPDATE_2(i32 %44, i32 %45, i64 %46, i32 %47, i64 %48)
  %50 = load %struct.link_mst_stream_allocation_table*, %struct.link_mst_stream_allocation_table** %4, align 8
  %51 = getelementptr inbounds %struct.link_mst_stream_allocation_table, %struct.link_mst_stream_allocation_table* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 3
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.link_mst_stream_allocation_table*, %struct.link_mst_stream_allocation_table** %4, align 8
  %56 = getelementptr inbounds %struct.link_mst_stream_allocation_table, %struct.link_mst_stream_allocation_table* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = call i32 @fill_stream_allocation_row_info(i32* %58, i64* %10, i64* %9)
  br label %61

60:                                               ; preds = %43
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* @DP_MSE_SAT1, align 4
  %63 = load i32, i32* @DP_MSE_SAT_SRC2, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @DP_MSE_SAT_SLOT_COUNT2, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @REG_UPDATE_2(i32 %62, i32 %63, i64 %64, i32 %65, i64 %66)
  %68 = load %struct.link_mst_stream_allocation_table*, %struct.link_mst_stream_allocation_table** %4, align 8
  %69 = getelementptr inbounds %struct.link_mst_stream_allocation_table, %struct.link_mst_stream_allocation_table* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 4
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.link_mst_stream_allocation_table*, %struct.link_mst_stream_allocation_table** %4, align 8
  %74 = getelementptr inbounds %struct.link_mst_stream_allocation_table, %struct.link_mst_stream_allocation_table* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = call i32 @fill_stream_allocation_row_info(i32* %76, i64* %10, i64* %9)
  br label %79

78:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i32, i32* @DP_MSE_SAT1, align 4
  %81 = load i32, i32* @DP_MSE_SAT_SRC3, align 4
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @DP_MSE_SAT_SLOT_COUNT3, align 4
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @REG_UPDATE_2(i32 %80, i32 %81, i64 %82, i32 %83, i64 %84)
  %86 = load i32, i32* @DP_MSE_SAT_UPDATE, align 4
  %87 = load i32, i32* @DP_MSE_SAT_UPDATE, align 4
  %88 = call i32 @REG_UPDATE(i32 %86, i32 %87, i32 1)
  br label %89

89:                                               ; preds = %108, %79
  %90 = call i32 @udelay(i32 10)
  %91 = load i32, i32* @DP_MSE_SAT_UPDATE, align 4
  %92 = call i64 @REG_READ(i32 %91)
  store i64 %92, i64* %6, align 8
  %93 = load i32, i32* @DP_MSE_SAT_UPDATE, align 4
  %94 = load i32, i32* @DP_MSE_SAT_UPDATE, align 4
  %95 = call i32 @REG_GET(i32 %93, i32 %94, i64* %7)
  %96 = load i32, i32* @DP_MSE_SAT_UPDATE, align 4
  %97 = load i32, i32* @DP_MSE_16_MTP_KEEPOUT, align 4
  %98 = call i32 @REG_GET(i32 %96, i32 %97, i64* %8)
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %89
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  br label %112

105:                                              ; preds = %101, %89
  %106 = load i64, i64* %11, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @DP_MST_UPDATE_MAX_RETRY, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %89, label %112

112:                                              ; preds = %108, %104
  ret void
}

declare dso_local %struct.dcn10_link_encoder* @TO_DCN10_LINK_ENC(%struct.link_encoder*) #1

declare dso_local i32 @fill_stream_allocation_row_info(i32*, i64*, i64*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i64, i32, i64) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
