; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_get_threshold_for_moves.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_get_threshold_for_moves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@AMD_IS_APU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32*, i32*)* @amdgpu_cs_get_threshold_for_moves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_cs_get_threshold_for_moves(%struct.amdgpu_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 200000, i32* %12, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  br label %187

25:                                               ; preds = %3
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 4
  %32 = call i32 @atomic64_read(i32* %31)
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @TTM_PL_VRAM, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @amdgpu_vram_mgr_usage(i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %50

46:                                               ; preds = %25
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %47, %48
  br label %50

50:                                               ; preds = %46, %45
  %51 = phi i32 [ 0, %45 ], [ %49, %46 ]
  store i32 %51, i32* %9, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = call i32 @spin_lock(i32* %54)
  %56 = call i32 (...) @ktime_get()
  %57 = call i32 @ktime_to_us(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %58, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i8* @min(i32 %73, i32 200000)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sge i32 %79, 134217728
  br i1 %80, label %86, label %81

81:                                               ; preds = %50
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sdiv i32 %83, 8
  %85 = icmp sge i32 %82, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %81, %50
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AMD_IS_APU, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sdiv i32 %95, 4
  %97 = call i32 @bytes_to_us(%struct.amdgpu_device* %94, i32 %96)
  store i32 %97, i32* %13, align 4
  br label %99

98:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %98, %93
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @max(i32 %100, i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %99, %81
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @us_to_bytes(%struct.amdgpu_device* %111, i32 %115)
  %117 = load i32*, i32** %5, align 8
  store i32 %116, i32* %117, align 4
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 3
  %120 = call i32 @amdgpu_gmc_vram_full_visible(%struct.TYPE_8__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %180, label %122

122:                                              ; preds = %110
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %14, align 4
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @TTM_PL_VRAM, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = call i32 @amdgpu_vram_mgr_vis_usage(i32* %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %172

138:                                              ; preds = %122
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %16, align 4
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %143 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %145, %146
  %148 = call i8* @min(i32 %147, i32 200000)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %14, align 4
  %155 = sdiv i32 %154, 2
  %156 = icmp sge i32 %153, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %138
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sdiv i32 %159, 2
  %161 = call i32 @bytes_to_us(%struct.amdgpu_device* %158, i32 %160)
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %163 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @max(i32 %161, i32 %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %157, %138
  br label %172

172:                                              ; preds = %171, %122
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %175 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @us_to_bytes(%struct.amdgpu_device* %173, i32 %177)
  %179 = load i32*, i32** %6, align 8
  store i32 %178, i32* %179, align 4
  br label %182

180:                                              ; preds = %110
  %181 = load i32*, i32** %6, align 8
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %180, %172
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %184 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  %186 = call i32 @spin_unlock(i32* %185)
  br label %187

187:                                              ; preds = %182, %22
  ret void
}

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @amdgpu_vram_mgr_usage(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @bytes_to_us(%struct.amdgpu_device*, i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @us_to_bytes(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_gmc_vram_full_visible(%struct.TYPE_8__*) #1

declare dso_local i32 @amdgpu_vram_mgr_vis_usage(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
