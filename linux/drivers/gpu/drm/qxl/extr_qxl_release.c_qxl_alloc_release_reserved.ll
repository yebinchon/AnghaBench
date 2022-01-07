; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_alloc_release_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_alloc_release_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32*, i32, %struct.qxl_bo** }
%struct.qxl_release = type { i32, %struct.qxl_bo* }
%struct.qxl_bo = type { i32 }
%union.qxl_release_info = type { i32 }

@QXL_RELEASE_DRAWABLE = common dso_local global i32 0, align 4
@QXL_RELEASE_SURFACE_CMD = common dso_local global i32 0, align 4
@QXL_RELEASE_CURSOR_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"got illegal type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@releases_per_bo = common dso_local global i32* null, align 8
@release_size_per_bo = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_alloc_release_reserved(%struct.qxl_device* %0, i64 %1, i32 %2, %struct.qxl_release** %3, %struct.qxl_bo** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qxl_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qxl_release**, align 8
  %11 = alloca %struct.qxl_bo**, align 8
  %12 = alloca %struct.qxl_bo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.qxl_release_info*, align 8
  %16 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.qxl_release** %3, %struct.qxl_release*** %10, align 8
  store %struct.qxl_bo** %4, %struct.qxl_bo*** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @QXL_RELEASE_DRAWABLE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %38

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @QXL_RELEASE_SURFACE_CMD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %16, align 4
  br label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @QXL_RELEASE_CURSOR_CMD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 2, i32* %16, align 4
  br label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %193

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.qxl_release**, %struct.qxl_release*** %10, align 8
  %42 = call i32 @qxl_release_alloc(%struct.qxl_device* %39, i32 %40, %struct.qxl_release** %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.qxl_bo**, %struct.qxl_bo*** %11, align 8
  %47 = icmp ne %struct.qxl_bo** %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load %struct.qxl_bo**, %struct.qxl_bo*** %11, align 8
  store %struct.qxl_bo* null, %struct.qxl_bo** %49, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %193

52:                                               ; preds = %38
  %53 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %54 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %57 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32*, i32** @releases_per_bo, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %63, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %52
  %71 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %72 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %71, i32 0, i32 2
  %73 = load %struct.qxl_bo**, %struct.qxl_bo*** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.qxl_bo*, %struct.qxl_bo** %73, i64 %75
  %77 = call i32 @qxl_bo_unref(%struct.qxl_bo** %76)
  %78 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %79 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 0, i32* %83, align 4
  %84 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %85 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %84, i32 0, i32 2
  %86 = load %struct.qxl_bo**, %struct.qxl_bo*** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.qxl_bo*, %struct.qxl_bo** %86, i64 %88
  store %struct.qxl_bo* null, %struct.qxl_bo** %89, align 8
  br label %90

90:                                               ; preds = %70, %52
  %91 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %92 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %91, i32 0, i32 2
  %93 = load %struct.qxl_bo**, %struct.qxl_bo*** %92, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.qxl_bo*, %struct.qxl_bo** %93, i64 %95
  %97 = load %struct.qxl_bo*, %struct.qxl_bo** %96, align 8
  %98 = icmp ne %struct.qxl_bo* %97, null
  br i1 %98, label %120, label %99

99:                                               ; preds = %90
  %100 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %101 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %102 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %101, i32 0, i32 2
  %103 = load %struct.qxl_bo**, %struct.qxl_bo*** %102, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.qxl_bo*, %struct.qxl_bo** %103, i64 %105
  %107 = call i32 @qxl_release_bo_alloc(%struct.qxl_device* %100, %struct.qxl_bo** %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %99
  %111 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %112 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %115 = load %struct.qxl_release**, %struct.qxl_release*** %10, align 8
  %116 = load %struct.qxl_release*, %struct.qxl_release** %115, align 8
  %117 = call i32 @qxl_release_free(%struct.qxl_device* %114, %struct.qxl_release* %116)
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %6, align 4
  br label %193

119:                                              ; preds = %99
  br label %120

120:                                              ; preds = %119, %90
  %121 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %122 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %121, i32 0, i32 2
  %123 = load %struct.qxl_bo**, %struct.qxl_bo*** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.qxl_bo*, %struct.qxl_bo** %123, i64 %125
  %127 = load %struct.qxl_bo*, %struct.qxl_bo** %126, align 8
  %128 = call %struct.qxl_bo* @qxl_bo_ref(%struct.qxl_bo* %127)
  store %struct.qxl_bo* %128, %struct.qxl_bo** %12, align 8
  %129 = load %struct.qxl_bo*, %struct.qxl_bo** %12, align 8
  %130 = load %struct.qxl_release**, %struct.qxl_release*** %10, align 8
  %131 = load %struct.qxl_release*, %struct.qxl_release** %130, align 8
  %132 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %131, i32 0, i32 1
  store %struct.qxl_bo* %129, %struct.qxl_bo** %132, align 8
  %133 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %134 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @release_size_per_bo, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %139, %144
  %146 = load %struct.qxl_release**, %struct.qxl_release*** %10, align 8
  %147 = load %struct.qxl_release*, %struct.qxl_release** %146, align 8
  %148 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  %149 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %150 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load %struct.qxl_bo**, %struct.qxl_bo*** %11, align 8
  %158 = icmp ne %struct.qxl_bo** %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %120
  %160 = load %struct.qxl_bo*, %struct.qxl_bo** %12, align 8
  %161 = load %struct.qxl_bo**, %struct.qxl_bo*** %11, align 8
  store %struct.qxl_bo* %160, %struct.qxl_bo** %161, align 8
  br label %162

162:                                              ; preds = %159, %120
  %163 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %164 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %163, i32 0, i32 1
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load %struct.qxl_release**, %struct.qxl_release*** %10, align 8
  %167 = load %struct.qxl_release*, %struct.qxl_release** %166, align 8
  %168 = load %struct.qxl_bo*, %struct.qxl_bo** %12, align 8
  %169 = call i32 @qxl_release_list_add(%struct.qxl_release* %167, %struct.qxl_bo* %168)
  store i32 %169, i32* %14, align 4
  %170 = call i32 @qxl_bo_unref(%struct.qxl_bo** %12)
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %162
  %174 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %175 = load %struct.qxl_release**, %struct.qxl_release*** %10, align 8
  %176 = load %struct.qxl_release*, %struct.qxl_release** %175, align 8
  %177 = call i32 @qxl_release_free(%struct.qxl_device* %174, %struct.qxl_release* %176)
  %178 = load i32, i32* %14, align 4
  store i32 %178, i32* %6, align 4
  br label %193

179:                                              ; preds = %162
  %180 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %181 = load %struct.qxl_release**, %struct.qxl_release*** %10, align 8
  %182 = load %struct.qxl_release*, %struct.qxl_release** %181, align 8
  %183 = call %union.qxl_release_info* @qxl_release_map(%struct.qxl_device* %180, %struct.qxl_release* %182)
  store %union.qxl_release_info* %183, %union.qxl_release_info** %15, align 8
  %184 = load i32, i32* %13, align 4
  %185 = load %union.qxl_release_info*, %union.qxl_release_info** %15, align 8
  %186 = bitcast %union.qxl_release_info* %185 to i32*
  store i32 %184, i32* %186, align 4
  %187 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %188 = load %struct.qxl_release**, %struct.qxl_release*** %10, align 8
  %189 = load %struct.qxl_release*, %struct.qxl_release** %188, align 8
  %190 = load %union.qxl_release_info*, %union.qxl_release_info** %15, align 8
  %191 = call i32 @qxl_release_unmap(%struct.qxl_device* %187, %struct.qxl_release* %189, %union.qxl_release_info* %190)
  %192 = load i32, i32* %14, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %179, %173, %110, %50, %31
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @qxl_release_alloc(%struct.qxl_device*, i32, %struct.qxl_release**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qxl_bo_unref(%struct.qxl_bo**) #1

declare dso_local i32 @qxl_release_bo_alloc(%struct.qxl_device*, %struct.qxl_bo**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qxl_release_free(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local %struct.qxl_bo* @qxl_bo_ref(%struct.qxl_bo*) #1

declare dso_local i32 @qxl_release_list_add(%struct.qxl_release*, %struct.qxl_bo*) #1

declare dso_local %union.qxl_release_info* @qxl_release_map(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local i32 @qxl_release_unmap(%struct.qxl_device*, %struct.qxl_release*, %union.qxl_release_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
