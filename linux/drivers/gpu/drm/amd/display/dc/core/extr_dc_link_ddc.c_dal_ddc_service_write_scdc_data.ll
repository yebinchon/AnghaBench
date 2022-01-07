; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_write_scdc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_write_scdc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { i32 }

@HDMI_SCDC_ADDRESS = common dso_local global i32 0, align 4
@HDMI_SCDC_SINK_VERSION = common dso_local global i32 0, align 4
@HDMI_SCDC_SOURCE_VERSION = common dso_local global i32 0, align 4
@HDMI_SCDC_TMDS_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_ddc_service_write_scdc_data(%struct.ddc_service* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ddc_service*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.ddc_service* %0, %struct.ddc_service** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 340000
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @HDMI_SCDC_ADDRESS, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @HDMI_SCDC_SINK_VERSION, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.ddc_service*, %struct.ddc_service** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dal_ddc_service_query_ddc_data(%struct.ddc_service* %19, i32 %20, i32* %9, i32 4, i32* %10, i32 4)
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load i32, i32* @HDMI_SCDC_SOURCE_VERSION, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.ddc_service*, %struct.ddc_service** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %31 = call i32 @dal_ddc_service_query_ddc_data(%struct.ddc_service* %28, i32 %29, i32* %30, i32 8, i32* null, i32 0)
  br label %32

32:                                               ; preds = %24, %3
  %33 = load i32, i32* @HDMI_SCDC_TMDS_CONFIG, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 3, i32* %38, align 4
  br label %47

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 1, i32* %43, align 4
  br label %46

44:                                               ; preds = %39
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %37
  %48 = load %struct.ddc_service*, %struct.ddc_service** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %51 = call i32 @dal_ddc_service_query_ddc_data(%struct.ddc_service* %48, i32 %49, i32* %50, i32 8, i32* null, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dal_ddc_service_query_ddc_data(%struct.ddc_service*, i32, i32*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
