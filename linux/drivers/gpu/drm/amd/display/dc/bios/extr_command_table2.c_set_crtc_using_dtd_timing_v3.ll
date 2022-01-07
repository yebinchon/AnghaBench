; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table2.c_set_crtc_using_dtd_timing_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table2.c_set_crtc_using_dtd_timing_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (i32, i32*)* }
%struct.bp_hw_crtc_timing_parameters = type { %struct.TYPE_4__, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.set_crtc_using_dtd_timing_parameters = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@ATOM_HSYNC_POLARITY = common dso_local global i32 0, align 4
@ATOM_VSYNC_POLARITY = common dso_local global i32 0, align 4
@ATOM_INTERLACE = common dso_local global i32 0, align 4
@setcrtc_usingdtdtiming = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_hw_crtc_timing_parameters*)* @set_crtc_using_dtd_timing_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_crtc_using_dtd_timing_v3(%struct.bios_parser* %0, %struct.bp_hw_crtc_timing_parameters* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_hw_crtc_timing_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.set_crtc_using_dtd_timing_parameters, align 8
  %7 = alloca i32, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_hw_crtc_timing_parameters* %1, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %8 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %8, i32* %5, align 4
  %9 = bitcast %struct.set_crtc_using_dtd_timing_parameters* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 80, i1 false)
  %10 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %11 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64 (i32, i32*)*, i64 (i32, i32*)** %13, align 8
  %15 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %16 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = call i64 %14(i32 %17, i32* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 9
  store i32 %21, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %25 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 8
  store i8* %28, i8** %29, align 8
  %30 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %31 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %34 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 7
  store i8* %38, i8** %39, align 8
  %40 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %41 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 6
  store i8* %44, i8** %45, align 8
  %46 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %47 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %50 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %57 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %60 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %67 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %73 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %76 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = trunc i64 %78 to i32
  %80 = call i8* @cpu_to_le16(i32 %79)
  %81 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %83 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 2
  store i8* %86, i8** %87, align 8
  %88 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %89 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %23
  %94 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @le16_to_cpu(i8* %95)
  %97 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %98 = or i32 %96, %97
  %99 = call i8* @cpu_to_le16(i32 %98)
  %100 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  br label %101

101:                                              ; preds = %93, %23
  %102 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %103 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @le16_to_cpu(i8* %109)
  %111 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %112 = or i32 %110, %111
  %113 = call i8* @cpu_to_le16(i32 %112)
  %114 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 0
  store i8* %113, i8** %114, align 8
  br label %115

115:                                              ; preds = %107, %101
  %116 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %117 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @le16_to_cpu(i8* %123)
  %125 = load i32, i32* @ATOM_INTERLACE, align 4
  %126 = or i32 %124, %125
  %127 = call i8* @cpu_to_le16(i32 %126)
  %128 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 0
  store i8* %127, i8** %128, align 8
  %129 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @le16_to_cpu(i8* %130)
  %132 = add nsw i32 %131, 1
  %133 = call i8* @cpu_to_le16(i32 %132)
  %134 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 1
  store i8* %133, i8** %134, align 8
  br label %135

135:                                              ; preds = %121, %115
  %136 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %137 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @le16_to_cpu(i8* %143)
  %145 = or i32 %144, 256
  %146 = call i8* @cpu_to_le16(i32 %145)
  %147 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, %struct.set_crtc_using_dtd_timing_parameters* %6, i32 0, i32 0
  store i8* %146, i8** %147, align 8
  br label %148

148:                                              ; preds = %141, %135
  %149 = load i32, i32* @setcrtc_usingdtdtiming, align 4
  %150 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %149, %struct.set_crtc_using_dtd_timing_parameters* byval(%struct.set_crtc_using_dtd_timing_parameters) align 8 %6)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %148
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @le16_to_cpu(i8*) #2

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.set_crtc_using_dtd_timing_parameters* byval(%struct.set_crtc_using_dtd_timing_parameters) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
