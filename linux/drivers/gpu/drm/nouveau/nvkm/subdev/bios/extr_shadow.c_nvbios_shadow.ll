; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadow.c_nvbios_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadow.c_nvbios_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow = type { i32, i64, i64, i8*, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8* }
%struct.nvkm_bios = type { i8*, i32, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@nvbios_of = common dso_local global i32 0, align 4
@nvbios_ramin = common dso_local global i32 0, align 4
@nvbios_rom = common dso_local global i32 0, align 4
@nvbios_acpi_fast = common dso_local global i32 0, align 4
@nvbios_acpi_slow = common dso_local global i32 0, align 4
@nvbios_pcirom = common dso_local global i32 0, align 4
@nvbios_platform = common dso_local global i32 0, align 4
@__const.nvbios_shadow.mthds = private unnamed_addr constant [8 x %struct.shadow] [%struct.shadow { i32 0, i64 ptrtoint (i32* @nvbios_of to i64), i64 0, i8* null, i32 0, %struct.TYPE_2__* null, i32* null }, %struct.shadow { i32 0, i64 ptrtoint (i32* @nvbios_ramin to i64), i64 0, i8* null, i32 0, %struct.TYPE_2__* null, i32* null }, %struct.shadow { i32 0, i64 ptrtoint (i32* @nvbios_rom to i64), i64 0, i8* null, i32 0, %struct.TYPE_2__* null, i32* null }, %struct.shadow { i32 0, i64 ptrtoint (i32* @nvbios_acpi_fast to i64), i64 0, i8* null, i32 0, %struct.TYPE_2__* null, i32* null }, %struct.shadow { i32 4, i64 ptrtoint (i32* @nvbios_acpi_slow to i64), i64 0, i8* null, i32 0, %struct.TYPE_2__* null, i32* null }, %struct.shadow { i32 1, i64 ptrtoint (i32* @nvbios_pcirom to i64), i64 0, i8* null, i32 0, %struct.TYPE_2__* null, i32* null }, %struct.shadow { i32 1, i64 ptrtoint (i32* @nvbios_platform to i64), i64 0, i8* null, i32 0, %struct.TYPE_2__* null, i32* null }, %struct.shadow zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"NvBios\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@shadow_fw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to locate usable image\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"using image from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_shadow(%struct.nvkm_bios* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca [8 x %struct.shadow], align 16
  %7 = alloca %struct.shadow*, align 8
  %8 = alloca %struct.shadow*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %3, align 8
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %12, i32 0, i32 2
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %4, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %5, align 8
  %17 = bitcast [8 x %struct.shadow]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([8 x %struct.shadow]* @__const.nvbios_shadow.mthds to i8*), i64 448, i1 false)
  store %struct.shadow* null, %struct.shadow** %8, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @nvkm_stropt(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kstrndup(i8* %25, i32 %26, i32 %27)
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i8* [ %28, %24 ], [ null, %29 ]
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %96

34:                                               ; preds = %30
  %35 = getelementptr inbounds [8 x %struct.shadow], [8 x %struct.shadow]* %6, i64 0, i64 0
  store %struct.shadow* %35, %struct.shadow** %7, align 8
  br label %36

36:                                               ; preds = %66, %34
  %37 = load %struct.shadow*, %struct.shadow** %7, align 8
  %38 = getelementptr inbounds %struct.shadow, %struct.shadow* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load %struct.shadow*, %struct.shadow** %7, align 8
  %43 = getelementptr inbounds %struct.shadow, %struct.shadow* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.shadow*, %struct.shadow** %7, align 8
  %51 = getelementptr inbounds %struct.shadow, %struct.shadow* %50, i32 0, i32 5
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcasecmp(i8* %49, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %48
  %58 = load %struct.shadow*, %struct.shadow** %7, align 8
  store %struct.shadow* %58, %struct.shadow** %8, align 8
  %59 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %60 = load %struct.shadow*, %struct.shadow** %7, align 8
  %61 = call i64 @shadow_method(%struct.nvkm_bios* %59, %struct.shadow* %60, i8* null)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %69

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %48, %41
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.shadow*, %struct.shadow** %7, align 8
  %68 = getelementptr inbounds %struct.shadow, %struct.shadow* %67, i32 1
  store %struct.shadow* %68, %struct.shadow** %7, align 8
  br label %36

69:                                               ; preds = %63, %36
  %70 = load %struct.shadow*, %struct.shadow** %8, align 8
  %71 = icmp ne %struct.shadow* %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = load %struct.shadow*, %struct.shadow** %7, align 8
  store %struct.shadow* %73, %struct.shadow** %8, align 8
  %74 = icmp ne %struct.shadow* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.shadow*, %struct.shadow** %7, align 8
  %77 = getelementptr inbounds %struct.shadow, %struct.shadow* %76, i32 0, i32 5
  store %struct.TYPE_2__* @shadow_fw, %struct.TYPE_2__** %77, align 8
  %78 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %79 = load %struct.shadow*, %struct.shadow** %7, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i64 @shadow_method(%struct.nvkm_bios* %78, %struct.shadow* %79, i8* %80)
  %82 = load %struct.shadow*, %struct.shadow** %7, align 8
  %83 = getelementptr inbounds %struct.shadow, %struct.shadow* %82, i32 0, i32 5
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %83, align 8
  br label %84

84:                                               ; preds = %75, %72, %69
  %85 = load %struct.shadow*, %struct.shadow** %8, align 8
  %86 = getelementptr inbounds %struct.shadow, %struct.shadow* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @kfree(i8* %93)
  store i8* null, i8** %10, align 8
  br label %95

95:                                               ; preds = %89, %84
  br label %96

96:                                               ; preds = %95, %30
  %97 = load %struct.shadow*, %struct.shadow** %8, align 8
  %98 = icmp ne %struct.shadow* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.shadow*, %struct.shadow** %8, align 8
  %101 = getelementptr inbounds %struct.shadow, %struct.shadow* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %147, label %104

104:                                              ; preds = %99, %96
  %105 = getelementptr inbounds [8 x %struct.shadow], [8 x %struct.shadow]* %6, i64 0, i64 0
  store %struct.shadow* %105, %struct.shadow** %7, align 8
  %106 = load %struct.shadow*, %struct.shadow** %7, align 8
  store %struct.shadow* %106, %struct.shadow** %8, align 8
  br label %107

107:                                              ; preds = %143, %104
  %108 = load %struct.shadow*, %struct.shadow** %7, align 8
  %109 = getelementptr inbounds %struct.shadow, %struct.shadow* %108, i32 0, i32 5
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = icmp ne %struct.TYPE_2__* %110, null
  br i1 %111, label %112, label %146

112:                                              ; preds = %107
  %113 = load %struct.shadow*, %struct.shadow** %7, align 8
  %114 = getelementptr inbounds %struct.shadow, %struct.shadow* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.shadow*, %struct.shadow** %8, align 8
  %119 = getelementptr inbounds %struct.shadow, %struct.shadow* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.shadow*, %struct.shadow** %7, align 8
  %122 = getelementptr inbounds %struct.shadow, %struct.shadow* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %117, %112
  %126 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %127 = load %struct.shadow*, %struct.shadow** %7, align 8
  %128 = call i64 @shadow_method(%struct.nvkm_bios* %126, %struct.shadow* %127, i8* null)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.shadow*, %struct.shadow** %7, align 8
  %132 = getelementptr inbounds %struct.shadow, %struct.shadow* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.shadow*, %struct.shadow** %8, align 8
  %135 = getelementptr inbounds %struct.shadow, %struct.shadow* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %133, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load %struct.shadow*, %struct.shadow** %7, align 8
  store %struct.shadow* %139, %struct.shadow** %8, align 8
  br label %140

140:                                              ; preds = %138, %130
  br label %141

141:                                              ; preds = %140, %125
  br label %142

142:                                              ; preds = %141, %117
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.shadow*, %struct.shadow** %7, align 8
  %145 = getelementptr inbounds %struct.shadow, %struct.shadow* %144, i32 1
  store %struct.shadow* %145, %struct.shadow** %7, align 8
  br label %107

146:                                              ; preds = %107
  br label %147

147:                                              ; preds = %146, %99
  %148 = getelementptr inbounds [8 x %struct.shadow], [8 x %struct.shadow]* %6, i64 0, i64 0
  store %struct.shadow* %148, %struct.shadow** %7, align 8
  br label %149

149:                                              ; preds = %164, %147
  %150 = load %struct.shadow*, %struct.shadow** %7, align 8
  %151 = getelementptr inbounds %struct.shadow, %struct.shadow* %150, i32 0, i32 5
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = icmp ne %struct.TYPE_2__* %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load %struct.shadow*, %struct.shadow** %7, align 8
  %156 = load %struct.shadow*, %struct.shadow** %8, align 8
  %157 = icmp ne %struct.shadow* %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load %struct.shadow*, %struct.shadow** %7, align 8
  %160 = getelementptr inbounds %struct.shadow, %struct.shadow* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @kfree(i8* %161)
  br label %163

163:                                              ; preds = %158, %154
  br label %164

164:                                              ; preds = %163
  %165 = load %struct.shadow*, %struct.shadow** %7, align 8
  %166 = getelementptr inbounds %struct.shadow, %struct.shadow* %165, i32 1
  store %struct.shadow* %166, %struct.shadow** %7, align 8
  br label %149

167:                                              ; preds = %149
  %168 = load %struct.shadow*, %struct.shadow** %8, align 8
  %169 = getelementptr inbounds %struct.shadow, %struct.shadow* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %174 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %173, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %206

177:                                              ; preds = %167
  %178 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %179 = load %struct.shadow*, %struct.shadow** %8, align 8
  %180 = getelementptr inbounds %struct.shadow, %struct.shadow* %179, i32 0, i32 5
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = icmp ne %struct.TYPE_2__* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load %struct.shadow*, %struct.shadow** %8, align 8
  %185 = getelementptr inbounds %struct.shadow, %struct.shadow* %184, i32 0, i32 5
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  br label %191

189:                                              ; preds = %177
  %190 = load i8*, i8** %10, align 8
  br label %191

191:                                              ; preds = %189, %183
  %192 = phi i8* [ %188, %183 ], [ %190, %189 ]
  %193 = call i32 @nvkm_debug(%struct.nvkm_subdev* %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %192)
  %194 = load %struct.shadow*, %struct.shadow** %8, align 8
  %195 = getelementptr inbounds %struct.shadow, %struct.shadow* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %198 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  %199 = load %struct.shadow*, %struct.shadow** %8, align 8
  %200 = getelementptr inbounds %struct.shadow, %struct.shadow* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %203 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = call i32 @kfree(i8* %204)
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %191, %172
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @nvkm_stropt(i32, i8*, i32*) #2

declare dso_local i8* @kstrndup(i8*, i32, i32) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i64 @shadow_method(%struct.nvkm_bios*, %struct.shadow*, i8*) #2

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
