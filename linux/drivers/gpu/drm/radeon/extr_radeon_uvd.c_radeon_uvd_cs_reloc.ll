; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__, %struct.radeon_bo_list*, %struct.radeon_cs_chunk* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.radeon_bo_list = type { i32, i32 }
%struct.radeon_cs_chunk = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Relocs at %d after relocations chunk end %d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid reloc offset %X!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"buffer (%d) to small (%d / %d)!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid UVD command %X!\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"reloc %LX-%LX crossing 256MB boundary!\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"msg/fb buffer %LX-%LX out of 256MB segment!\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"More than one message in a UVD-IB!\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Message needed before other commands are send!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, i32, i32, i32*, i32*)* @radeon_uvd_cs_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_uvd_cs_reloc(%struct.radeon_cs_parser* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_cs_parser*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.radeon_cs_chunk*, align 8
  %13 = alloca %struct.radeon_bo_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %20, i32 0, i32 4
  %22 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %21, align 8
  store %struct.radeon_cs_chunk* %22, %struct.radeon_cs_chunk** %12, align 8
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %12, align 8
  %31 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %5
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %12, align 8
  %37 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %200

42:                                               ; preds = %5
  %43 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %44 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %43, i32 0, i32 3
  %45 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = udiv i32 %46, 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %45, i64 %48
  store %struct.radeon_bo_list* %49, %struct.radeon_bo_list** %13, align 8
  %50 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %13, align 8
  %51 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %13, align 8
  %55 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @radeon_bo_size(i32 %56)
  %58 = add i32 %53, %57
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %64 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* %17, align 4
  %71 = lshr i32 %70, 32
  %72 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %73 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %71, i32* %78, align 4
  %79 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %80 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %81 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %79, i32 %82)
  %84 = ashr i32 %83, 1
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %87, label %120

87:                                               ; preds = %42
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp ule i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %16, align 4
  %93 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %200

96:                                               ; preds = %87
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %17, align 4
  %99 = sub i32 %97, %98
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %15, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ult i32 %99, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %96
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %17, align 4
  %110 = sub i32 %108, %109
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %15, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %110, i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %200

119:                                              ; preds = %96
  br label %129

120:                                              ; preds = %42
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 256
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* %15, align 4
  %125 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %200

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %119
  %130 = load i32, i32* %17, align 4
  %131 = lshr i32 %130, 28
  %132 = load i32, i32* %18, align 4
  %133 = sub i32 %132, 1
  %134 = lshr i32 %133, 28
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %18, align 4
  %139 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %200

142:                                              ; preds = %129
  %143 = load i32, i32* %15, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %15, align 4
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %148, label %165

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %17, align 4
  %150 = lshr i32 %149, 28
  %151 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %152 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %156, 28
  %158 = icmp ne i32 %150, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %148
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %200

165:                                              ; preds = %148, %145
  %166 = load i32, i32* %15, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %165
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %6, align 4
  br label %200

176:                                              ; preds = %168
  %177 = load i32*, i32** %11, align 8
  store i32 1, i32* %177, align 4
  %178 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %179 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %13, align 8
  %180 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @radeon_uvd_cs_msg(%struct.radeon_cs_parser* %178, i32 %181, i32 %182, i32* %183)
  store i32 %184, i32* %19, align 4
  %185 = load i32, i32* %19, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %176
  %188 = load i32, i32* %19, align 4
  store i32 %188, i32* %6, align 4
  br label %200

189:                                              ; preds = %176
  br label %199

190:                                              ; preds = %165
  %191 = load i32*, i32** %11, align 8
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %6, align 4
  br label %200

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198, %189
  store i32 0, i32* %6, align 4
  br label %200

200:                                              ; preds = %199, %194, %187, %172, %159, %136, %123, %106, %91, %34
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_bo_size(i32) #1

declare dso_local i32 @radeon_uvd_cs_msg(%struct.radeon_cs_parser*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
