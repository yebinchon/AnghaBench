; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_is_matching_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_is_matching_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.dcn_otg_state = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optc1_is_matching_timing(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.dc_crtc_timing*, align 8
  %6 = alloca %struct.dc_crtc_timing, align 8
  %7 = alloca %struct.dcn_otg_state, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %5, align 8
  %8 = bitcast %struct.dc_crtc_timing* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 104, i1 false)
  %9 = bitcast %struct.dcn_otg_state* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 88, i1 false)
  %10 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %11 = icmp eq %struct.timing_generator* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %14 = icmp eq %struct.dc_crtc_timing* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %166

16:                                               ; preds = %12
  %17 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %18 = call i32 @DCN10TG_FROM_TG(%struct.timing_generator* %17)
  %19 = call i32 @optc1_read_otg_state(i32 %18, %struct.dcn_otg_state* %7)
  %20 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %27, %29
  %31 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %30, %32
  %34 = sub nsw i64 %25, %33
  %35 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %38, %40
  %42 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 2
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %44, %46
  %48 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 3
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 4
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %56, %58
  %60 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %59, %61
  %63 = sub nsw i64 %54, %62
  %64 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 5
  store i64 %63, i64* %64, align 8
  %65 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  %68 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %67, %69
  %71 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 6
  store i64 %70, i64* %71, align 8
  %72 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %73, %75
  %77 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 7
  store i64 %76, i64* %77, align 8
  %78 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %79 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %166

85:                                               ; preds = %16
  %86 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %87 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %166

93:                                               ; preds = %85
  %94 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %95 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %166

101:                                              ; preds = %93
  %102 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %103 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %102, i32 0, i32 9
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 9
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %166

109:                                              ; preds = %101
  %110 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %111 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %166

117:                                              ; preds = %109
  %118 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %119 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %166

125:                                              ; preds = %117
  %126 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %127 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %166

133:                                              ; preds = %125
  %134 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %135 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %134, i32 0, i32 10
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 10
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %166

141:                                              ; preds = %133
  %142 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %143 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %144, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %166

149:                                              ; preds = %141
  %150 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %151 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %150, i32 0, i32 11
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 11
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %152, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %166

157:                                              ; preds = %149
  %158 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %159 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 7
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %160, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %166

165:                                              ; preds = %157
  store i32 1, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %164, %156, %148, %140, %132, %124, %116, %108, %100, %92, %84, %15
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @optc1_read_otg_state(i32, %struct.dcn_otg_state*) #2

declare dso_local i32 @DCN10TG_FROM_TG(%struct.timing_generator*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
