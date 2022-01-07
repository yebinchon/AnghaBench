; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_get_src_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_get_src_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, %struct.atom_context* }
%struct.atom_context = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32*, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)* }

@.str = private unnamed_addr constant [12 x i8] c"REG[0x%04X]\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PCI registers are not implemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"SYSIO registers are not implemented\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Bad IO mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Undefined indirect IO read method %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"PS[0x%02X,0x%04X]\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"WS[0x%02X]\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ID[0x%04X+%04X]\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ID[0x%04X]\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"ATOM: fb read beyond scratch region: %d vs. %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"FB[0x%02X]\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"IMM 0x%08X\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"IMM 0x%04X\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"IMM 0x%02X\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"PLL[0x%02X]\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"MC[0x%02X]\00", align 1
@atom_arg_mask = common dso_local global i32* null, align 8
@atom_arg_shift = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c".[31:0] -> 0x%08X\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c".[15:0] -> 0x%04X\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c".[23:8] -> 0x%04X\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c".[31:16] -> 0x%04X\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c".[7:0] -> 0x%02X\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c".[15:8] -> 0x%02X\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c".[23:16] -> 0x%02X\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c".[31:24] -> 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32)* @atom_get_src_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_get_src_int(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.atom_context*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -842150451, i32* %13, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.atom_context*, %struct.atom_context** %18, align 8
  store %struct.atom_context* %19, %struct.atom_context** %16, align 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 7
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 3
  %24 = and i32 %23, 7
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  switch i32 %25, label %360 [
    i32 149, label %26
    i32 150, label %103
    i32 148, label %124
    i32 154, label %190
    i32 155, label %221
    i32 153, label %269
    i32 151, label %314
    i32 152, label %337
  ]

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @U16(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %26
  %39 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %40 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %45 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %62 [
    i32 147, label %47
    i32 146, label %58
    i32 145, label %60
  ]

47:                                               ; preds = %38
  %48 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %49 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %48, i32 0, i32 9
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %51, align 8
  %53 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %54 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %53, i32 0, i32 9
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 %52(%struct.TYPE_7__* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %102

58:                                               ; preds = %38
  %59 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %412

60:                                               ; preds = %38
  %61 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %412

62:                                               ; preds = %38
  %63 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %64 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %412

70:                                               ; preds = %62
  %71 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %72 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %71, i32 0, i32 10
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %75 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 127
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %70
  %83 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %84 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 127
  %87 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  store i32 0, i32* %6, align 4
  br label %412

88:                                               ; preds = %70
  %89 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %90 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %91 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %90, i32 0, i32 10
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %94 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 127
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @atom_iio_execute(%struct.atom_context* %89, i32 %99, i32 %100, i32 0)
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %88, %47
  br label %360

103:                                              ; preds = %5
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @U8(i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @get_unaligned_le32(i32* %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %103
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %103
  br label %360

124:                                              ; preds = %5
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @U8(i32 %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i32, i32* %12, align 4
  %135 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %124
  %137 = load i32, i32* %12, align 4
  switch i32 %137, label %181 [
    i32 131, label %138
    i32 129, label %144
    i32 134, label %150
    i32 128, label %154
    i32 132, label %158
    i32 136, label %163
    i32 133, label %169
    i32 135, label %173
    i32 130, label %177
  ]

138:                                              ; preds = %136
  %139 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %140 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %13, align 4
  br label %189

144:                                              ; preds = %136
  %145 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %146 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %13, align 4
  br label %189

150:                                              ; preds = %136
  %151 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %152 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %13, align 4
  br label %189

154:                                              ; preds = %136
  %155 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %156 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %13, align 4
  br label %189

158:                                              ; preds = %136
  %159 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %160 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 1, %161
  store i32 %162, i32* %13, align 4
  br label %189

163:                                              ; preds = %136
  %164 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %165 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 1, %166
  %168 = xor i32 %167, -1
  store i32 %168, i32* %13, align 4
  br label %189

169:                                              ; preds = %136
  %170 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %171 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %13, align 4
  br label %189

173:                                              ; preds = %136
  %174 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %175 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %13, align 4
  br label %189

177:                                              ; preds = %136
  %178 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %179 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %13, align 4
  br label %189

181:                                              ; preds = %136
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %13, align 4
  br label %189

189:                                              ; preds = %181, %177, %173, %169, %163, %158, %154, %150, %144, %138
  br label %360

190:                                              ; preds = %5
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @U16(i32 %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 2
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %190
  %200 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %201 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %207 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %205, i32 %208)
  br label %213

210:                                              ; preds = %199
  %211 = load i32, i32* %12, align 4
  %212 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %210, %204
  br label %214

214:                                              ; preds = %213, %190
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %217 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %215, %218
  %220 = call i32 @U32(i32 %219)
  store i32 %220, i32* %13, align 4
  br label %360

221:                                              ; preds = %5
  %222 = load i32*, i32** %9, align 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @U8(i32 %223)
  store i32 %224, i32* %12, align 4
  %225 = load i32*, i32** %9, align 8
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  %228 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %229 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %12, align 4
  %232 = mul nsw i32 %231, 4
  %233 = add nsw i32 %230, %232
  %234 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %235 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = icmp sgt i32 %233, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %221
  %239 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %240 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %12, align 4
  %243 = mul nsw i32 %242, 4
  %244 = add nsw i32 %241, %243
  %245 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %246 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %244, i32 %247)
  store i32 0, i32* %13, align 4
  br label %262

249:                                              ; preds = %221
  %250 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %251 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %250, i32 0, i32 8
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %254 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = sdiv i32 %255, 4
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %252, i64 %259
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %13, align 4
  br label %262

262:                                              ; preds = %249, %238
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, i32* %12, align 4
  %267 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %265, %262
  br label %360

269:                                              ; preds = %5
  %270 = load i32, i32* %14, align 4
  switch i32 %270, label %313 [
    i32 140, label %271
    i32 139, label %285
    i32 137, label %285
    i32 138, label %285
    i32 144, label %299
    i32 141, label %299
    i32 143, label %299
    i32 142, label %299
  ]

271:                                              ; preds = %269
  %272 = load i32*, i32** %9, align 8
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @U32(i32 %273)
  store i32 %274, i32* %13, align 4
  %275 = load i32*, i32** %9, align 8
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, 4
  store i32 %277, i32* %275, align 4
  %278 = load i32, i32* %11, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load i32, i32* %13, align 4
  %282 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %280, %271
  %284 = load i32, i32* %13, align 4
  store i32 %284, i32* %6, align 4
  br label %412

285:                                              ; preds = %269, %269, %269
  %286 = load i32*, i32** %9, align 8
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @U16(i32 %287)
  store i32 %288, i32* %13, align 4
  %289 = load i32*, i32** %9, align 8
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 2
  store i32 %291, i32* %289, align 4
  %292 = load i32, i32* %11, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %285
  %295 = load i32, i32* %13, align 4
  %296 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %294, %285
  %298 = load i32, i32* %13, align 4
  store i32 %298, i32* %6, align 4
  br label %412

299:                                              ; preds = %269, %269, %269, %269
  %300 = load i32*, i32** %9, align 8
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @U8(i32 %301)
  store i32 %302, i32* %13, align 4
  %303 = load i32*, i32** %9, align 8
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 4
  %306 = load i32, i32* %11, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %299
  %309 = load i32, i32* %13, align 4
  %310 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %309)
  br label %311

311:                                              ; preds = %308, %299
  %312 = load i32, i32* %13, align 4
  store i32 %312, i32* %6, align 4
  br label %412

313:                                              ; preds = %269
  store i32 0, i32* %6, align 4
  br label %412

314:                                              ; preds = %5
  %315 = load i32*, i32** %9, align 8
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @U8(i32 %316)
  store i32 %317, i32* %12, align 4
  %318 = load i32*, i32** %9, align 8
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 4
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %314
  %324 = load i32, i32* %12, align 4
  %325 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %323, %314
  %327 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %328 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %327, i32 0, i32 9
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 1
  %331 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %330, align 8
  %332 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %333 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %332, i32 0, i32 9
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %333, align 8
  %335 = load i32, i32* %12, align 4
  %336 = call i32 %331(%struct.TYPE_7__* %334, i32 %335)
  store i32 %336, i32* %13, align 4
  br label %360

337:                                              ; preds = %5
  %338 = load i32*, i32** %9, align 8
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @U8(i32 %339)
  store i32 %340, i32* %12, align 4
  %341 = load i32*, i32** %9, align 8
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %341, align 4
  %344 = load i32, i32* %11, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %337
  %347 = load i32, i32* %12, align 4
  %348 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %347)
  br label %349

349:                                              ; preds = %346, %337
  %350 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %351 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %350, i32 0, i32 9
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 2
  %354 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %353, align 8
  %355 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %356 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %355, i32 0, i32 9
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %356, align 8
  %358 = load i32, i32* %12, align 4
  %359 = call i32 %354(%struct.TYPE_7__* %357, i32 %358)
  store i32 %359, i32* %13, align 4
  br label %360

360:                                              ; preds = %5, %349, %326, %268, %214, %189, %123, %102
  %361 = load i32*, i32** %10, align 8
  %362 = icmp ne i32* %361, null
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load i32, i32* %13, align 4
  %365 = load i32*, i32** %10, align 8
  store i32 %364, i32* %365, align 4
  br label %366

366:                                              ; preds = %363, %360
  %367 = load i32*, i32** @atom_arg_mask, align 8
  %368 = load i32, i32* %14, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %13, align 4
  %373 = and i32 %372, %371
  store i32 %373, i32* %13, align 4
  %374 = load i32*, i32** @atom_arg_shift, align 8
  %375 = load i32, i32* %14, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %13, align 4
  %380 = ashr i32 %379, %378
  store i32 %380, i32* %13, align 4
  %381 = load i32, i32* %11, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %410

383:                                              ; preds = %366
  %384 = load i32, i32* %14, align 4
  switch i32 %384, label %409 [
    i32 140, label %385
    i32 139, label %388
    i32 137, label %391
    i32 138, label %394
    i32 144, label %397
    i32 141, label %400
    i32 143, label %403
    i32 142, label %406
  ]

385:                                              ; preds = %383
  %386 = load i32, i32* %13, align 4
  %387 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %386)
  br label %409

388:                                              ; preds = %383
  %389 = load i32, i32* %13, align 4
  %390 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %389)
  br label %409

391:                                              ; preds = %383
  %392 = load i32, i32* %13, align 4
  %393 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %392)
  br label %409

394:                                              ; preds = %383
  %395 = load i32, i32* %13, align 4
  %396 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %395)
  br label %409

397:                                              ; preds = %383
  %398 = load i32, i32* %13, align 4
  %399 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %398)
  br label %409

400:                                              ; preds = %383
  %401 = load i32, i32* %13, align 4
  %402 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %401)
  br label %409

403:                                              ; preds = %383
  %404 = load i32, i32* %13, align 4
  %405 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %404)
  br label %409

406:                                              ; preds = %383
  %407 = load i32, i32* %13, align 4
  %408 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %407)
  br label %409

409:                                              ; preds = %383, %406, %403, %400, %397, %394, %391, %388, %385
  br label %410

410:                                              ; preds = %409, %366
  %411 = load i32, i32* %13, align 4
  store i32 %411, i32* %6, align 4
  br label %412

412:                                              ; preds = %410, %313, %311, %297, %283, %82, %68, %60, %58
  %413 = load i32, i32* %6, align 4
  ret i32 %413
}

declare dso_local i32 @U16(i32) #1

declare dso_local i32 @DEBUG(i8*, i32, ...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @atom_iio_execute(%struct.atom_context*, i32, i32, i32) #1

declare dso_local i32 @U8(i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @U32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
