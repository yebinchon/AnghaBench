; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_get_cu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_get_cu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.amdgpu_cu_info = type { i32**, i32**, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NUM_SIMD_PER_CU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_cu_info*)* @gfx_v10_0_get_cu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_get_cu_info(%struct.amdgpu_device* %0, %struct.amdgpu_cu_info* %1) #0 {
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
  %15 = alloca [8 x i32], align 16
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
  br label %168

24:                                               ; preds = %18
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %26 = call i32 @amdgpu_gfx_parse_disable_cu(i32* %25, i32 4, i32 2)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %150, %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %153

38:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %146, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %149

47:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @gfx_v10_0_select_se_sh(%struct.amdgpu_device* %48, i32 %49, i32 %50, i32 -1)
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 %59, 2
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gfx_v10_0_set_user_wgp_inactive_bitmap_per_sh(%struct.amdgpu_device* %58, i32 %65)
  br label %67

67:                                               ; preds = %57, %54, %47
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = call i32 @gfx_v10_0_get_cu_active_bitmap_per_sh(%struct.amdgpu_device* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %72 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %70, i32* %80, align 4
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %112, %67
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %82, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %81
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %95, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %102, %94
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %106, %89
  %110 = load i32, i32* %11, align 4
  %111 = shl i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %81

115:                                              ; preds = %81
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %121, label %134

121:                                              ; preds = %115
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 2
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %6, align 4
  %127 = mul nsw i32 %126, 16
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 %128, 8
  %130 = add nsw i32 %127, %129
  %131 = shl i32 %125, %130
  %132 = load i32, i32* %14, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %124, %121, %115
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %137 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %136, i32 0, i32 1
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %135, i32* %145, align 4
  br label %146

146:                                              ; preds = %134
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %39

149:                                              ; preds = %39
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %30

153:                                              ; preds = %30
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %155 = call i32 @gfx_v10_0_select_se_sh(%struct.amdgpu_device* %154, i32 -1, i32 -1, i32 -1)
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 0
  %158 = call i32 @mutex_unlock(i32* %157)
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %161 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %164 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @NUM_SIMD_PER_CU, align 4
  %166 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %5, align 8
  %167 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %153, %21
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @amdgpu_gfx_parse_disable_cu(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v10_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_set_user_wgp_inactive_bitmap_per_sh(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v10_0_get_cu_active_bitmap_per_sh(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
