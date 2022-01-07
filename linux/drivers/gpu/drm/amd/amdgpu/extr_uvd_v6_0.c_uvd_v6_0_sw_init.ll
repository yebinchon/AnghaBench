; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32* }
%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__, %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.TYPE_7__ = type { i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_UVD_SYSTEM_MESSAGE = common dso_local global i64 0, align 8
@VISLANDS30_IV_SRCID_UVD_ENC_GEN_PURP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"UVD ENC is disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"uvd\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"uvd_enc%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v6_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v6_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %7, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %11 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %12 = load i64, i64* @VISLANDS30_IV_SRCID_UVD_SYSTEM_MESSAGE, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %10, i32 %11, i64 %12, %struct.TYPE_7__* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %178

23:                                               ; preds = %1
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %25 = call i64 @uvd_v6_0_enc_support(%struct.amdgpu_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %37 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @VISLANDS30_IV_SRCID_UVD_ENC_GEN_PURP, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %36, i32 %37, i64 %41, %struct.TYPE_7__* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %178

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %28

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56, %23
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %59 = call i32 @amdgpu_uvd_sw_init(%struct.amdgpu_device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %178

64:                                               ; preds = %57
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %66 = call i64 @uvd_v6_0_enc_support(%struct.amdgpu_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %101, label %68

68:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %87, %68
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %82, i64 %84
  %86 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %69

90:                                               ; preds = %69
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = call i32 @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %90, %64
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store %struct.amdgpu_ring* %106, %struct.amdgpu_ring** %4, align 8
  %107 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %108 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, ...) @sprintf(i32 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %112 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %111, %struct.amdgpu_ring* %112, i32 512, %struct.TYPE_7__* %117, i32 0)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %101
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %178

123:                                              ; preds = %101
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %125 = call i32 @amdgpu_uvd_resume(%struct.amdgpu_device* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %178

130:                                              ; preds = %123
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %132 = call i64 @uvd_v6_0_enc_support(%struct.amdgpu_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %174

134:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %170, %134
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %173

142:                                              ; preds = %135
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %148, i64 %150
  store %struct.amdgpu_ring* %151, %struct.amdgpu_ring** %4, align 8
  %152 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %153 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i32 (i32, i8*, ...) @sprintf(i32 %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %158 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %157, %struct.amdgpu_ring* %158, i32 512, %struct.TYPE_7__* %163, i32 0)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %142
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %178

169:                                              ; preds = %142
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %135

173:                                              ; preds = %135
  br label %174

174:                                              ; preds = %173, %130
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %176 = call i32 @amdgpu_uvd_entity_init(%struct.amdgpu_device* %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %174, %167, %128, %121, %62, %50, %21
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i64, %struct.TYPE_7__*) #1

declare dso_local i64 @uvd_v6_0_enc_support(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_uvd_sw_init(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @amdgpu_uvd_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_uvd_entity_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
