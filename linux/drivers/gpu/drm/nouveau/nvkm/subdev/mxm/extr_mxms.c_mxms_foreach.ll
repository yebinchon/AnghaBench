; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_mxms.c_mxms_foreach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_mxms.c_mxms_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mxm = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"unknown descriptor type %d\0A\00", align 1
@NV_DBG_DEBUG = common dso_local global i64 0, align 8
@mxms_foreach.mxms_desc = internal global [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"ODS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SCCS\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"IPS\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"GSD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"VSS\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"BCS\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"FCS\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%4s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxms_foreach(%struct.nvkm_mxm* %0, i32 %1, i32 (%struct.nvkm_mxm*, i32*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_mxm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.nvkm_mxm*, i32*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nvkm_subdev*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca [32 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nvkm_mxm* %0, %struct.nvkm_mxm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (%struct.nvkm_mxm*, i32*, i8*)* %2, i32 (%struct.nvkm_mxm*, i32*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %23, i32 0, i32 0
  store %struct.nvkm_subdev* %24, %struct.nvkm_subdev** %10, align 8
  %25 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %6, align 8
  %26 = call i32* @mxms_data(%struct.nvkm_mxm* %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %6, align 8
  %29 = call i32 @mxms_headerlen(%struct.nvkm_mxm* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %6, align 8
  %34 = call i32 @mxms_structlen(%struct.nvkm_mxm* %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  store i32* %37, i32** %13, align 8
  br label %38

38:                                               ; preds = %181, %4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ult i32* %39, %40
  br i1 %41, label %42, label %190

42:                                               ; preds = %38
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  store i32 %46, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %47 = load i32, i32* %14, align 4
  switch i32 %47, label %81 [
    i32 0, label %48
    i32 1, label %55
    i32 2, label %55
    i32 3, label %55
    i32 4, label %56
    i32 5, label %63
    i32 6, label %64
    i32 7, label %76
  ]

48:                                               ; preds = %42
  %49 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %6, align 8
  %50 = call i32 @mxms_version(%struct.nvkm_mxm* %49)
  %51 = icmp sge i32 %50, 768
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 8, i32* %15, align 4
  br label %54

53:                                               ; preds = %48
  store i32 6, i32* %15, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %85

55:                                               ; preds = %42, %42, %42
  store i32 4, i32* %15, align 4
  br label %85

56:                                               ; preds = %42
  store i32 4, i32* %15, align 4
  store i32 2, i32* %16, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ROM32(i32 %59)
  %61 = and i32 %60, 32505856
  %62 = ashr i32 %61, 20
  store i32 %62, i32* %17, align 4
  br label %85

63:                                               ; preds = %42
  store i32 8, i32* %15, align 4
  br label %85

64:                                               ; preds = %42
  %65 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %6, align 8
  %66 = call i32 @mxms_version(%struct.nvkm_mxm* %65)
  %67 = icmp sge i32 %66, 768
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  store i32 4, i32* %15, align 4
  store i32 8, i32* %16, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 240
  %73 = ashr i32 %72, 4
  store i32 %73, i32* %17, align 4
  br label %75

74:                                               ; preds = %64
  store i32 8, i32* %15, align 4
  br label %75

75:                                               ; preds = %74, %68
  br label %85

76:                                               ; preds = %42
  store i32 8, i32* %15, align 4
  store i32 4, i32* %16, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 7
  store i32 %80, i32* %17, align 4
  br label %85

81:                                               ; preds = %42
  %82 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_debug(%struct.nvkm_subdev* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %83)
  store i32 0, i32* %5, align 4
  br label %191

85:                                               ; preds = %76, %75, %63, %56, %55, %54
  %86 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %6, align 8
  %87 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NV_DBG_DEBUG, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %166

92:                                               ; preds = %85
  %93 = load i32 (%struct.nvkm_mxm*, i32*, i8*)*, i32 (%struct.nvkm_mxm*, i32*, i8*)** %8, align 8
  %94 = icmp eq i32 (%struct.nvkm_mxm*, i32*, i8*)* %93, null
  br i1 %94, label %95, label %166

95:                                               ; preds = %92
  %96 = load i32*, i32** %12, align 8
  store i32* %96, i32** %18, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %22, align 4
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  store i8* %99, i8** %20, align 8
  br label %100

100:                                              ; preds = %114, %95
  %101 = load i32, i32* %22, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i8*, i8** %20, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = load i32, i32* %22, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @sprintf(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %109)
  %111 = load i8*, i8** %20, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %20, align 8
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %22, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %22, align 4
  br label %100

117:                                              ; preds = %100
  %118 = load i32, i32* %15, align 4
  %119 = load i32*, i32** %18, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %18, align 8
  %122 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [8 x i8*], [8 x i8*]* @mxms_foreach.mxms_desc, i64 0, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %128 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_debug(%struct.nvkm_subdev* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %126, i8* %127)
  store i32 0, i32* %21, align 4
  br label %129

129:                                              ; preds = %158, %117
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* %17, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %165

133:                                              ; preds = %129
  %134 = load i32, i32* %16, align 4
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %22, align 4
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  store i8* %136, i8** %20, align 8
  br label %137

137:                                              ; preds = %151, %133
  %138 = load i32, i32* %22, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = load i8*, i8** %20, align 8
  %142 = load i32*, i32** %18, align 8
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @sprintf(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %146)
  %148 = load i8*, i8** %20, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %20, align 8
  br label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %22, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %22, align 4
  br label %137

154:                                              ; preds = %137
  %155 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %156 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %157 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_debug(%struct.nvkm_subdev* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %21, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32*, i32** %18, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %18, align 8
  br label %129

165:                                              ; preds = %129
  br label %166

166:                                              ; preds = %165, %92, %85
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %14, align 4
  %169 = shl i32 1, %168
  %170 = and i32 %167, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load i32 (%struct.nvkm_mxm*, i32*, i8*)*, i32 (%struct.nvkm_mxm*, i32*, i8*)** %8, align 8
  %174 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %6, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = call i32 %173(%struct.nvkm_mxm* %174, i32* %175, i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %172
  store i32 0, i32* %5, align 4
  br label %191

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %180, %166
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %16, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %182, %185
  %187 = load i32*, i32** %12, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %12, align 8
  br label %38

190:                                              ; preds = %38
  store i32 1, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %179, %81
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32* @mxms_data(%struct.nvkm_mxm*) #1

declare dso_local i32 @mxms_headerlen(%struct.nvkm_mxm*) #1

declare dso_local i32 @mxms_structlen(%struct.nvkm_mxm*) #1

declare dso_local i32 @mxms_version(%struct.nvkm_mxm*) #1

declare dso_local i32 @ROM32(i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
