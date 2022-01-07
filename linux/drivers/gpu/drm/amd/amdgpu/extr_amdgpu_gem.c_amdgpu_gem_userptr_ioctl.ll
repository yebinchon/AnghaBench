; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_userptr_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_userptr_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_amdgpu_gem_userptr = type { i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_4__, i32, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@__const.amdgpu_gem_userptr_ioctl.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GEM_USERPTR_READONLY = common dso_local global i32 0, align 4
@AMDGPU_GEM_USERPTR_ANONONLY = common dso_local global i32 0, align 4
@AMDGPU_GEM_USERPTR_VALIDATE = common dso_local global i32 0, align 4
@AMDGPU_GEM_USERPTR_REGISTER = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gem_userptr_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.ttm_operation_ctx, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca %struct.drm_amdgpu_gem_userptr*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca %struct.amdgpu_bo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = bitcast %struct.ttm_operation_ctx* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.amdgpu_gem_userptr_ioctl.ctx to i8*), i64 8, i1 false)
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.drm_amdgpu_gem_userptr*
  store %struct.drm_amdgpu_gem_userptr* %20, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %21 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %22 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @untagged_addr(i32 %23)
  %25 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %26 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %28 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %31 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = call i64 @offset_in_page(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %194

39:                                               ; preds = %3
  %40 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %41 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AMDGPU_GEM_USERPTR_READONLY, align 4
  %44 = load i32, i32* @AMDGPU_GEM_USERPTR_ANONONLY, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @AMDGPU_GEM_USERPTR_VALIDATE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @AMDGPU_GEM_USERPTR_REGISTER, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %42, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %194

56:                                               ; preds = %39
  %57 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %58 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AMDGPU_GEM_USERPTR_READONLY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %56
  %64 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %65 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AMDGPU_GEM_USERPTR_REGISTER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @EACCES, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %194

73:                                               ; preds = %63, %56
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %75 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %76 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @AMDGPU_GEM_DOMAIN_CPU, align 4
  %79 = load i32, i32* @ttm_bo_type_device, align 4
  %80 = call i32 @amdgpu_gem_object_create(%struct.amdgpu_device* %74, i32 %77, i32 0, i32 %78, i32 0, i32 %79, i32* null, %struct.drm_gem_object** %11)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %4, align 4
  br label %194

85:                                               ; preds = %73
  %86 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %87 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %86)
  store %struct.amdgpu_bo* %87, %struct.amdgpu_bo** %12, align 8
  %88 = load i8*, i8** @AMDGPU_GEM_DOMAIN_GTT, align 8
  %89 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %90 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @AMDGPU_GEM_DOMAIN_GTT, align 8
  %92 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %93 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %95 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %99 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %102 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @amdgpu_ttm_tt_set_userptr(%struct.TYPE_5__* %97, i32 %100, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %85
  br label %190

108:                                              ; preds = %85
  %109 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %110 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AMDGPU_GEM_USERPTR_REGISTER, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %117 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %118 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @amdgpu_mn_register(%struct.amdgpu_bo* %116, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %190

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %108
  %126 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %127 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AMDGPU_GEM_USERPTR_VALIDATE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %165

132:                                              ; preds = %125
  %133 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %134 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %135 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @amdgpu_ttm_tt_get_user_pages(%struct.amdgpu_bo* %133, i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %190

144:                                              ; preds = %132
  %145 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %146 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %145, i32 1)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %176

150:                                              ; preds = %144
  %151 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %152 = load i8*, i8** @AMDGPU_GEM_DOMAIN_GTT, align 8
  %153 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %151, i8* %152)
  %154 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %155 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %154, i32 0, i32 0
  %156 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %157 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %156, i32 0, i32 1
  %158 = call i32 @ttm_bo_validate(%struct.TYPE_4__* %155, i32* %157, %struct.ttm_operation_ctx* %8)
  store i32 %158, i32* %14, align 4
  %159 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %160 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %159)
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %150
  br label %176

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164, %125
  %166 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %167 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %168 = call i32 @drm_gem_handle_create(%struct.drm_file* %166, %struct.drm_gem_object* %167, i32* %13)
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %176

172:                                              ; preds = %165
  %173 = load i32, i32* %13, align 4
  %174 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %175 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %171, %163, %149
  %177 = load %struct.drm_amdgpu_gem_userptr*, %struct.drm_amdgpu_gem_userptr** %10, align 8
  %178 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, %struct.drm_amdgpu_gem_userptr* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @AMDGPU_GEM_USERPTR_VALIDATE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  %184 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %185 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = call i32 @amdgpu_ttm_tt_get_user_pages_done(%struct.TYPE_5__* %187)
  br label %189

189:                                              ; preds = %183, %176
  br label %190

190:                                              ; preds = %189, %143, %123, %107
  %191 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %192 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %191)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %190, %83, %70, %53, %36
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @untagged_addr(i32) #2

declare dso_local i64 @offset_in_page(i32) #2

declare dso_local i32 @amdgpu_gem_object_create(%struct.amdgpu_device*, i32, i32, i32, i32, i32, i32*, %struct.drm_gem_object**) #2

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #2

declare dso_local i32 @amdgpu_ttm_tt_set_userptr(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @amdgpu_mn_register(%struct.amdgpu_bo*, i32) #2

declare dso_local i32 @amdgpu_ttm_tt_get_user_pages(%struct.amdgpu_bo*, i32) #2

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #2

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i8*) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_4__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #2

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #2

declare dso_local i32 @amdgpu_ttm_tt_get_user_pages_done(%struct.TYPE_5__*) #2

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
