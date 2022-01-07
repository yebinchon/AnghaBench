; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, i64, i32* }
%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.amdgpu_ring*, %struct.amdgpu_ring*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*)* }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to load gfx firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"gfx\00", align 1
@AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP = common dso_local global i32 0, align 4
@AMDGPU_MAX_COMPUTE_RINGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Too many (%d) compute rings!\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"comp_%d.%d.%d\00", align 1
@AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v6_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v6_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %5, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %11, i32 %12, i32 181, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %180

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 7
  %27 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %22, i32 %23, i32 184, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %180

32:                                               ; preds = %21
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %34 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  %38 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %33, i32 %34, i32 185, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %180

43:                                               ; preds = %32
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %45 = call i32 @gfx_v6_0_scratch_init(%struct.amdgpu_device* %44)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %47 = call i32 @gfx_v6_0_init_microcode(%struct.amdgpu_device* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %180

53:                                               ; preds = %43
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %59, align 8
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %62 = call i32 %60(%struct.amdgpu_device* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %180

68:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %102, %68
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %69
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %80, i64 %82
  store %struct.amdgpu_ring* %83, %struct.amdgpu_ring** %4, align 8
  %84 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %85 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %84, i32 0, i32 6
  store i32* null, i32** %85, align 8
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %87 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @sprintf(i32 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %91 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* @AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP, align 4
  %96 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %90, %struct.amdgpu_ring* %91, i32 1024, i32* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %76
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %180

101:                                              ; preds = %76
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %69

105:                                              ; preds = %69
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %175, %105
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %178

113:                                              ; preds = %106
  %114 = load i32, i32* %6, align 4
  %115 = icmp sge i32 %114, 32
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @AMDGPU_MAX_COMPUTE_RINGS, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %178

123:                                              ; preds = %116
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %127, i64 %129
  store %struct.amdgpu_ring* %130, %struct.amdgpu_ring** %4, align 8
  %131 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %132 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %131, i32 0, i32 6
  store i32* null, i32** %132, align 8
  %133 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %134 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  %135 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %136 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %135, i32 0, i32 5
  store i64 0, i64* %136, align 8
  %137 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %138 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %141 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %144 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %146 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %149 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %152 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %155 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @sprintf(i32 %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %153, i32 %156)
  %158 = load i32, i32* @AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP, align 4
  %159 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %160 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add i32 %158, %161
  store i32 %162, i32* %8, align 4
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %164 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %163, %struct.amdgpu_ring* %164, i32 1024, i32* %167, i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %123
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %180

174:                                              ; preds = %123
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %106

178:                                              ; preds = %120, %106
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %172, %99, %65, %50, %41, %30, %19
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @gfx_v6_0_scratch_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v6_0_init_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
