; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dce_calcs.c_populate_initial_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dce_calcs.c_populate_initial_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_35__*, %struct.TYPE_36__*, %struct.TYPE_30__, %struct.TYPE_23__* }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_32__, %struct.TYPE_31__ }
%struct.TYPE_34__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_44__*, %struct.TYPE_43__ }
%struct.TYPE_44__ = type { i32, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__, %struct.TYPE_38__, %struct.TYPE_33__ }
%struct.TYPE_41__ = type { %struct.TYPE_40__, %struct.TYPE_39__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.bw_calcs_data = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@bw_def_420 = common dso_local global i32 0, align 4
@bw_def_none = common dso_local global i32 0, align 4
@bw_def_tiled = common dso_local global i8* null, align 8
@bw_def_display_micro_tiling = common dso_local global i8* null, align 8
@bw_def_underlay_only = common dso_local global i8* null, align 8
@bw_def_blend = common dso_local global i8* null, align 8
@bw_def_mono = common dso_local global i8* null, align 8
@TIMING_3D_FORMAT_HW_FRAME_PACKING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, i32, %struct.bw_calcs_data*)* @populate_initial_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_initial_data(%struct.pipe_ctx* %0, i32 %1, %struct.bw_calcs_data* %2) #0 {
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bw_calcs_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bw_calcs_data* %2, %struct.bw_calcs_data** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @bw_def_420, align 4
  %12 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %13 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %12, i32 0, i32 27
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @bw_def_none, align 4
  %15 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %16 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %15, i32 0, i32 26
  store i32 %14, i32* %16, align 8
  %17 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %18 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %17, i32 0, i32 0
  store i32 10, i32* %18, align 8
  %19 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %20 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %19, i32 0, i32 1
  store i32 8, i32* %20, align 4
  %21 = load i8*, i8** @bw_def_tiled, align 8
  %22 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %23 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %22, i32 0, i32 25
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @bw_def_tiled, align 8
  %25 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %26 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %25, i32 0, i32 24
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @bw_def_display_micro_tiling, align 8
  %28 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %29 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %28, i32 0, i32 23
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @bw_def_display_micro_tiling, align 8
  %31 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %32 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %31, i32 0, i32 22
  store i8* %30, i8** %32, align 8
  %33 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %34 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %634, %3
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %637

39:                                               ; preds = %35
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i64 %42
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %44, align 8
  %46 = icmp ne %struct.TYPE_35__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i64 %50
  %52 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i32 0, i32 3
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  %54 = icmp ne %struct.TYPE_23__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %47, %39
  br label %634

56:                                               ; preds = %47
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i64 %59
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %60, i32 0, i32 1
  %62 = load %struct.TYPE_36__*, %struct.TYPE_36__** %61, align 8
  %63 = call i32 @ASSERT(%struct.TYPE_36__* %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %56
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i64 %69
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 1
  %72 = load %struct.TYPE_36__*, %struct.TYPE_36__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %66
  %77 = load i8*, i8** @bw_def_underlay_only, align 8
  %78 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %79 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %78, i32 0, i32 21
  store i8* %77, i8** %79, align 8
  br label %84

80:                                               ; preds = %66
  %81 = load i8*, i8** @bw_def_blend, align 8
  %82 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %83 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %82, i32 0, i32 21
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %104

85:                                               ; preds = %56
  %86 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %86, i64 %88
  %90 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %89, i32 0, i32 1
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %85
  %96 = load i8*, i8** @bw_def_underlay_only, align 8
  %97 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %98 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %97, i32 0, i32 20
  store i8* %96, i8** %98, align 8
  br label %103

99:                                               ; preds = %85
  %100 = load i8*, i8** @bw_def_blend, align 8
  %101 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %102 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %101, i32 0, i32 20
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %84
  %105 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %106 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 0, i32* %111, align 4
  %112 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %113 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 0, i32* %118, align 4
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %119, i64 %121
  %123 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %122, i32 0, i32 0
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @bw_int_to_fixed(i32 %127)
  %129 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %130 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %129, i32 0, i32 19
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %131, i64 %134
  store i8* %128, i8** %135, align 8
  %136 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %136, i64 %138
  %140 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %139, i32 0, i32 0
  %141 = load %struct.TYPE_35__*, %struct.TYPE_35__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @bw_int_to_fixed(i32 %144)
  %146 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %147 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %146, i32 0, i32 18
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %148, i64 %151
  store i8* %145, i8** %152, align 8
  %153 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %153, i64 %155
  %157 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %156, i32 0, i32 0
  %158 = load %struct.TYPE_35__*, %struct.TYPE_35__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @bw_frc_to_fixed(i32 %161, i32 10000)
  %163 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %164 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %163, i32 0, i32 17
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  store i8* %162, i8** %169, align 8
  %170 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %170, i64 %172
  %174 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @bw_int_to_fixed(i32 %178)
  %180 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %181 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %180, i32 0, i32 15
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %182, i64 %185
  store i8* %179, i8** %186, align 8
  %187 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %188 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %187, i32 0, i32 15
  %189 = load i8**, i8*** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %189, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %196 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %195, i32 0, i32 16
  %197 = load i8**, i8*** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %197, i64 %200
  store i8* %194, i8** %201, align 8
  %202 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %202, i64 %204
  %206 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @bw_int_to_fixed(i32 %210)
  %212 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %213 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %212, i32 0, i32 14
  %214 = load i8**, i8*** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %214, i64 %217
  store i8* %211, i8** %218, align 8
  %219 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %219, i64 %221
  %223 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i8* @bw_int_to_fixed(i32 %227)
  %229 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %230 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %229, i32 0, i32 13
  %231 = load i8**, i8*** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %231, i64 %234
  store i8* %228, i8** %235, align 8
  %236 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %236, i64 %238
  %240 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @bw_int_to_fixed(i32 %244)
  %246 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %247 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %246, i32 0, i32 12
  %248 = load i8**, i8*** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %248, i64 %251
  store i8* %245, i8** %252, align 8
  %253 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %253, i64 %255
  %257 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @fixed31_32_to_bw_fixed(i32 %262)
  %264 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %265 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %264, i32 0, i32 11
  %266 = load i8**, i8*** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %266, i64 %269
  store i8* %263, i8** %270, align 8
  %271 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %271, i64 %273
  %275 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i8* @fixed31_32_to_bw_fixed(i32 %280)
  %282 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %283 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %282, i32 0, i32 10
  %284 = load i8**, i8*** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %284, i64 %287
  store i8* %281, i8** %288, align 8
  %289 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %290 = load i32, i32* %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %289, i64 %291
  %293 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %292, i32 0, i32 1
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  switch i32 %296, label %333 [
    i32 144, label %297
    i32 141, label %306
    i32 143, label %315
    i32 142, label %324
  ]

297:                                              ; preds = %104
  %298 = call i8* @bw_int_to_fixed(i32 0)
  %299 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %300 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %299, i32 0, i32 9
  %301 = load i8**, i8*** %300, align 8
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %302, 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %301, i64 %304
  store i8* %298, i8** %305, align 8
  br label %334

306:                                              ; preds = %104
  %307 = call i8* @bw_int_to_fixed(i32 90)
  %308 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %309 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %308, i32 0, i32 9
  %310 = load i8**, i8*** %309, align 8
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %311, 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %310, i64 %313
  store i8* %307, i8** %314, align 8
  br label %334

315:                                              ; preds = %104
  %316 = call i8* @bw_int_to_fixed(i32 180)
  %317 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %318 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %317, i32 0, i32 9
  %319 = load i8**, i8*** %318, align 8
  %320 = load i32, i32* %9, align 4
  %321 = add nsw i32 %320, 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8*, i8** %319, i64 %322
  store i8* %316, i8** %323, align 8
  br label %334

324:                                              ; preds = %104
  %325 = call i8* @bw_int_to_fixed(i32 270)
  %326 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %327 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %326, i32 0, i32 9
  %328 = load i8**, i8*** %327, align 8
  %329 = load i32, i32* %9, align 4
  %330 = add nsw i32 %329, 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %328, i64 %331
  store i8* %325, i8** %332, align 8
  br label %334

333:                                              ; preds = %104
  br label %334

334:                                              ; preds = %333, %324, %315, %306, %297
  %335 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %336 = load i32, i32* %7, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %335, i64 %337
  %339 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %338, i32 0, i32 1
  %340 = load %struct.TYPE_36__*, %struct.TYPE_36__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  switch i32 %342, label %367 [
    i32 129, label %343
    i32 136, label %343
    i32 132, label %343
    i32 133, label %351
    i32 137, label %351
    i32 134, label %351
    i32 139, label %351
    i32 138, label %351
    i32 131, label %351
    i32 130, label %351
    i32 135, label %359
    i32 140, label %359
  ]

343:                                              ; preds = %334, %334, %334
  %344 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %345 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %344, i32 0, i32 5
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %346, i64 %349
  store i32 2, i32* %350, align 4
  br label %375

351:                                              ; preds = %334, %334, %334, %334, %334, %334, %334
  %352 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %353 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %352, i32 0, i32 5
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %9, align 4
  %356 = add nsw i32 %355, 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %354, i64 %357
  store i32 4, i32* %358, align 4
  br label %375

359:                                              ; preds = %334, %334
  %360 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %361 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %360, i32 0, i32 5
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %9, align 4
  %364 = add nsw i32 %363, 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  store i32 8, i32* %366, align 4
  br label %375

367:                                              ; preds = %334
  %368 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %369 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %368, i32 0, i32 5
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %9, align 4
  %372 = add nsw i32 %371, 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %370, i64 %373
  store i32 4, i32* %374, align 4
  br label %375

375:                                              ; preds = %367, %359, %351, %343
  %376 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %377 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %376, i32 0, i32 6
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %9, align 4
  %380 = add nsw i32 %379, 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %378, i64 %381
  store i32 0, i32* %382, align 4
  %383 = load i8*, i8** @bw_def_mono, align 8
  %384 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %385 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %384, i32 0, i32 8
  %386 = load i8**, i8*** %385, align 8
  %387 = load i32, i32* %9, align 4
  %388 = add nsw i32 %387, 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8*, i8** %386, i64 %389
  store i8* %383, i8** %390, align 8
  store i32 0, i32* %8, align 4
  br label %391

391:                                              ; preds = %628, %375
  %392 = load i32, i32* %8, align 4
  %393 = icmp slt i32 %392, 2
  br i1 %393, label %394, label %631

394:                                              ; preds = %391
  %395 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %396 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %395, i32 0, i32 3
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %9, align 4
  %399 = mul nsw i32 %398, 2
  %400 = load i32, i32* %8, align 4
  %401 = add nsw i32 %399, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %397, i64 %402
  store i32 0, i32* %403, align 4
  %404 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %405 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %404, i32 0, i32 4
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %9, align 4
  %408 = mul nsw i32 %407, 2
  %409 = load i32, i32* %8, align 4
  %410 = add nsw i32 %408, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %406, i64 %411
  store i32 0, i32* %412, align 4
  %413 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %414 = load i32, i32* %7, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %413, i64 %415
  %417 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %416, i32 0, i32 3
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %420, i32 0, i32 2
  %422 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = call i8* @bw_int_to_fixed(i32 %423)
  %425 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %426 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %425, i32 0, i32 14
  %427 = load i8**, i8*** %426, align 8
  %428 = load i32, i32* %9, align 4
  %429 = mul nsw i32 %428, 2
  %430 = load i32, i32* %8, align 4
  %431 = add nsw i32 %429, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8*, i8** %427, i64 %432
  store i8* %424, i8** %433, align 8
  %434 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %435 = load i32, i32* %7, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %434, i64 %436
  %438 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %437, i32 0, i32 3
  %439 = load %struct.TYPE_23__*, %struct.TYPE_23__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %441, i32 0, i32 2
  %443 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = call i8* @bw_int_to_fixed(i32 %444)
  %446 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %447 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %446, i32 0, i32 15
  %448 = load i8**, i8*** %447, align 8
  %449 = load i32, i32* %9, align 4
  %450 = mul nsw i32 %449, 2
  %451 = load i32, i32* %8, align 4
  %452 = add nsw i32 %450, %451
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8*, i8** %448, i64 %453
  store i8* %445, i8** %454, align 8
  %455 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %456 = load i32, i32* %7, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %455, i64 %457
  %459 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %458, i32 0, i32 3
  %460 = load %struct.TYPE_23__*, %struct.TYPE_23__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %460, i32 0, i32 0
  %462 = load %struct.TYPE_44__*, %struct.TYPE_44__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = call i8* @bw_int_to_fixed(i32 %465)
  %467 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %468 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %467, i32 0, i32 16
  %469 = load i8**, i8*** %468, align 8
  %470 = load i32, i32* %9, align 4
  %471 = mul nsw i32 %470, 2
  %472 = load i32, i32* %8, align 4
  %473 = add nsw i32 %471, %472
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8*, i8** %469, i64 %474
  store i8* %466, i8** %475, align 8
  %476 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %477 = load i32, i32* %7, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %476, i64 %478
  %480 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %479, i32 0, i32 3
  %481 = load %struct.TYPE_23__*, %struct.TYPE_23__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = call i8* @bw_int_to_fixed(i32 %486)
  %488 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %489 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %488, i32 0, i32 13
  %490 = load i8**, i8*** %489, align 8
  %491 = load i32, i32* %9, align 4
  %492 = mul nsw i32 %491, 2
  %493 = load i32, i32* %8, align 4
  %494 = add nsw i32 %492, %493
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8*, i8** %490, i64 %495
  store i8* %487, i8** %496, align 8
  %497 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %498 = load i32, i32* %7, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %497, i64 %499
  %501 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %500, i32 0, i32 3
  %502 = load %struct.TYPE_23__*, %struct.TYPE_23__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = call i8* @bw_int_to_fixed(i32 %507)
  %509 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %510 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %509, i32 0, i32 12
  %511 = load i8**, i8*** %510, align 8
  %512 = load i32, i32* %9, align 4
  %513 = mul nsw i32 %512, 2
  %514 = load i32, i32* %8, align 4
  %515 = add nsw i32 %513, %514
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i8*, i8** %511, i64 %516
  store i8* %508, i8** %517, align 8
  %518 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %519 = load i32, i32* %7, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %518, i64 %520
  %522 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %521, i32 0, i32 3
  %523 = load %struct.TYPE_23__*, %struct.TYPE_23__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = call i8* @fixed31_32_to_bw_fixed(i32 %529)
  %531 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %532 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %531, i32 0, i32 11
  %533 = load i8**, i8*** %532, align 8
  %534 = load i32, i32* %9, align 4
  %535 = mul nsw i32 %534, 2
  %536 = load i32, i32* %8, align 4
  %537 = add nsw i32 %535, %536
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8*, i8** %533, i64 %538
  store i8* %530, i8** %539, align 8
  %540 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %541 = load i32, i32* %7, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %540, i64 %542
  %544 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %543, i32 0, i32 3
  %545 = load %struct.TYPE_23__*, %struct.TYPE_23__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = call i8* @fixed31_32_to_bw_fixed(i32 %551)
  %553 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %554 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %553, i32 0, i32 10
  %555 = load i8**, i8*** %554, align 8
  %556 = load i32, i32* %9, align 4
  %557 = mul nsw i32 %556, 2
  %558 = load i32, i32* %8, align 4
  %559 = add nsw i32 %557, %558
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i8*, i8** %555, i64 %560
  store i8* %552, i8** %561, align 8
  %562 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %563 = load i32, i32* %7, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %562, i64 %564
  %566 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %565, i32 0, i32 3
  %567 = load %struct.TYPE_23__*, %struct.TYPE_23__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %567, i32 0, i32 0
  %569 = load %struct.TYPE_44__*, %struct.TYPE_44__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  switch i32 %571, label %616 [
    i32 144, label %572
    i32 141, label %583
    i32 143, label %594
    i32 142, label %605
  ]

572:                                              ; preds = %394
  %573 = call i8* @bw_int_to_fixed(i32 0)
  %574 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %575 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %574, i32 0, i32 9
  %576 = load i8**, i8*** %575, align 8
  %577 = load i32, i32* %9, align 4
  %578 = mul nsw i32 %577, 2
  %579 = load i32, i32* %8, align 4
  %580 = add nsw i32 %578, %579
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i8*, i8** %576, i64 %581
  store i8* %573, i8** %582, align 8
  br label %617

583:                                              ; preds = %394
  %584 = call i8* @bw_int_to_fixed(i32 90)
  %585 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %586 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %585, i32 0, i32 9
  %587 = load i8**, i8*** %586, align 8
  %588 = load i32, i32* %9, align 4
  %589 = mul nsw i32 %588, 2
  %590 = load i32, i32* %8, align 4
  %591 = add nsw i32 %589, %590
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i8*, i8** %587, i64 %592
  store i8* %584, i8** %593, align 8
  br label %617

594:                                              ; preds = %394
  %595 = call i8* @bw_int_to_fixed(i32 180)
  %596 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %597 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %596, i32 0, i32 9
  %598 = load i8**, i8*** %597, align 8
  %599 = load i32, i32* %9, align 4
  %600 = mul nsw i32 %599, 2
  %601 = load i32, i32* %8, align 4
  %602 = add nsw i32 %600, %601
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8*, i8** %598, i64 %603
  store i8* %595, i8** %604, align 8
  br label %617

605:                                              ; preds = %394
  %606 = call i8* @bw_int_to_fixed(i32 270)
  %607 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %608 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %607, i32 0, i32 9
  %609 = load i8**, i8*** %608, align 8
  %610 = load i32, i32* %9, align 4
  %611 = mul nsw i32 %610, 2
  %612 = load i32, i32* %8, align 4
  %613 = add nsw i32 %611, %612
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i8*, i8** %609, i64 %614
  store i8* %606, i8** %615, align 8
  br label %617

616:                                              ; preds = %394
  br label %617

617:                                              ; preds = %616, %605, %594, %583, %572
  %618 = load i8*, i8** @bw_def_mono, align 8
  %619 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %620 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %619, i32 0, i32 8
  %621 = load i8**, i8*** %620, align 8
  %622 = load i32, i32* %9, align 4
  %623 = mul nsw i32 %622, 2
  %624 = load i32, i32* %8, align 4
  %625 = add nsw i32 %623, %624
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i8*, i8** %621, i64 %626
  store i8* %618, i8** %627, align 8
  br label %628

628:                                              ; preds = %617
  %629 = load i32, i32* %8, align 4
  %630 = add nsw i32 %629, 1
  store i32 %630, i32* %8, align 4
  br label %391

631:                                              ; preds = %391
  %632 = load i32, i32* %9, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %9, align 4
  br label %634

634:                                              ; preds = %631, %55
  %635 = load i32, i32* %7, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %7, align 4
  br label %35

637:                                              ; preds = %35
  store i32 0, i32* %7, align 4
  br label %638

638:                                              ; preds = %1296, %637
  %639 = load i32, i32* %7, align 4
  %640 = load i32, i32* %5, align 4
  %641 = icmp slt i32 %639, %640
  br i1 %641, label %642, label %1299

642:                                              ; preds = %638
  %643 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %644 = load i32, i32* %7, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %643, i64 %645
  %647 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %646, i32 0, i32 0
  %648 = load %struct.TYPE_35__*, %struct.TYPE_35__** %647, align 8
  %649 = icmp ne %struct.TYPE_35__* %648, null
  br i1 %649, label %650, label %658

650:                                              ; preds = %642
  %651 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %652 = load i32, i32* %7, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %651, i64 %653
  %655 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %654, i32 0, i32 3
  %656 = load %struct.TYPE_23__*, %struct.TYPE_23__** %655, align 8
  %657 = icmp ne %struct.TYPE_23__* %656, null
  br i1 %657, label %658, label %659

658:                                              ; preds = %650, %642
  br label %1296

659:                                              ; preds = %650
  %660 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %661 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %660, i32 0, i32 3
  %662 = load i32*, i32** %661, align 8
  %663 = load i32, i32* %9, align 4
  %664 = add nsw i32 %663, 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i32, i32* %662, i64 %665
  store i32 0, i32* %666, align 4
  %667 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %668 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %667, i32 0, i32 4
  %669 = load i32*, i32** %668, align 8
  %670 = load i32, i32* %9, align 4
  %671 = add nsw i32 %670, 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i32, i32* %669, i64 %672
  store i32 0, i32* %673, align 4
  %674 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %675 = load i32, i32* %7, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %674, i64 %676
  %678 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %677, i32 0, i32 0
  %679 = load %struct.TYPE_35__*, %struct.TYPE_35__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %679, i32 0, i32 0
  %681 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 8
  %683 = call i8* @bw_int_to_fixed(i32 %682)
  %684 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %685 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %684, i32 0, i32 19
  %686 = load i8**, i8*** %685, align 8
  %687 = load i32, i32* %9, align 4
  %688 = add nsw i32 %687, 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i8*, i8** %686, i64 %689
  store i8* %683, i8** %690, align 8
  %691 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %692 = load i32, i32* %7, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %691, i64 %693
  %695 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %694, i32 0, i32 0
  %696 = load %struct.TYPE_35__*, %struct.TYPE_35__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %696, i32 0, i32 0
  %698 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %697, i32 0, i32 1
  %699 = load i32, i32* %698, align 4
  %700 = call i8* @bw_int_to_fixed(i32 %699)
  %701 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %702 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %701, i32 0, i32 18
  %703 = load i8**, i8*** %702, align 8
  %704 = load i32, i32* %9, align 4
  %705 = add nsw i32 %704, 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i8*, i8** %703, i64 %706
  store i8* %700, i8** %707, align 8
  %708 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %709 = load i32, i32* %7, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %708, i64 %710
  %712 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %711, i32 0, i32 0
  %713 = load %struct.TYPE_35__*, %struct.TYPE_35__** %712, align 8
  %714 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %713, i32 0, i32 0
  %715 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %714, i32 0, i32 2
  %716 = load i32, i32* %715, align 8
  store i32 %716, i32* %10, align 4
  %717 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %718 = load i32, i32* %7, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %717, i64 %719
  %721 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %720, i32 0, i32 0
  %722 = load %struct.TYPE_35__*, %struct.TYPE_35__** %721, align 8
  %723 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %722, i32 0, i32 0
  %724 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %723, i32 0, i32 3
  %725 = load i64, i64* %724, align 8
  %726 = load i64, i64* @TIMING_3D_FORMAT_HW_FRAME_PACKING, align 8
  %727 = icmp eq i64 %725, %726
  br i1 %727, label %728, label %731

728:                                              ; preds = %659
  %729 = load i32, i32* %10, align 4
  %730 = mul i32 %729, 2
  store i32 %730, i32* %10, align 4
  br label %731

731:                                              ; preds = %728, %659
  %732 = load i32, i32* %10, align 4
  %733 = call i8* @bw_frc_to_fixed(i32 %732, i32 10000)
  %734 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %735 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %734, i32 0, i32 17
  %736 = load i8**, i8*** %735, align 8
  %737 = load i32, i32* %9, align 4
  %738 = add nsw i32 %737, 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i8*, i8** %736, i64 %739
  store i8* %733, i8** %740, align 8
  %741 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %742 = load i32, i32* %7, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %741, i64 %743
  %745 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %744, i32 0, i32 1
  %746 = load %struct.TYPE_36__*, %struct.TYPE_36__** %745, align 8
  %747 = icmp ne %struct.TYPE_36__* %746, null
  br i1 %747, label %748, label %955

748:                                              ; preds = %731
  %749 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %750 = load i32, i32* %7, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %749, i64 %751
  %753 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %752, i32 0, i32 2
  %754 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %753, i32 0, i32 0
  %755 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %754, i32 0, i32 2
  %756 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 8
  %758 = call i8* @bw_int_to_fixed(i32 %757)
  %759 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %760 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %759, i32 0, i32 15
  %761 = load i8**, i8*** %760, align 8
  %762 = load i32, i32* %9, align 4
  %763 = add nsw i32 %762, 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i8*, i8** %761, i64 %764
  store i8* %758, i8** %765, align 8
  %766 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %767 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %766, i32 0, i32 15
  %768 = load i8**, i8*** %767, align 8
  %769 = load i32, i32* %9, align 4
  %770 = add nsw i32 %769, 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i8*, i8** %768, i64 %771
  %773 = load i8*, i8** %772, align 8
  %774 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %775 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %774, i32 0, i32 16
  %776 = load i8**, i8*** %775, align 8
  %777 = load i32, i32* %9, align 4
  %778 = add nsw i32 %777, 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i8*, i8** %776, i64 %779
  store i8* %773, i8** %780, align 8
  %781 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %782 = load i32, i32* %7, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %781, i64 %783
  %785 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %784, i32 0, i32 2
  %786 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %785, i32 0, i32 0
  %787 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %786, i32 0, i32 2
  %788 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %787, i32 0, i32 1
  %789 = load i32, i32* %788, align 4
  %790 = call i8* @bw_int_to_fixed(i32 %789)
  %791 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %792 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %791, i32 0, i32 14
  %793 = load i8**, i8*** %792, align 8
  %794 = load i32, i32* %9, align 4
  %795 = add nsw i32 %794, 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds i8*, i8** %793, i64 %796
  store i8* %790, i8** %797, align 8
  %798 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %799 = load i32, i32* %7, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %798, i64 %800
  %802 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %801, i32 0, i32 2
  %803 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %802, i32 0, i32 0
  %804 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %803, i32 0, i32 1
  %805 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %804, i32 0, i32 0
  %806 = load i32, i32* %805, align 8
  %807 = call i8* @bw_int_to_fixed(i32 %806)
  %808 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %809 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %808, i32 0, i32 13
  %810 = load i8**, i8*** %809, align 8
  %811 = load i32, i32* %9, align 4
  %812 = add nsw i32 %811, 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds i8*, i8** %810, i64 %813
  store i8* %807, i8** %814, align 8
  %815 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %816 = load i32, i32* %7, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %815, i64 %817
  %819 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %818, i32 0, i32 2
  %820 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %819, i32 0, i32 0
  %821 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %820, i32 0, i32 1
  %822 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %821, i32 0, i32 1
  %823 = load i32, i32* %822, align 4
  %824 = call i8* @bw_int_to_fixed(i32 %823)
  %825 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %826 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %825, i32 0, i32 12
  %827 = load i8**, i8*** %826, align 8
  %828 = load i32, i32* %9, align 4
  %829 = add nsw i32 %828, 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds i8*, i8** %827, i64 %830
  store i8* %824, i8** %831, align 8
  %832 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %833 = load i32, i32* %7, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %832, i64 %834
  %836 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %835, i32 0, i32 2
  %837 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %836, i32 0, i32 0
  %838 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %837, i32 0, i32 0
  %839 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %838, i32 0, i32 1
  %840 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %839, i32 0, i32 0
  %841 = load i32, i32* %840, align 4
  %842 = call i8* @fixed31_32_to_bw_fixed(i32 %841)
  %843 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %844 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %843, i32 0, i32 11
  %845 = load i8**, i8*** %844, align 8
  %846 = load i32, i32* %9, align 4
  %847 = add nsw i32 %846, 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds i8*, i8** %845, i64 %848
  store i8* %842, i8** %849, align 8
  %850 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %851 = load i32, i32* %7, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %850, i64 %852
  %854 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %853, i32 0, i32 2
  %855 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %854, i32 0, i32 0
  %856 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %855, i32 0, i32 0
  %857 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %856, i32 0, i32 0
  %858 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %857, i32 0, i32 0
  %859 = load i32, i32* %858, align 8
  %860 = call i8* @fixed31_32_to_bw_fixed(i32 %859)
  %861 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %862 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %861, i32 0, i32 10
  %863 = load i8**, i8*** %862, align 8
  %864 = load i32, i32* %9, align 4
  %865 = add nsw i32 %864, 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds i8*, i8** %863, i64 %866
  store i8* %860, i8** %867, align 8
  %868 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %869 = load i32, i32* %7, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %868, i64 %870
  %872 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %871, i32 0, i32 1
  %873 = load %struct.TYPE_36__*, %struct.TYPE_36__** %872, align 8
  %874 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %873, i32 0, i32 0
  %875 = load i32, i32* %874, align 4
  switch i32 %875, label %912 [
    i32 144, label %876
    i32 141, label %885
    i32 143, label %894
    i32 142, label %903
  ]

876:                                              ; preds = %748
  %877 = call i8* @bw_int_to_fixed(i32 0)
  %878 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %879 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %878, i32 0, i32 9
  %880 = load i8**, i8*** %879, align 8
  %881 = load i32, i32* %9, align 4
  %882 = add nsw i32 %881, 4
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds i8*, i8** %880, i64 %883
  store i8* %877, i8** %884, align 8
  br label %913

885:                                              ; preds = %748
  %886 = call i8* @bw_int_to_fixed(i32 90)
  %887 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %888 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %887, i32 0, i32 9
  %889 = load i8**, i8*** %888, align 8
  %890 = load i32, i32* %9, align 4
  %891 = add nsw i32 %890, 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds i8*, i8** %889, i64 %892
  store i8* %886, i8** %893, align 8
  br label %913

894:                                              ; preds = %748
  %895 = call i8* @bw_int_to_fixed(i32 180)
  %896 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %897 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %896, i32 0, i32 9
  %898 = load i8**, i8*** %897, align 8
  %899 = load i32, i32* %9, align 4
  %900 = add nsw i32 %899, 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i8*, i8** %898, i64 %901
  store i8* %895, i8** %902, align 8
  br label %913

903:                                              ; preds = %748
  %904 = call i8* @bw_int_to_fixed(i32 270)
  %905 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %906 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %905, i32 0, i32 9
  %907 = load i8**, i8*** %906, align 8
  %908 = load i32, i32* %9, align 4
  %909 = add nsw i32 %908, 4
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds i8*, i8** %907, i64 %910
  store i8* %904, i8** %911, align 8
  br label %913

912:                                              ; preds = %748
  br label %913

913:                                              ; preds = %912, %903, %894, %885, %876
  %914 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %915 = load i32, i32* %7, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %914, i64 %916
  %918 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %917, i32 0, i32 1
  %919 = load %struct.TYPE_36__*, %struct.TYPE_36__** %918, align 8
  %920 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %919, i32 0, i32 1
  %921 = load i32, i32* %920, align 4
  switch i32 %921, label %946 [
    i32 129, label %922
    i32 128, label %922
    i32 136, label %922
    i32 132, label %922
    i32 133, label %930
    i32 137, label %930
    i32 134, label %930
    i32 139, label %930
    i32 138, label %930
    i32 131, label %930
    i32 130, label %930
    i32 135, label %938
    i32 140, label %938
  ]

922:                                              ; preds = %913, %913, %913, %913
  %923 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %924 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %923, i32 0, i32 5
  %925 = load i32*, i32** %924, align 8
  %926 = load i32, i32* %9, align 4
  %927 = add nsw i32 %926, 4
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds i32, i32* %925, i64 %928
  store i32 2, i32* %929, align 4
  br label %954

930:                                              ; preds = %913, %913, %913, %913, %913, %913, %913
  %931 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %932 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %931, i32 0, i32 5
  %933 = load i32*, i32** %932, align 8
  %934 = load i32, i32* %9, align 4
  %935 = add nsw i32 %934, 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i32, i32* %933, i64 %936
  store i32 4, i32* %937, align 4
  br label %954

938:                                              ; preds = %913, %913
  %939 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %940 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %939, i32 0, i32 5
  %941 = load i32*, i32** %940, align 8
  %942 = load i32, i32* %9, align 4
  %943 = add nsw i32 %942, 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i32, i32* %941, i64 %944
  store i32 8, i32* %945, align 4
  br label %954

946:                                              ; preds = %913
  %947 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %948 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %947, i32 0, i32 5
  %949 = load i32*, i32** %948, align 8
  %950 = load i32, i32* %9, align 4
  %951 = add nsw i32 %950, 4
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds i32, i32* %949, i64 %952
  store i32 4, i32* %953, align 4
  br label %954

954:                                              ; preds = %946, %938, %930, %922
  br label %1278

955:                                              ; preds = %731
  %956 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %957 = load i32, i32* %7, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %956, i64 %958
  %960 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %959, i32 0, i32 0
  %961 = load %struct.TYPE_35__*, %struct.TYPE_35__** %960, align 8
  %962 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %961, i32 0, i32 1
  %963 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %962, i32 0, i32 0
  %964 = load i32, i32* %963, align 8
  %965 = icmp ne i32 %964, 0
  br i1 %965, label %966, label %1180

966:                                              ; preds = %955
  %967 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %968 = load i32, i32* %7, align 4
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %967, i64 %969
  %971 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %970, i32 0, i32 0
  %972 = load %struct.TYPE_35__*, %struct.TYPE_35__** %971, align 8
  %973 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %972, i32 0, i32 1
  %974 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %973, i32 0, i32 1
  %975 = load i32, i32* %974, align 4
  %976 = icmp ne i32 %975, 0
  br i1 %976, label %977, label %1180

977:                                              ; preds = %966
  %978 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %979 = load i32, i32* %7, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %978, i64 %980
  %982 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %981, i32 0, i32 0
  %983 = load %struct.TYPE_35__*, %struct.TYPE_35__** %982, align 8
  %984 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %983, i32 0, i32 2
  %985 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %984, i32 0, i32 0
  %986 = load i32, i32* %985, align 8
  %987 = icmp ne i32 %986, 0
  br i1 %987, label %988, label %1180

988:                                              ; preds = %977
  %989 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %990 = load i32, i32* %7, align 4
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %989, i64 %991
  %993 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %992, i32 0, i32 0
  %994 = load %struct.TYPE_35__*, %struct.TYPE_35__** %993, align 8
  %995 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %994, i32 0, i32 2
  %996 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %995, i32 0, i32 1
  %997 = load i32, i32* %996, align 4
  %998 = icmp ne i32 %997, 0
  br i1 %998, label %999, label %1180

999:                                              ; preds = %988
  %1000 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1001 = load i32, i32* %7, align 4
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1000, i64 %1002
  %1004 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1003, i32 0, i32 0
  %1005 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1004, align 8
  %1006 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1005, i32 0, i32 2
  %1007 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1006, i32 0, i32 0
  %1008 = load i32, i32* %1007, align 8
  %1009 = call i8* @bw_int_to_fixed(i32 %1008)
  %1010 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1011 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1010, i32 0, i32 15
  %1012 = load i8**, i8*** %1011, align 8
  %1013 = load i32, i32* %9, align 4
  %1014 = add nsw i32 %1013, 4
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds i8*, i8** %1012, i64 %1015
  store i8* %1009, i8** %1016, align 8
  %1017 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1018 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1017, i32 0, i32 15
  %1019 = load i8**, i8*** %1018, align 8
  %1020 = load i32, i32* %9, align 4
  %1021 = add nsw i32 %1020, 4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds i8*, i8** %1019, i64 %1022
  %1024 = load i8*, i8** %1023, align 8
  %1025 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1026 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1025, i32 0, i32 16
  %1027 = load i8**, i8*** %1026, align 8
  %1028 = load i32, i32* %9, align 4
  %1029 = add nsw i32 %1028, 4
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds i8*, i8** %1027, i64 %1030
  store i8* %1024, i8** %1031, align 8
  %1032 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1033 = load i32, i32* %7, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1032, i64 %1034
  %1036 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1035, i32 0, i32 0
  %1037 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1036, align 8
  %1038 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1037, i32 0, i32 2
  %1039 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1038, i32 0, i32 1
  %1040 = load i32, i32* %1039, align 4
  %1041 = call i8* @bw_int_to_fixed(i32 %1040)
  %1042 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1043 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1042, i32 0, i32 14
  %1044 = load i8**, i8*** %1043, align 8
  %1045 = load i32, i32* %9, align 4
  %1046 = add nsw i32 %1045, 4
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds i8*, i8** %1044, i64 %1047
  store i8* %1041, i8** %1048, align 8
  %1049 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1050 = load i32, i32* %7, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1049, i64 %1051
  %1053 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1052, i32 0, i32 0
  %1054 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1053, align 8
  %1055 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1054, i32 0, i32 2
  %1056 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1055, i32 0, i32 0
  %1057 = load i32, i32* %1056, align 8
  %1058 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1059 = load i32, i32* %7, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1058, i64 %1060
  %1062 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1061, i32 0, i32 0
  %1063 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1062, align 8
  %1064 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1063, i32 0, i32 1
  %1065 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1064, i32 0, i32 0
  %1066 = load i32, i32* %1065, align 8
  %1067 = icmp eq i32 %1057, %1066
  br i1 %1067, label %1068, label %1070

1068:                                             ; preds = %999
  %1069 = call i8* @bw_int_to_fixed(i32 1)
  br label %1072

1070:                                             ; preds = %999
  %1071 = call i8* @bw_int_to_fixed(i32 2)
  br label %1072

1072:                                             ; preds = %1070, %1068
  %1073 = phi i8* [ %1069, %1068 ], [ %1071, %1070 ]
  %1074 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1075 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1074, i32 0, i32 13
  %1076 = load i8**, i8*** %1075, align 8
  %1077 = load i32, i32* %9, align 4
  %1078 = add nsw i32 %1077, 4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds i8*, i8** %1076, i64 %1079
  store i8* %1073, i8** %1080, align 8
  %1081 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1082 = load i32, i32* %7, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1081, i64 %1083
  %1085 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1084, i32 0, i32 0
  %1086 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1085, align 8
  %1087 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1086, i32 0, i32 2
  %1088 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1087, i32 0, i32 1
  %1089 = load i32, i32* %1088, align 4
  %1090 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1091 = load i32, i32* %7, align 4
  %1092 = sext i32 %1091 to i64
  %1093 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1090, i64 %1092
  %1094 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1093, i32 0, i32 0
  %1095 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1094, align 8
  %1096 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1095, i32 0, i32 1
  %1097 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1096, i32 0, i32 1
  %1098 = load i32, i32* %1097, align 4
  %1099 = icmp eq i32 %1089, %1098
  br i1 %1099, label %1100, label %1102

1100:                                             ; preds = %1072
  %1101 = call i8* @bw_int_to_fixed(i32 1)
  br label %1104

1102:                                             ; preds = %1072
  %1103 = call i8* @bw_int_to_fixed(i32 2)
  br label %1104

1104:                                             ; preds = %1102, %1100
  %1105 = phi i8* [ %1101, %1100 ], [ %1103, %1102 ]
  %1106 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1107 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1106, i32 0, i32 12
  %1108 = load i8**, i8*** %1107, align 8
  %1109 = load i32, i32* %9, align 4
  %1110 = add nsw i32 %1109, 4
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds i8*, i8** %1108, i64 %1111
  store i8* %1105, i8** %1112, align 8
  %1113 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1114 = load i32, i32* %7, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1113, i64 %1115
  %1117 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1116, i32 0, i32 0
  %1118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1117, align 8
  %1119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1118, i32 0, i32 2
  %1120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1119, i32 0, i32 0
  %1121 = load i32, i32* %1120, align 8
  %1122 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1123 = load i32, i32* %7, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1122, i64 %1124
  %1126 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1125, i32 0, i32 0
  %1127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1126, align 8
  %1128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1127, i32 0, i32 1
  %1129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1128, i32 0, i32 0
  %1130 = load i32, i32* %1129, align 8
  %1131 = call i8* @bw_frc_to_fixed(i32 %1121, i32 %1130)
  %1132 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1133 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1132, i32 0, i32 11
  %1134 = load i8**, i8*** %1133, align 8
  %1135 = load i32, i32* %9, align 4
  %1136 = add nsw i32 %1135, 4
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds i8*, i8** %1134, i64 %1137
  store i8* %1131, i8** %1138, align 8
  %1139 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1140 = load i32, i32* %7, align 4
  %1141 = sext i32 %1140 to i64
  %1142 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1139, i64 %1141
  %1143 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1142, i32 0, i32 0
  %1144 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1143, align 8
  %1145 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1144, i32 0, i32 2
  %1146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1145, i32 0, i32 1
  %1147 = load i32, i32* %1146, align 4
  %1148 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1149 = load i32, i32* %7, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1148, i64 %1150
  %1152 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1151, i32 0, i32 0
  %1153 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1152, align 8
  %1154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1153, i32 0, i32 1
  %1155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1154, i32 0, i32 1
  %1156 = load i32, i32* %1155, align 4
  %1157 = call i8* @bw_frc_to_fixed(i32 %1147, i32 %1156)
  %1158 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1159 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1158, i32 0, i32 10
  %1160 = load i8**, i8*** %1159, align 8
  %1161 = load i32, i32* %9, align 4
  %1162 = add nsw i32 %1161, 4
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds i8*, i8** %1160, i64 %1163
  store i8* %1157, i8** %1164, align 8
  %1165 = call i8* @bw_int_to_fixed(i32 0)
  %1166 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1167 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1166, i32 0, i32 9
  %1168 = load i8**, i8*** %1167, align 8
  %1169 = load i32, i32* %9, align 4
  %1170 = add nsw i32 %1169, 4
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds i8*, i8** %1168, i64 %1171
  store i8* %1165, i8** %1172, align 8
  %1173 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1174 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1173, i32 0, i32 5
  %1175 = load i32*, i32** %1174, align 8
  %1176 = load i32, i32* %9, align 4
  %1177 = add nsw i32 %1176, 4
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i32, i32* %1175, i64 %1178
  store i32 4, i32* %1179, align 4
  br label %1277

1180:                                             ; preds = %988, %977, %966, %955
  %1181 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1182 = load i32, i32* %7, align 4
  %1183 = sext i32 %1182 to i64
  %1184 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1181, i64 %1183
  %1185 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1184, i32 0, i32 0
  %1186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1185, align 8
  %1187 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1186, i32 0, i32 0
  %1188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %1187, i32 0, i32 4
  %1189 = load i32, i32* %1188, align 8
  %1190 = call i8* @bw_int_to_fixed(i32 %1189)
  %1191 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1192 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1191, i32 0, i32 15
  %1193 = load i8**, i8*** %1192, align 8
  %1194 = load i32, i32* %9, align 4
  %1195 = add nsw i32 %1194, 4
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds i8*, i8** %1193, i64 %1196
  store i8* %1190, i8** %1197, align 8
  %1198 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1199 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1198, i32 0, i32 15
  %1200 = load i8**, i8*** %1199, align 8
  %1201 = load i32, i32* %9, align 4
  %1202 = add nsw i32 %1201, 4
  %1203 = sext i32 %1202 to i64
  %1204 = getelementptr inbounds i8*, i8** %1200, i64 %1203
  %1205 = load i8*, i8** %1204, align 8
  %1206 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1207 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1206, i32 0, i32 16
  %1208 = load i8**, i8*** %1207, align 8
  %1209 = load i32, i32* %9, align 4
  %1210 = add nsw i32 %1209, 4
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds i8*, i8** %1208, i64 %1211
  store i8* %1205, i8** %1212, align 8
  %1213 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %1214 = load i32, i32* %7, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1213, i64 %1215
  %1217 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %1216, i32 0, i32 0
  %1218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %1217, align 8
  %1219 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1218, i32 0, i32 0
  %1220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %1219, i32 0, i32 5
  %1221 = load i32, i32* %1220, align 4
  %1222 = call i8* @bw_int_to_fixed(i32 %1221)
  %1223 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1224 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1223, i32 0, i32 14
  %1225 = load i8**, i8*** %1224, align 8
  %1226 = load i32, i32* %9, align 4
  %1227 = add nsw i32 %1226, 4
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds i8*, i8** %1225, i64 %1228
  store i8* %1222, i8** %1229, align 8
  %1230 = call i8* @bw_int_to_fixed(i32 1)
  %1231 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1232 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1231, i32 0, i32 13
  %1233 = load i8**, i8*** %1232, align 8
  %1234 = load i32, i32* %9, align 4
  %1235 = add nsw i32 %1234, 4
  %1236 = sext i32 %1235 to i64
  %1237 = getelementptr inbounds i8*, i8** %1233, i64 %1236
  store i8* %1230, i8** %1237, align 8
  %1238 = call i8* @bw_int_to_fixed(i32 1)
  %1239 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1240 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1239, i32 0, i32 12
  %1241 = load i8**, i8*** %1240, align 8
  %1242 = load i32, i32* %9, align 4
  %1243 = add nsw i32 %1242, 4
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds i8*, i8** %1241, i64 %1244
  store i8* %1238, i8** %1245, align 8
  %1246 = call i8* @bw_int_to_fixed(i32 1)
  %1247 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1248 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1247, i32 0, i32 11
  %1249 = load i8**, i8*** %1248, align 8
  %1250 = load i32, i32* %9, align 4
  %1251 = add nsw i32 %1250, 4
  %1252 = sext i32 %1251 to i64
  %1253 = getelementptr inbounds i8*, i8** %1249, i64 %1252
  store i8* %1246, i8** %1253, align 8
  %1254 = call i8* @bw_int_to_fixed(i32 1)
  %1255 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1256 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1255, i32 0, i32 10
  %1257 = load i8**, i8*** %1256, align 8
  %1258 = load i32, i32* %9, align 4
  %1259 = add nsw i32 %1258, 4
  %1260 = sext i32 %1259 to i64
  %1261 = getelementptr inbounds i8*, i8** %1257, i64 %1260
  store i8* %1254, i8** %1261, align 8
  %1262 = call i8* @bw_int_to_fixed(i32 0)
  %1263 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1264 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1263, i32 0, i32 9
  %1265 = load i8**, i8*** %1264, align 8
  %1266 = load i32, i32* %9, align 4
  %1267 = add nsw i32 %1266, 4
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds i8*, i8** %1265, i64 %1268
  store i8* %1262, i8** %1269, align 8
  %1270 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1271 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1270, i32 0, i32 5
  %1272 = load i32*, i32** %1271, align 8
  %1273 = load i32, i32* %9, align 4
  %1274 = add nsw i32 %1273, 4
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds i32, i32* %1272, i64 %1275
  store i32 4, i32* %1276, align 4
  br label %1277

1277:                                             ; preds = %1180, %1104
  br label %1278

1278:                                             ; preds = %1277, %954
  %1279 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1280 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1279, i32 0, i32 6
  %1281 = load i32*, i32** %1280, align 8
  %1282 = load i32, i32* %9, align 4
  %1283 = add nsw i32 %1282, 4
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds i32, i32* %1281, i64 %1284
  store i32 0, i32* %1285, align 4
  %1286 = load i8*, i8** @bw_def_mono, align 8
  %1287 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1288 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1287, i32 0, i32 8
  %1289 = load i8**, i8*** %1288, align 8
  %1290 = load i32, i32* %9, align 4
  %1291 = add nsw i32 %1290, 4
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds i8*, i8** %1289, i64 %1292
  store i8* %1286, i8** %1293, align 8
  %1294 = load i32, i32* %9, align 4
  %1295 = add nsw i32 %1294, 1
  store i32 %1295, i32* %9, align 4
  br label %1296

1296:                                             ; preds = %1278, %658
  %1297 = load i32, i32* %7, align 4
  %1298 = add nsw i32 %1297, 1
  store i32 %1298, i32* %7, align 4
  br label %638

1299:                                             ; preds = %638
  %1300 = load i32, i32* %9, align 4
  %1301 = load %struct.bw_calcs_data*, %struct.bw_calcs_data** %6, align 8
  %1302 = getelementptr inbounds %struct.bw_calcs_data, %struct.bw_calcs_data* %1301, i32 0, i32 7
  store i32 %1300, i32* %1302, align 8
  ret void
}

declare dso_local i32 @ASSERT(%struct.TYPE_36__*) #1

declare dso_local i8* @bw_int_to_fixed(i32) #1

declare dso_local i8* @bw_frc_to_fixed(i32, i32) #1

declare dso_local i8* @fixed31_32_to_bw_fixed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
