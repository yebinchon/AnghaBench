; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_scale_user_regamma_ramp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_scale_user_regamma_ramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwl_float_data = type { i8*, i8*, i8* }
%struct.regamma_ramp = type { i16* }
%struct.dividers = type { i32, i32, i32 }

@GAMMA_RGB_256_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwl_float_data*, %struct.regamma_ramp*, i64, i32)* @scale_user_regamma_ramp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_user_regamma_ramp(%struct.pwl_float_data* %0, %struct.regamma_ramp* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dividers, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.pwl_float_data*, align 8
  %8 = alloca %struct.regamma_ramp*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca %struct.pwl_float_data*, align 8
  %14 = alloca %struct.pwl_float_data*, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %2, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %3, i32* %16, align 4
  %17 = bitcast %struct.dividers* %5 to i8*
  %18 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  store %struct.pwl_float_data* %0, %struct.pwl_float_data** %7, align 8
  store %struct.regamma_ramp* %1, %struct.regamma_ramp** %8, align 8
  store i16 -1, i16* %9, align 2
  store i16 -256, i16* %10, align 2
  %19 = load i16, i16* %10, align 2
  store i16 %19, i16* %11, align 2
  %20 = load %struct.pwl_float_data*, %struct.pwl_float_data** %7, align 8
  store %struct.pwl_float_data* %20, %struct.pwl_float_data** %13, align 8
  %21 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %22 = load i32, i32* @GAMMA_RGB_256_ENTRIES, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %21, i64 %23
  %25 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %24, i64 -1
  store %struct.pwl_float_data* %25, %struct.pwl_float_data** %14, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %69, %4
  %27 = load %struct.regamma_ramp*, %struct.regamma_ramp** %8, align 8
  %28 = getelementptr inbounds %struct.regamma_ramp, %struct.regamma_ramp* %27, i32 0, i32 0
  %29 = load i16*, i16** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* %10, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %64, label %38

38:                                               ; preds = %26
  %39 = load %struct.regamma_ramp*, %struct.regamma_ramp** %8, align 8
  %40 = getelementptr inbounds %struct.regamma_ramp, %struct.regamma_ramp* %39, i32 0, i32 0
  %41 = load i16*, i16** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 256
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %41, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* %10, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %64, label %51

51:                                               ; preds = %38
  %52 = load %struct.regamma_ramp*, %struct.regamma_ramp** %8, align 8
  %53 = getelementptr inbounds %struct.regamma_ramp, %struct.regamma_ramp* %52, i32 0, i32 0
  %54 = load i16*, i16** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 512
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %54, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* %10, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %51, %38, %26
  %65 = load i16, i16* %9, align 2
  store i16 %65, i16* %11, align 2
  br label %73

66:                                               ; preds = %51
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @GAMMA_RGB_256_ENTRIES, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %26, label %73

73:                                               ; preds = %69, %64
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %114, %73
  %75 = load %struct.regamma_ramp*, %struct.regamma_ramp** %8, align 8
  %76 = getelementptr inbounds %struct.regamma_ramp, %struct.regamma_ramp* %75, i32 0, i32 0
  %77 = load i16*, i16** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %77, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = load i16, i16* %11, align 2
  %83 = call i8* @dc_fixpt_from_fraction(i16 zeroext %81, i16 zeroext %82)
  %84 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %85 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.regamma_ramp*, %struct.regamma_ramp** %8, align 8
  %87 = getelementptr inbounds %struct.regamma_ramp, %struct.regamma_ramp* %86, i32 0, i32 0
  %88 = load i16*, i16** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 256
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16* %88, i64 %91
  %93 = load i16, i16* %92, align 2
  %94 = load i16, i16* %11, align 2
  %95 = call i8* @dc_fixpt_from_fraction(i16 zeroext %93, i16 zeroext %94)
  %96 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %97 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.regamma_ramp*, %struct.regamma_ramp** %8, align 8
  %99 = getelementptr inbounds %struct.regamma_ramp, %struct.regamma_ramp* %98, i32 0, i32 0
  %100 = load i16*, i16** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 512
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16, i16* %100, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = load i16, i16* %11, align 2
  %107 = call i8* @dc_fixpt_from_fraction(i16 zeroext %105, i16 zeroext %106)
  %108 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %109 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %111 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %110, i32 1
  store %struct.pwl_float_data* %111, %struct.pwl_float_data** %13, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %74
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @GAMMA_RGB_256_ENTRIES, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %74, label %118

118:                                              ; preds = %114
  %119 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %120 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @dc_fixpt_mul(i8* %121, i32 %123)
  %125 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %126 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %128 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @dc_fixpt_mul(i8* %129, i32 %131)
  %133 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %134 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %136 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @dc_fixpt_mul(i8* %137, i32 %139)
  %141 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %142 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %144 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %143, i32 1
  store %struct.pwl_float_data* %144, %struct.pwl_float_data** %13, align 8
  %145 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %146 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @dc_fixpt_mul(i8* %147, i32 %149)
  %151 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %152 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %154 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @dc_fixpt_mul(i8* %155, i32 %157)
  %159 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %160 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %162 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @dc_fixpt_mul(i8* %163, i32 %165)
  %167 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %168 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %170 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %169, i32 1
  store %struct.pwl_float_data* %170, %struct.pwl_float_data** %13, align 8
  %171 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %172 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @dc_fixpt_mul(i8* %173, i32 %175)
  %177 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %178 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  %179 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %180 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @dc_fixpt_mul(i8* %181, i32 %183)
  %185 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %186 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  %187 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %188 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @dc_fixpt_mul(i8* %189, i32 %191)
  %193 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %194 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @dc_fixpt_from_fraction(i16 zeroext, i16 zeroext) #2

declare dso_local i8* @dc_fixpt_mul(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
