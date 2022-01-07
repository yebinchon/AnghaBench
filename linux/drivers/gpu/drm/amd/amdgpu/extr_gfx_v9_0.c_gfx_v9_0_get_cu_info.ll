; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_get_cu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_get_cu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.amdgpu_cu_info = type { i32**, i32**, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NUM_SIMD_PER_CU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_cu_info*)* @gfx_v9_0_get_cu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_get_cu_info(%struct.amdgpu_device* %0, %struct.amdgpu_cu_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_cu_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i32], align 16
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_cu_info* %1, %struct.amdgpu_cu_info** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = icmp ne %struct.amdgpu_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %20 = icmp ne %struct.amdgpu_cu_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %200

24:                                               ; preds = %18
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %29, %34
  %36 = icmp sgt i32 %35, 16
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %200

40:                                               ; preds = %24
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @amdgpu_gfx_parse_disable_cu(i32* %41, i32 %46, i32 %51)
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %182, %40
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %185

64:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %178, %64
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %181

73:                                               ; preds = %65
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device* %74, i32 %75, i32 %76, i32 -1)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %79, %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @gfx_v9_0_set_user_cu_inactive_bitmap(%struct.amdgpu_device* %78, i32 %90)
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %93 = call i32 @gfx_v9_0_get_cu_active_bitmap(%struct.amdgpu_device* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %96 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %95, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = srem i32 %98, 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sdiv i32 %104, 4
  %106 = add nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  store i32 %94, i32* %108, align 4
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %140, %73
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %110, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %109
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %123, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %13, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %130, %122
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %117
  %138 = load i32, i32* %11, align 4
  %139 = shl i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %109

143:                                              ; preds = %109
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %149, label %162

149:                                              ; preds = %143
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 2
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %6, align 4
  %155 = mul nsw i32 %154, 16
  %156 = load i32, i32* %7, align 4
  %157 = mul nsw i32 %156, 8
  %158 = add nsw i32 %155, %157
  %159 = shl i32 %153, %158
  %160 = load i32, i32* %14, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %152, %149, %143
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %165 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %164, i32 0, i32 1
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = srem i32 %167, 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %166, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %6, align 4
  %174 = sdiv i32 %173, 4
  %175 = add nsw i32 %172, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %171, i64 %176
  store i32 %163, i32* %177, align 4
  br label %178

178:                                              ; preds = %162
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %65

181:                                              ; preds = %65
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %56

185:                                              ; preds = %56
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %187 = call i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device* %186, i32 -1, i32 -1, i32 -1)
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %189 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %188, i32 0, i32 0
  %190 = call i32 @mutex_unlock(i32* %189)
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %193 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %196 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @NUM_SIMD_PER_CU, align 4
  %198 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %199 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 8
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %185, %37, %21
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @amdgpu_gfx_parse_disable_cu(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_set_user_cu_inactive_bitmap(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v9_0_get_cu_active_bitmap(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
