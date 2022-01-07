; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_s_fourcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_s_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i8* }

@TGP_COLOR_ENC_RGB = common dso_local global i8* null, align 8
@TGP_COLOR_ENC_LUMA = common dso_local global i8* null, align 8
@TGP_COLOR_ENC_YCBCR = common dso_local global i8* null, align 8
@TGP_COLOR_ENC_HSV = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpg_s_fourcc(%struct.tpg_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpg_data*, align 8
  %5 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %8 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %10 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %12 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %11, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %14 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %13, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %16 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %15, i32 0, i32 4
  store i32 0, i32* %16, align 8
  %17 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %18 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %22 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %26 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %25, i32 0, i32 7
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 -1, i32* %28, align 4
  %29 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %30 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 -1, i32* %32, align 4
  %33 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %34 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 -1, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %205 [
    i32 172, label %38
    i32 168, label %38
    i32 164, label %38
    i32 160, label %38
    i32 175, label %38
    i32 171, label %38
    i32 167, label %38
    i32 163, label %38
    i32 174, label %38
    i32 170, label %38
    i32 166, label %38
    i32 162, label %38
    i32 173, label %38
    i32 169, label %38
    i32 165, label %38
    i32 161, label %38
    i32 187, label %51
    i32 183, label %51
    i32 182, label %51
    i32 186, label %51
    i32 151, label %51
    i32 215, label %51
    i32 177, label %51
    i32 180, label %51
    i32 154, label %51
    i32 218, label %51
    i32 204, label %51
    i32 207, label %51
    i32 185, label %51
    i32 150, label %51
    i32 214, label %51
    i32 176, label %51
    i32 179, label %51
    i32 153, label %51
    i32 217, label %51
    i32 203, label %51
    i32 206, label %51
    i32 184, label %51
    i32 149, label %51
    i32 213, label %51
    i32 209, label %51
    i32 189, label %51
    i32 211, label %51
    i32 188, label %51
    i32 210, label %51
    i32 152, label %51
    i32 155, label %51
    i32 216, label %51
    i32 219, label %51
    i32 178, label %51
    i32 205, label %51
    i32 181, label %51
    i32 208, label %51
    i32 202, label %55
    i32 147, label %55
    i32 146, label %55
    i32 145, label %55
    i32 144, label %55
    i32 128, label %55
    i32 138, label %59
    i32 136, label %59
    i32 135, label %59
    i32 143, label %59
    i32 212, label %59
    i32 148, label %59
    i32 158, label %59
    i32 157, label %59
    i32 141, label %63
    i32 132, label %63
    i32 142, label %66
    i32 133, label %66
    i32 140, label %88
    i32 131, label %88
    i32 139, label %91
    i32 196, label %113
    i32 190, label %113
    i32 197, label %116
    i32 191, label %116
    i32 198, label %134
    i32 194, label %134
    i32 199, label %137
    i32 195, label %137
    i32 137, label %155
    i32 130, label %155
    i32 193, label %179
    i32 192, label %179
    i32 134, label %193
    i32 159, label %193
    i32 129, label %193
    i32 156, label %193
    i32 201, label %201
    i32 200, label %201
  ]

38:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %39 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %40 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %39, i32 0, i32 4
  store i32 1, i32* %40, align 8
  %41 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %42 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %46 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %50 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %49, i32 0, i32 1
  store i32 2, i32* %50, align 4
  br label %51

51:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %38
  %52 = load i8*, i8** @TGP_COLOR_ENC_RGB, align 8
  %53 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %54 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %53, i32 0, i32 9
  store i8* %52, i8** %54, align 8
  br label %206

55:                                               ; preds = %2, %2, %2, %2, %2, %2
  %56 = load i8*, i8** @TGP_COLOR_ENC_LUMA, align 8
  %57 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %58 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  br label %206

59:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %60 = load i8*, i8** @TGP_COLOR_ENC_YCBCR, align 8
  %61 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %62 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %61, i32 0, i32 9
  store i8* %60, i8** %62, align 8
  br label %206

63:                                               ; preds = %2, %2
  %64 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %65 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %64, i32 0, i32 2
  store i32 3, i32* %65, align 8
  br label %66

66:                                               ; preds = %2, %2, %63
  %67 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %68 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 2, i32* %70, align 4
  %71 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %72 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 2, i32* %74, align 4
  %75 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %76 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 2, i32* %78, align 4
  %79 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %80 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 2, i32* %82, align 4
  %83 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %84 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %83, i32 0, i32 1
  store i32 3, i32* %84, align 4
  %85 = load i8*, i8** @TGP_COLOR_ENC_YCBCR, align 8
  %86 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %87 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %86, i32 0, i32 9
  store i8* %85, i8** %87, align 8
  br label %206

88:                                               ; preds = %2, %2
  %89 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %90 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %89, i32 0, i32 2
  store i32 3, i32* %90, align 8
  br label %91

91:                                               ; preds = %2, %88
  %92 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %93 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 1, i32* %95, align 4
  %96 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %97 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 1, i32* %99, align 4
  %100 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %101 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 2, i32* %103, align 4
  %104 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %105 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  store i32 2, i32* %107, align 4
  %108 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %109 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %108, i32 0, i32 1
  store i32 3, i32* %109, align 4
  %110 = load i8*, i8** @TGP_COLOR_ENC_YCBCR, align 8
  %111 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %112 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %111, i32 0, i32 9
  store i8* %110, i8** %112, align 8
  br label %206

113:                                              ; preds = %2, %2
  %114 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %115 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %114, i32 0, i32 2
  store i32 2, i32* %115, align 8
  br label %116

116:                                              ; preds = %2, %2, %113
  %117 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %118 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %122 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 1, i32* %124, align 4
  %125 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %126 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %125, i32 0, i32 7
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 -2, i32* %128, align 4
  %129 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %130 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %129, i32 0, i32 1
  store i32 2, i32* %130, align 4
  %131 = load i8*, i8** @TGP_COLOR_ENC_YCBCR, align 8
  %132 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %133 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %132, i32 0, i32 9
  store i8* %131, i8** %133, align 8
  br label %206

134:                                              ; preds = %2, %2
  %135 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %136 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %135, i32 0, i32 2
  store i32 2, i32* %136, align 8
  br label %137

137:                                              ; preds = %2, %2, %134
  %138 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %139 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 2, i32* %141, align 4
  %142 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %143 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 1, i32* %145, align 4
  %146 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %147 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %146, i32 0, i32 7
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 -2, i32* %149, align 4
  %150 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %151 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %150, i32 0, i32 1
  store i32 2, i32* %151, align 4
  %152 = load i8*, i8** @TGP_COLOR_ENC_YCBCR, align 8
  %153 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %154 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %153, i32 0, i32 9
  store i8* %152, i8** %154, align 8
  br label %206

155:                                              ; preds = %2, %2
  %156 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %157 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %156, i32 0, i32 2
  store i32 3, i32* %157, align 8
  %158 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %159 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %158, i32 0, i32 1
  store i32 3, i32* %159, align 4
  %160 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %161 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 1, i32* %163, align 4
  %164 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %165 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  store i32 1, i32* %167, align 4
  %168 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %169 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 1, i32* %171, align 4
  %172 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %173 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  store i32 1, i32* %175, align 4
  %176 = load i8*, i8** @TGP_COLOR_ENC_YCBCR, align 8
  %177 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %178 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %177, i32 0, i32 9
  store i8* %176, i8** %178, align 8
  br label %206

179:                                              ; preds = %2, %2
  %180 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %181 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %180, i32 0, i32 5
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  store i32 1, i32* %183, align 4
  %184 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %185 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %184, i32 0, i32 6
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 1, i32* %187, align 4
  %188 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %189 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %188, i32 0, i32 1
  store i32 2, i32* %189, align 4
  %190 = load i8*, i8** @TGP_COLOR_ENC_YCBCR, align 8
  %191 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %192 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %191, i32 0, i32 9
  store i8* %190, i8** %192, align 8
  br label %206

193:                                              ; preds = %2, %2, %2, %2
  %194 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %195 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %194, i32 0, i32 7
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 -2, i32* %197, align 4
  %198 = load i8*, i8** @TGP_COLOR_ENC_YCBCR, align 8
  %199 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %200 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %199, i32 0, i32 9
  store i8* %198, i8** %200, align 8
  br label %206

201:                                              ; preds = %2, %2
  %202 = load i8*, i8** @TGP_COLOR_ENC_HSV, align 8
  %203 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %204 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %203, i32 0, i32 9
  store i8* %202, i8** %204, align 8
  br label %206

205:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %269

206:                                              ; preds = %201, %193, %179, %155, %137, %116, %91, %66, %59, %55, %51
  %207 = load i32, i32* %5, align 4
  switch i32 %207, label %268 [
    i32 202, label %208
    i32 187, label %208
    i32 183, label %213
    i32 182, label %213
    i32 186, label %213
    i32 151, label %213
    i32 215, label %213
    i32 177, label %213
    i32 180, label %213
    i32 154, label %213
    i32 218, label %213
    i32 204, label %213
    i32 207, label %213
    i32 185, label %213
    i32 150, label %213
    i32 214, label %213
    i32 176, label %213
    i32 179, label %213
    i32 153, label %213
    i32 217, label %213
    i32 203, label %213
    i32 206, label %213
    i32 184, label %213
    i32 149, label %213
    i32 213, label %213
    i32 134, label %213
    i32 159, label %213
    i32 129, label %213
    i32 156, label %213
    i32 138, label %213
    i32 136, label %213
    i32 135, label %213
    i32 147, label %213
    i32 146, label %213
    i32 145, label %213
    i32 144, label %213
    i32 128, label %213
    i32 189, label %218
    i32 211, label %218
    i32 201, label %218
    i32 209, label %223
    i32 188, label %223
    i32 210, label %223
    i32 152, label %223
    i32 155, label %223
    i32 216, label %223
    i32 219, label %223
    i32 178, label %223
    i32 205, label %223
    i32 181, label %223
    i32 208, label %223
    i32 143, label %223
    i32 212, label %223
    i32 148, label %223
    i32 158, label %223
    i32 157, label %223
    i32 200, label %223
    i32 199, label %228
    i32 195, label %228
    i32 198, label %228
    i32 194, label %228
    i32 197, label %228
    i32 191, label %228
    i32 196, label %228
    i32 190, label %228
    i32 172, label %228
    i32 168, label %228
    i32 164, label %228
    i32 160, label %228
    i32 163, label %237
    i32 167, label %237
    i32 171, label %237
    i32 175, label %237
    i32 162, label %237
    i32 166, label %237
    i32 170, label %237
    i32 174, label %237
    i32 161, label %237
    i32 165, label %237
    i32 169, label %237
    i32 173, label %237
    i32 137, label %246
    i32 130, label %246
    i32 140, label %246
    i32 131, label %246
    i32 139, label %246
    i32 142, label %246
    i32 133, label %246
    i32 141, label %246
    i32 132, label %246
    i32 193, label %259
    i32 192, label %259
  ]

208:                                              ; preds = %206, %206
  %209 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %210 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %209, i32 0, i32 8
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 2, i32* %212, align 4
  br label %268

213:                                              ; preds = %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206
  %214 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %215 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %214, i32 0, i32 8
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  store i32 4, i32* %217, align 4
  br label %268

218:                                              ; preds = %206, %206, %206
  %219 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %220 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %219, i32 0, i32 8
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 6, i32* %222, align 4
  br label %268

223:                                              ; preds = %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206
  %224 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %225 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %224, i32 0, i32 8
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 8, i32* %227, align 4
  br label %268

228:                                              ; preds = %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206
  %229 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %230 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %229, i32 0, i32 8
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  store i32 2, i32* %232, align 4
  %233 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %234 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %233, i32 0, i32 8
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  store i32 2, i32* %236, align 4
  br label %268

237:                                              ; preds = %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206, %206
  %238 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %239 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %238, i32 0, i32 8
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  store i32 4, i32* %241, align 4
  %242 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %243 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %242, i32 0, i32 8
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  store i32 4, i32* %245, align 4
  br label %268

246:                                              ; preds = %206, %206, %206, %206, %206, %206, %206, %206, %206
  %247 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %248 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %247, i32 0, i32 8
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  store i32 2, i32* %250, align 4
  %251 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %252 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %251, i32 0, i32 8
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  store i32 2, i32* %254, align 4
  %255 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %256 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %255, i32 0, i32 8
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  store i32 2, i32* %258, align 4
  br label %268

259:                                              ; preds = %206, %206
  %260 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %261 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %260, i32 0, i32 8
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  store i32 2, i32* %263, align 4
  %264 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %265 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %264, i32 0, i32 8
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  store i32 4, i32* %267, align 4
  br label %268

268:                                              ; preds = %206, %259, %246, %237, %228, %223, %218, %213, %208
  store i32 1, i32* %3, align 4
  br label %269

269:                                              ; preds = %268, %205
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
