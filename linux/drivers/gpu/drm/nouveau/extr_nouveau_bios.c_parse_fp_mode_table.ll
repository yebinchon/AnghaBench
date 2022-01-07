; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_fp_mode_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_fp_mode_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32, i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.nouveau_drm = type { i32 }
%struct.lvdstableheader = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Pointer to flat panel table invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"FP table revision %d.%d not currently supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Pointer to flat panel xlat table invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Bad flat panel table index\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"BIOS FP mode: %dx%d (%dkHz pixel clock)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*)* @parse_fp_mode_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fp_mode_table(%struct.drm_device* %0, %struct.nvbios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lvdstableheader, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nvbios* %1, %struct.nvbios** %5, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %17)
  store %struct.nouveau_drm* %18, %struct.nouveau_drm** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 15, i32* %11, align 4
  %19 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %20 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %26 = call i32 @NV_DEBUG(%struct.nouveau_drm* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %28 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %27, i32 0, i32 0
  store i32 75, i32* %28, align 8
  store i32 0, i32* %3, align 4
  br label %227

29:                                               ; preds = %2
  %30 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %31 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %34 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %60 [
    i32 5, label %43
    i32 16, label %44
    i32 32, label %45
  ]

43:                                               ; preds = %29
  store i32 42, i32* %10, align 4
  store i32 -1, i32* %14, align 4
  br label %69

44:                                               ; preds = %29
  store i32 44, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %69

45:                                               ; preds = %29
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %59 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 -7, i32* %14, align 4
  br label %69

60:                                               ; preds = %29
  %61 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 15
  %66 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load i32, i32* @ENOSYS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %227

69:                                               ; preds = %45, %44, %43
  %70 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %71 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %227

75:                                               ; preds = %69
  %76 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %77 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %78 = call i32 @parse_lvds_manufacturer_table_header(%struct.drm_device* %76, %struct.nvbios* %77, %struct.lvdstableheader* %16)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %3, align 4
  br label %227

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %16, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 48
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %16, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 64
  br i1 %90, label %91, label %108

91:                                               ; preds = %87, %83
  %92 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %93 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %16, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %95, %97
  %99 = add nsw i32 %98, 1
  %100 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %101 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %16, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %106 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %91, %87
  %109 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %110 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %116 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %227

119:                                              ; preds = %108
  %120 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %121 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %122 = call i32 @get_fp_strap(%struct.drm_device* %120, %struct.nvbios* %121)
  store i32 %122, i32* %15, align 4
  %123 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %124 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %127 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %132 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %130, %134
  %136 = add nsw i32 %129, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %125, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %119
  %144 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %145 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @ENOENT, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %227

148:                                              ; preds = %119
  %149 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %16, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %150, 16
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 15
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 15
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i1 [ true, %152 ], [ %157, %155 ]
  %160 = zext i1 %159 to i32
  %161 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %162 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %158, %148
  %164 = load i32, i32* %15, align 4
  %165 = icmp eq i32 %164, 15
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %167, 15
  br i1 %168, label %169, label %170

169:                                              ; preds = %166, %163
  store i32 0, i32* %3, align 4
  br label %227

170:                                              ; preds = %166
  %171 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %172 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %12, align 4
  %179 = mul nsw i32 %177, %178
  %180 = add nsw i32 %176, %179
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %180, %181
  %183 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %184 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 4
  store i32 %182, i32* %185, align 4
  %186 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %187 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %188 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %191 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 11
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %189, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ROM16(i32 %197)
  %199 = add nsw i32 %198, 1
  %200 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %201 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %204 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 25
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %202, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ROM16(i32 %210)
  %212 = add nsw i32 %211, 1
  %213 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %214 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %217 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 7
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %215, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ROM16(i32 %223)
  %225 = mul nsw i32 %224, 10
  %226 = call i32 @NV_INFO(%struct.nouveau_drm* %186, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %199, i32 %212, i32 %225)
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %170, %169, %143, %114, %81, %74, %60, %24
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, ...) #1

declare dso_local i32 @parse_lvds_manufacturer_table_header(%struct.drm_device*, %struct.nvbios*, %struct.lvdstableheader*) #1

declare dso_local i32 @get_fp_strap(%struct.drm_device*, %struct.nvbios*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32, i32, i32) #1

declare dso_local i32 @ROM16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
