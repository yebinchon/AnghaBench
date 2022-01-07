; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_asic_internal_ss_get_ss_asignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_asic_internal_ss_get_ss_asignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }

@pp_atomctrl_spread_spectrum_mode_down = common dso_local global i8* null, align 8
@pp_atomctrl_spread_spectrum_mode_center = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, i64, %struct.TYPE_11__*)* @asic_internal_ss_get_ss_asignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asic_internal_ss_get_ss_asignment(%struct.pp_hwmgr* %0, i64 %1, i64 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %14 = call i32 @memset(%struct.TYPE_11__* %13, i32 0, i32 16)
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_13__* @asic_internal_ss_get_ss_table(i32 %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %10, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = icmp eq %struct.TYPE_13__* null, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %116

22:                                               ; preds = %4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i64 0
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %11, align 8
  br label %27

27:                                               ; preds = %57, %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %29 = bitcast %struct.TYPE_12__* %28 to i64*
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = bitcast %struct.TYPE_13__* %30 to i64*
  %32 = ptrtoint i64* %29 to i64
  %33 = ptrtoint i64* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %35, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %27
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le32_to_cpu(i32 %53)
  %55 = icmp sle i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  br label %62

57:                                               ; preds = %49, %43
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %59 = bitcast %struct.TYPE_12__* %58 to i64*
  %60 = getelementptr inbounds i64, i64* %59, i64 24
  %61 = bitcast i64* %60 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %11, align 8
  br label %27

62:                                               ; preds = %56, %27
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %62
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = call i32 @GET_DATA_TABLE_MAJOR_REVISION(%struct.TYPE_13__* %78)
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %85

81:                                               ; preds = %65
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = call i32 @GET_DATA_TABLE_MINOR_REVISION(%struct.TYPE_13__* %82)
  %84 = icmp sge i32 %83, 2
  br i1 %84, label %89, label %85

85:                                               ; preds = %81, %65
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = call i32 @GET_DATA_TABLE_MAJOR_REVISION(%struct.TYPE_13__* %86)
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %94

89:                                               ; preds = %85, %81
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 100
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %106 [
    i32 0, label %98
    i32 1, label %102
  ]

98:                                               ; preds = %94
  %99 = load i8*, i8** @pp_atomctrl_spread_spectrum_mode_down, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  br label %110

102:                                              ; preds = %94
  %103 = load i8*, i8** @pp_atomctrl_spread_spectrum_mode_center, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  br label %110

106:                                              ; preds = %94
  %107 = load i8*, i8** @pp_atomctrl_spread_spectrum_mode_down, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %106, %102, %98
  br label %111

111:                                              ; preds = %110, %62
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 0, i32 1
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %21
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @asic_internal_ss_get_ss_table(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @GET_DATA_TABLE_MAJOR_REVISION(%struct.TYPE_13__*) #1

declare dso_local i32 @GET_DATA_TABLE_MINOR_REVISION(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
