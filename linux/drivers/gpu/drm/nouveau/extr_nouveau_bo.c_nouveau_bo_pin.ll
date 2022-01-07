; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, i64, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"bo %p pinned elsewhere: 0x%08x vs 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bo_pin(%struct.nouveau_bo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.ttm_buffer_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.nouveau_drm* @nouveau_bdev(i32 %16)
  store %struct.nouveau_drm* %17, %struct.nouveau_drm** %8, align 8
  %18 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %18, i32 0, i32 2
  store %struct.ttm_buffer_object* %19, %struct.ttm_buffer_object** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %21 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %20, i32 0, i32 0, i32* null)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %159

26:                                               ; preds = %3
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %44 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %49 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %39, %35, %26
  %52 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %53 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %59 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65, %56
  %69 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %70 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %71 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %72 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @NV_ERROR(%struct.nouveau_drm* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.ttm_buffer_object* %70, i32 %75, i32 %76)
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %68, %65
  %81 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %82 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %146

85:                                               ; preds = %51
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %90 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %91 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %89, i32 %90, i32 0)
  %92 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %93 = call i32 @nouveau_bo_validate(%struct.nouveau_bo* %92, i32 0, i32 0)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %146

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %85
  %99 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %100 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %103, i32 %104, i32 0)
  %106 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %107 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %107, align 8
  %110 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %111 = call i32 @nouveau_bo_validate(%struct.nouveau_bo* %110, i32 0, i32 0)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %98
  br label %146

115:                                              ; preds = %98
  %116 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %117 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %121 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %144 [
    i32 128, label %124
    i32 129, label %134
  ]

124:                                              ; preds = %115
  %125 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %126 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %130 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, %128
  store i32 %133, i32* %131, align 4
  br label %145

134:                                              ; preds = %115
  %135 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %136 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %140 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, %138
  store i32 %143, i32* %141, align 8
  br label %145

144:                                              ; preds = %115
  br label %145

145:                                              ; preds = %144, %134, %124
  br label %146

146:                                              ; preds = %145, %114, %96, %80
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %154 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %149, %146
  %156 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %157 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %156)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %24
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, %struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @nouveau_bo_validate(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
