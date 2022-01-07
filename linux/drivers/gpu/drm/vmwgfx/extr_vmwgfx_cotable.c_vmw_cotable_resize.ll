; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i64, i32, %struct.vmw_buffer_object*, %struct.vmw_private* }
%struct.vmw_buffer_object = type { %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { i64 }
%struct.vmw_private = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.vmw_cotable = type { i64, i32 }
%struct.ttm_bo_kmap_obj = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_mob_ne_placement = common dso_local global i32 0, align 4
@vmw_bo_bo_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed initializing new cotable MOB.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed waiting for cotable unbind.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed mapping old COTable on resize.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed mapping new COTable on resize.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@vmw_mob_placement = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed validating new COTable backup buffer.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed switching COTable backup buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*, i64)* @vmw_cotable_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cotable_resize(%struct.vmw_resource* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ttm_operation_ctx, align 4
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca %struct.vmw_cotable*, align 8
  %9 = alloca %struct.vmw_buffer_object*, align 8
  %10 = alloca %struct.vmw_buffer_object*, align 8
  %11 = alloca %struct.ttm_buffer_object*, align 8
  %12 = alloca %struct.ttm_buffer_object*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ttm_bo_kmap_obj, align 4
  %17 = alloca %struct.ttm_bo_kmap_obj, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.vmw_resource* %0, %struct.vmw_resource** %4, align 8
  store i64 %1, i64* %5, align 8
  %21 = bitcast %struct.ttm_operation_ctx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %23 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %22, i32 0, i32 3
  %24 = load %struct.vmw_private*, %struct.vmw_private** %23, align 8
  store %struct.vmw_private* %24, %struct.vmw_private** %7, align 8
  %25 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %26 = call %struct.vmw_cotable* @vmw_cotable(%struct.vmw_resource* %25)
  store %struct.vmw_cotable* %26, %struct.vmw_cotable** %8, align 8
  %27 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %28 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %27, i32 0, i32 2
  %29 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %28, align 8
  store %struct.vmw_buffer_object* %29, %struct.vmw_buffer_object** %10, align 8
  %30 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %31 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %30, i32 0, i32 2
  %32 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %31, align 8
  %33 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %32, i32 0, i32 0
  store %struct.ttm_buffer_object* %33, %struct.ttm_buffer_object** %12, align 8
  %34 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %35 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %38 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %41 = call i32 @vmw_cotable_readback(%struct.vmw_resource* %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %3, align 4
  br label %180

46:                                               ; preds = %2
  %47 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %48 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %52 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.vmw_buffer_object* @kzalloc(i32 8, i32 %53)
  store %struct.vmw_buffer_object* %54, %struct.vmw_buffer_object** %9, align 8
  %55 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %9, align 8
  %56 = icmp ne %struct.vmw_buffer_object* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %180

60:                                               ; preds = %46
  %61 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %62 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %9, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* @vmw_bo_bo_free, align 4
  %65 = call i32 @vmw_bo_init(%struct.vmw_private* %61, %struct.vmw_buffer_object* %62, i64 %63, i32* @vmw_mob_ne_placement, i32 1, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %3, align 4
  br label %180

71:                                               ; preds = %60
  %72 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %9, align 8
  %73 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %72, i32 0, i32 0
  store %struct.ttm_buffer_object* %73, %struct.ttm_buffer_object** %11, align 8
  %74 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %75 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %74, i32 0, i32 1, i32* null)
  %76 = call i32 @WARN_ON_ONCE(i32 %75)
  %77 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %12, align 8
  %78 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %77, i32 0, i32 0)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %175

86:                                               ; preds = %71
  store i64 0, i64* %19, align 8
  br label %87

87:                                               ; preds = %122, %86
  %88 = load i64, i64* %19, align 8
  %89 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %12, align 8
  %90 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %87
  %94 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %12, align 8
  %95 = load i64, i64* %19, align 8
  %96 = call i32 @ttm_bo_kmap(%struct.ttm_buffer_object* %94, i64 %95, i32 1, %struct.ttm_bo_kmap_obj* %16)
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %175

104:                                              ; preds = %93
  %105 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %106 = load i64, i64* %19, align 8
  %107 = call i32 @ttm_bo_kmap(%struct.ttm_buffer_object* %105, i64 %106, i32 1, %struct.ttm_bo_kmap_obj* %17)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %173

115:                                              ; preds = %104
  %116 = call i32 @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj* %17, i32* %20)
  %117 = call i32 @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj* %16, i32* %20)
  %118 = load i32, i32* @PAGE_SIZE, align 4
  %119 = call i32 @memcpy(i32 %116, i32 %117, i32 %118)
  %120 = call i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj* %17)
  %121 = call i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj* %16)
  br label %122

122:                                              ; preds = %115
  %123 = load i64, i64* %19, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %19, align 8
  br label %87

125:                                              ; preds = %87
  %126 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %127 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %126, i32* @vmw_mob_placement, %struct.ttm_operation_ctx* %6)
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %175

135:                                              ; preds = %125
  %136 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %137 = call i32 @vmw_resource_mob_detach(%struct.vmw_resource* %136)
  %138 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %9, align 8
  %139 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %140 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %139, i32 0, i32 2
  store %struct.vmw_buffer_object* %138, %struct.vmw_buffer_object** %140, align 8
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %143 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %15, align 8
  %145 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %146 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %148 = call i32 @vmw_cotable_unscrub(%struct.vmw_resource* %147)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %135
  %152 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %153 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %154 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %155 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %154, i32 0, i32 2
  store %struct.vmw_buffer_object* %153, %struct.vmw_buffer_object** %155, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %158 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %14, align 8
  %160 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %161 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %163 = call i32 @vmw_resource_mob_attach(%struct.vmw_resource* %162)
  br label %175

164:                                              ; preds = %135
  %165 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %166 = call i32 @vmw_resource_mob_attach(%struct.vmw_resource* %165)
  %167 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %10)
  %168 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %169 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %172 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  store i32 0, i32* %3, align 4
  br label %180

173:                                              ; preds = %113
  %174 = call i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj* %16)
  br label %175

175:                                              ; preds = %173, %151, %133, %102, %84
  %176 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %177 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %176)
  %178 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %9)
  %179 = load i32, i32* %18, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %175, %164, %68, %57, %44
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.vmw_cotable* @vmw_cotable(%struct.vmw_resource*) #2

declare dso_local i32 @vmw_cotable_readback(%struct.vmw_resource*) #2

declare dso_local %struct.vmw_buffer_object* @kzalloc(i32, i32) #2

declare dso_local i32 @vmw_bo_init(%struct.vmw_private*, %struct.vmw_buffer_object*, i64, i32*, i32, i32) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32*) #2

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @ttm_bo_kmap(%struct.ttm_buffer_object*, i64, i32, %struct.ttm_bo_kmap_obj*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj*, i32*) #2

declare dso_local i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj*) #2

declare dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @vmw_resource_mob_detach(%struct.vmw_resource*) #2

declare dso_local i32 @vmw_cotable_unscrub(%struct.vmw_resource*) #2

declare dso_local i32 @vmw_resource_mob_attach(%struct.vmw_resource*) #2

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #2

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
