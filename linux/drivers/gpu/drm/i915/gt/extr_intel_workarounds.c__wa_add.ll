; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c__wa_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c__wa_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_wa_list = type { i32, %struct.i915_wa*, i32 }
%struct.i915_wa = type { i32, i32, i32, i32 }

@WA_LIST_CHUNK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No space for workaround init!\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Discarding overwritten w/a for reg %04x (mask: %08x, value: %08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_wa_list*, %struct.i915_wa*)* @_wa_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_wa_add(%struct.i915_wa_list* %0, %struct.i915_wa* %1) #0 {
  %3 = alloca %struct.i915_wa_list*, align 8
  %4 = alloca %struct.i915_wa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i915_wa*, align 8
  %10 = alloca %struct.i915_wa*, align 8
  %11 = alloca i32, align 4
  store %struct.i915_wa_list* %0, %struct.i915_wa_list** %3, align 8
  store %struct.i915_wa* %1, %struct.i915_wa** %4, align 8
  %12 = load %struct.i915_wa*, %struct.i915_wa** %4, align 8
  %13 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @i915_mmio_reg_offset(i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %18 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @WA_LIST_CHUNK, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @is_power_of_2(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  %27 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %28 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @IS_ALIGNED(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %2
  %34 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %35 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ALIGN(i32 %37, i32 %38)
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.i915_wa* @kmalloc_array(i32 %39, i32 16, i32 %40)
  store %struct.i915_wa* %41, %struct.i915_wa** %10, align 8
  %42 = load %struct.i915_wa*, %struct.i915_wa** %10, align 8
  %43 = icmp ne %struct.i915_wa* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %240

46:                                               ; preds = %33
  %47 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %48 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %47, i32 0, i32 1
  %49 = load %struct.i915_wa*, %struct.i915_wa** %48, align 8
  %50 = icmp ne %struct.i915_wa* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.i915_wa*, %struct.i915_wa** %10, align 8
  %53 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %54 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %53, i32 0, i32 1
  %55 = load %struct.i915_wa*, %struct.i915_wa** %54, align 8
  %56 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %57 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = zext i32 %58 to i64
  %60 = mul i64 16, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memcpy(%struct.i915_wa* %52, %struct.i915_wa* %55, i32 %61)
  br label %63

63:                                               ; preds = %51, %46
  %64 = load %struct.i915_wa*, %struct.i915_wa** %10, align 8
  %65 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %66 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %65, i32 0, i32 1
  store %struct.i915_wa* %64, %struct.i915_wa** %66, align 8
  br label %67

67:                                               ; preds = %63, %2
  br label %68

68:                                               ; preds = %172, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %173

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub i32 %74, %75
  %77 = udiv i32 %76, 2
  %78 = add i32 %73, %77
  store i32 %78, i32* %11, align 4
  %79 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %80 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %79, i32 0, i32 1
  %81 = load %struct.i915_wa*, %struct.i915_wa** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %81, i64 %83
  %85 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @i915_mmio_reg_offset(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %72
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %172

94:                                               ; preds = %72
  %95 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %96 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %95, i32 0, i32 1
  %97 = load %struct.i915_wa*, %struct.i915_wa** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %97, i64 %99
  %101 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @i915_mmio_reg_offset(i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = icmp sgt i64 %103, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %7, align 4
  br label %171

109:                                              ; preds = %94
  %110 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %111 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %110, i32 0, i32 1
  %112 = load %struct.i915_wa*, %struct.i915_wa** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %112, i64 %114
  store %struct.i915_wa* %115, %struct.i915_wa** %9, align 8
  %116 = load %struct.i915_wa*, %struct.i915_wa** %4, align 8
  %117 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %120 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %118, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %109
  %126 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %127 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @i915_mmio_reg_offset(i32 %128)
  %130 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %131 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %134 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %129, i32 %132, i32 %135)
  %137 = load %struct.i915_wa*, %struct.i915_wa** %4, align 8
  %138 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %142 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %125, %109
  %146 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %147 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = load %struct.i915_wa*, %struct.i915_wa** %4, align 8
  %151 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %154 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.i915_wa*, %struct.i915_wa** %4, align 8
  %158 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %161 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load %struct.i915_wa*, %struct.i915_wa** %4, align 8
  %165 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %168 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %240

171:                                              ; preds = %107
  br label %172

172:                                              ; preds = %171, %91
  br label %68

173:                                              ; preds = %68
  %174 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %175 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  %178 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %179 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %178, i32 0, i32 1
  %180 = load %struct.i915_wa*, %struct.i915_wa** %179, align 8
  %181 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %182 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = zext i32 %183 to i64
  %186 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %180, i64 %185
  store %struct.i915_wa* %186, %struct.i915_wa** %9, align 8
  %187 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %188 = load %struct.i915_wa*, %struct.i915_wa** %4, align 8
  %189 = bitcast %struct.i915_wa* %187 to i8*
  %190 = bitcast %struct.i915_wa* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %189, i8* align 4 %190, i64 16, i1 false)
  br label %191

191:                                              ; preds = %224, %173
  %192 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %193 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %192, i32 -1
  store %struct.i915_wa* %193, %struct.i915_wa** %9, align 8
  %194 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %195 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %194, i32 0, i32 1
  %196 = load %struct.i915_wa*, %struct.i915_wa** %195, align 8
  %197 = icmp ugt %struct.i915_wa* %192, %196
  br i1 %197, label %198, label %240

198:                                              ; preds = %191
  %199 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %200 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %199, i64 0
  %201 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @i915_mmio_reg_offset(i32 %202)
  %204 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %205 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %204, i64 1
  %206 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @i915_mmio_reg_offset(i32 %207)
  %209 = icmp eq i64 %203, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @GEM_BUG_ON(i32 %210)
  %212 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %213 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %212, i64 1
  %214 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @i915_mmio_reg_offset(i32 %215)
  %217 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %218 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %217, i64 0
  %219 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @i915_mmio_reg_offset(i32 %220)
  %222 = icmp sgt i64 %216, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %198
  br label %240

224:                                              ; preds = %198
  %225 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %226 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %225, i64 1
  %227 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  %228 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %227, i64 0
  %229 = bitcast %struct.i915_wa* %226 to { i64, i64 }*
  %230 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 4
  %232 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %229, i32 0, i32 1
  %233 = load i64, i64* %232, align 4
  %234 = bitcast %struct.i915_wa* %228 to { i64, i64 }*
  %235 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 4
  %237 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %234, i32 0, i32 1
  %238 = load i64, i64* %237, align 4
  %239 = call i32 @swap(i64 %231, i64 %233, i64 %236, i64 %238)
  br label %191

240:                                              ; preds = %44, %145, %223, %191
  ret void
}

declare dso_local i64 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.i915_wa* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.i915_wa*, %struct.i915_wa*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @swap(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
