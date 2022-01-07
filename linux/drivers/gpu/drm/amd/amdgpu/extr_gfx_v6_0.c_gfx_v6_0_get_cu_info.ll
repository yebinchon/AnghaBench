; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_get_cu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_get_cu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.amdgpu_cu_info }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.amdgpu_cu_info = type { i32**, i32**, i32, i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v6_0_get_cu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_get_cu_info(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdgpu_cu_info*, align 8
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.amdgpu_cu_info* %17, %struct.amdgpu_cu_info** %12, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AMD_IS_APU, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 2, i32* %14, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %25, %24
  %32 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %12, align 8
  %33 = call i32 @memset(%struct.amdgpu_cu_info* %32, i32 0, i32 24)
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %35 = call i32 @amdgpu_gfx_parse_disable_cu(i32* %34, i32 4, i32 2)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %155, %31
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %158

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %151, %47
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %154

56:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @gfx_v6_0_select_se_sh(%struct.amdgpu_device* %57, i32 %58, i32 %59, i32 -1)
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = mul nsw i32 %68, 2
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gfx_v6_0_set_user_cu_inactive_bitmap(%struct.amdgpu_device* %67, i32 %74)
  br label %76

76:                                               ; preds = %66, %63, %56
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = call i32 @gfx_v6_0_get_cu_enabled(%struct.amdgpu_device* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %12, align 8
  %81 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %79, i32* %89, align 4
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %117, %76
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %91, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %90
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %98
  %115 = load i32, i32* %8, align 4
  %116 = shl i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %90

120:                                              ; preds = %90
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load i32, i32* %4, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %3, align 4
  %132 = mul nsw i32 %131, 16
  %133 = load i32, i32* %4, align 4
  %134 = mul nsw i32 %133, 8
  %135 = add nsw i32 %132, %134
  %136 = shl i32 %130, %135
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %129, %126, %120
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %12, align 8
  %142 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %141, i32 0, i32 1
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %140, i32* %150, align 4
  br label %151

151:                                              ; preds = %139
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %48

154:                                              ; preds = %48
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %3, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %3, align 4
  br label %39

158:                                              ; preds = %39
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %160 = call i32 @gfx_v6_0_select_se_sh(%struct.amdgpu_device* %159, i32 -1, i32 -1, i32 -1)
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %162 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %161, i32 0, i32 1
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %12, align 8
  %166 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %12, align 8
  %169 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  ret void
}

declare dso_local i32 @memset(%struct.amdgpu_cu_info*, i32, i32) #1

declare dso_local i32 @amdgpu_gfx_parse_disable_cu(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v6_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v6_0_set_user_cu_inactive_bitmap(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v6_0_get_cu_enabled(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
