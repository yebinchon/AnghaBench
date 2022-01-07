; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_afmt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_afmt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i32 }

@RADEON_MAX_AFMT_BLOCKS = common dso_local global i32 0, align 4
@radeon_afmt_init.eg_offsets = internal global [7 x i32] [i32 133, i32 132, i32 131, i32 130, i32 129, i32 128, i32 51200], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@DCE3_HDMI_OFFSET0 = common dso_local global i32 0, align 4
@DCE3_HDMI_OFFSET1 = common dso_local global i32 0, align 4
@DCE2_HDMI_OFFSET0 = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@DCE2_HDMI_OFFSET1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_afmt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_afmt_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @RADEON_MAX_AFMT_BLOCKS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %13, i64 %15
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %16, align 8
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i64 @ASIC_IS_NODCE(%struct.radeon_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %260

25:                                               ; preds = %20
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %112

29:                                               ; preds = %25
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = call i64 @ASIC_IS_DCE8(%struct.radeon_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 7, i32* %4, align 4
  br label %53

34:                                               ; preds = %29
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 6, i32* %4, align 4
  br label %52

39:                                               ; preds = %34
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 6, i32* %4, align 4
  br label %51

44:                                               ; preds = %39
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = call i64 @ASIC_IS_DCE41(%struct.radeon_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 2, i32* %4, align 4
  br label %50

49:                                               ; preds = %44
  store i32 6, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %43
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @radeon_afmt_init.eg_offsets, i64 0, i64 0))
  %56 = icmp sgt i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %108, %53
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %111

63:                                               ; preds = %59
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kzalloc(i32 4, i32 %64)
  %66 = bitcast i8* %65 to %struct.TYPE_3__*
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %70, i64 %72
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %73, align 8
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %77, i64 %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = icmp ne %struct.TYPE_3__* %81, null
  br i1 %82, label %83, label %107

83:                                               ; preds = %63
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [7 x i32], [7 x i32]* @radeon_afmt_init.eg_offsets, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %91, i64 %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %87, i32* %96, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %101, i64 %103
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i32 %97, i32* %106, align 4
  br label %107

107:                                              ; preds = %83, %63
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %59

111:                                              ; preds = %59
  br label %259

112:                                              ; preds = %25
  %113 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %114 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %181

116:                                              ; preds = %112
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call i8* @kzalloc(i32 4, i32 %117)
  %119 = bitcast i8* %118 to %struct.TYPE_3__*
  %120 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %123, i64 0
  store %struct.TYPE_3__* %119, %struct.TYPE_3__** %124, align 8
  %125 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %128, i64 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = icmp ne %struct.TYPE_3__* %130, null
  br i1 %131, label %132, label %148

132:                                              ; preds = %116
  %133 = load i32, i32* @DCE3_HDMI_OFFSET0, align 4
  %134 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %137, i64 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 %133, i32* %140, align 4
  %141 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %144, i64 0
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %132, %116
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call i8* @kzalloc(i32 4, i32 %149)
  %151 = bitcast i8* %150 to %struct.TYPE_3__*
  %152 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %155, i64 1
  store %struct.TYPE_3__* %151, %struct.TYPE_3__** %156, align 8
  %157 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %160, i64 1
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = icmp ne %struct.TYPE_3__* %162, null
  br i1 %163, label %164, label %180

164:                                              ; preds = %148
  %165 = load i32, i32* @DCE3_HDMI_OFFSET1, align 4
  %166 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %169, i64 1
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i32 %165, i32* %172, align 4
  %173 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %174 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %176, i64 1
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %164, %148
  br label %258

181:                                              ; preds = %112
  %182 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %183 = call i64 @ASIC_IS_DCE2(%struct.radeon_device* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %257

185:                                              ; preds = %181
  %186 = load i32, i32* @GFP_KERNEL, align 4
  %187 = call i8* @kzalloc(i32 4, i32 %186)
  %188 = bitcast i8* %187 to %struct.TYPE_3__*
  %189 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %192, i64 0
  store %struct.TYPE_3__* %188, %struct.TYPE_3__** %193, align 8
  %194 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %197, i64 0
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = icmp ne %struct.TYPE_3__* %199, null
  br i1 %200, label %201, label %217

201:                                              ; preds = %185
  %202 = load i32, i32* @DCE2_HDMI_OFFSET0, align 4
  %203 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %204 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %206, i64 0
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  store i32 %202, i32* %209, align 4
  %210 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %213, i64 0
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  store i32 0, i32* %216, align 4
  br label %217

217:                                              ; preds = %201, %185
  %218 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %219 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @CHIP_R600, align 8
  %222 = icmp sge i64 %220, %221
  br i1 %222, label %223, label %256

223:                                              ; preds = %217
  %224 = load i32, i32* @GFP_KERNEL, align 4
  %225 = call i8* @kzalloc(i32 4, i32 %224)
  %226 = bitcast i8* %225 to %struct.TYPE_3__*
  %227 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %230, i64 1
  store %struct.TYPE_3__* %226, %struct.TYPE_3__** %231, align 8
  %232 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %235, i64 1
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = icmp ne %struct.TYPE_3__* %237, null
  br i1 %238, label %239, label %255

239:                                              ; preds = %223
  %240 = load i32, i32* @DCE2_HDMI_OFFSET1, align 4
  %241 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %242 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %244, i64 1
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  store i32 %240, i32* %247, align 4
  %248 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %251, i64 1
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  store i32 1, i32* %254, align 4
  br label %255

255:                                              ; preds = %239, %223
  br label %256

256:                                              ; preds = %255, %217
  br label %257

257:                                              ; preds = %256, %181
  br label %258

258:                                              ; preds = %257, %180
  br label %259

259:                                              ; preds = %258, %111
  br label %260

260:                                              ; preds = %259, %24
  ret void
}

declare dso_local i64 @ASIC_IS_NODCE(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE8(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE2(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
