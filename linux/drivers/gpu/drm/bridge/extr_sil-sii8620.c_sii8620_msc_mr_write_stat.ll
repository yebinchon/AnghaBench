; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_msc_mr_write_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_msc_mr_write_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32*, i32* }

@MHL_DST_SIZE = common dso_local global i32 0, align 4
@MHL_XDS_SIZE = common dso_local global i32 0, align 4
@REG_MHL_STAT_0 = common dso_local global i32 0, align 4
@REG_MHL_EXTSTAT_0 = common dso_local global i32 0, align 4
@MHL_DST_CONNECTED_RDY = common dso_local global i64 0, align 8
@MHL_DST_CONN_DCAP_RDY = common dso_local global i32 0, align 4
@MHL_DST_LINK_MODE = common dso_local global i64 0, align 8
@MHL_DST_LM_PATH_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_msc_mr_write_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_msc_mr_write_stat(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %6 = load i32, i32* @MHL_DST_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @MHL_XDS_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %13 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %14 = load i32, i32* @REG_MHL_STAT_0, align 4
  %15 = load i32, i32* @MHL_DST_SIZE, align 4
  %16 = call i32 @sii8620_read_buf(%struct.sii8620* %13, i32 %14, i32* %9, i32 %15)
  %17 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %18 = load i32, i32* @REG_MHL_EXTSTAT_0, align 4
  %19 = load i32, i32* @MHL_XDS_SIZE, align 4
  %20 = call i32 @sii8620_read_buf(%struct.sii8620* %17, i32 %18, i32* %12, i32 %19)
  %21 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %22 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @MHL_DST_SIZE, align 4
  %25 = call i32 @sii8620_update_array(i32* %23, i32* %9, i32 %24)
  %26 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %27 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @MHL_XDS_SIZE, align 4
  %30 = call i32 @sii8620_update_array(i32* %28, i32* %12, i32 %29)
  %31 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %32 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @MHL_DST_CONNECTED_RDY, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @MHL_DST_CONNECTED_RDY, align 8
  %38 = getelementptr inbounds i32, i32* %9, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = load i32, i32* @MHL_DST_CONN_DCAP_RDY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %1
  %45 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %46 = call i32 @sii8620_status_dcap_ready(%struct.sii8620* %45)
  %47 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %48 = call i32 @sii8620_is_mhl3(%struct.sii8620* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %52 = call i32 @sii8620_mt_read_devcap(%struct.sii8620* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %1
  %55 = load i64, i64* @MHL_DST_LINK_MODE, align 8
  %56 = getelementptr inbounds i32, i32* %9, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MHL_DST_LM_PATH_ENABLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %63 = call i32 @sii8620_status_changed_path(%struct.sii8620* %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sii8620_read_buf(%struct.sii8620*, i32, i32*, i32) #2

declare dso_local i32 @sii8620_update_array(i32*, i32*, i32) #2

declare dso_local i32 @sii8620_status_dcap_ready(%struct.sii8620*) #2

declare dso_local i32 @sii8620_is_mhl3(%struct.sii8620*) #2

declare dso_local i32 @sii8620_mt_read_devcap(%struct.sii8620*, i32) #2

declare dso_local i32 @sii8620_status_changed_path(%struct.sii8620*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
