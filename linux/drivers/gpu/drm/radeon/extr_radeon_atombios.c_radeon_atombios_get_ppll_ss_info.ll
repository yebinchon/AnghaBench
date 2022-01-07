; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_ppll_ss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_ppll_ss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_atom_ss = type { i32, i32, i32, i32, i32, i32 }
%struct._ATOM_SPREAD_SPECTRUM_INFO = type { i32* }
%struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT = type { i32, i32, i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PPLL_SS_Info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %0, %struct.radeon_atom_ss* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_atom_ss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_mode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._ATOM_SPREAD_SPECTRUM_INFO*, align 8
  %13 = alloca %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_atom_ss* %1, %struct.radeon_atom_ss** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  store %struct.radeon_mode_info* %19, %struct.radeon_mode_info** %8, align 8
  %20 = load i32, i32* @DATA, align 4
  %21 = load i32, i32* @PPLL_SS_Info, align 4
  %22 = call i32 @GetIndexIntoMasterTable(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %24 = call i32 @memset(%struct.radeon_atom_ss* %23, i32 0, i32 24)
  %25 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %26 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @atom_parse_data_header(%struct.TYPE_2__* %27, i32 %28, i32* %11, i32* %14, i32* %15, i32* %10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %102

31:                                               ; preds = %3
  %32 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %33 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct._ATOM_SPREAD_SPECTRUM_INFO*
  store %struct._ATOM_SPREAD_SPECTRUM_INFO* %40, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 4
  %44 = udiv i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %17, align 4
  %46 = load %struct._ATOM_SPREAD_SPECTRUM_INFO*, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %47 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_INFO, %struct._ATOM_SPREAD_SPECTRUM_INFO* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = bitcast i32* %49 to %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*
  store %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %50, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %98, %31
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %51
  %56 = load %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  %57 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %55
  %62 = load %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  %63 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %67 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  %69 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %72 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  %74 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  %79 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %82 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  %84 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %87 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  %89 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %92 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  store i32 1, i32* %4, align 4
  br label %103

93:                                               ; preds = %55
  %94 = load %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  %95 = bitcast %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %94 to i32*
  %96 = getelementptr inbounds i32, i32* %95, i64 28
  %97 = bitcast i32* %96 to %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT*
  store %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT* %97, %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT** %13, align 8
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %51

101:                                              ; preds = %51
  br label %102

102:                                              ; preds = %101, %3
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %61
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_2__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
