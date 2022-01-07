; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_userptr_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_userptr_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_userptr = type { i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@__const.radeon_gem_userptr_ioctl.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@EINVAL = common dso_local global i32 0, align 4
@RADEON_GEM_USERPTR_READONLY = common dso_local global i32 0, align 4
@RADEON_GEM_USERPTR_ANONONLY = common dso_local global i32 0, align 4
@RADEON_GEM_USERPTR_VALIDATE = common dso_local global i32 0, align 4
@RADEON_GEM_USERPTR_REGISTER = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_userptr_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.ttm_operation_ctx, align 4
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.drm_radeon_gem_userptr*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca %struct.radeon_bo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = bitcast %struct.ttm_operation_ctx* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.radeon_gem_userptr_ioctl.ctx to i8*), i64 8, i1 false)
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.drm_radeon_gem_userptr*
  store %struct.drm_radeon_gem_userptr* %20, %struct.drm_radeon_gem_userptr** %10, align 8
  %21 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %22 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @untagged_addr(i32 %23)
  %25 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %26 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %28 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %31 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = call i64 @offset_in_page(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %208

39:                                               ; preds = %3
  %40 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %41 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RADEON_GEM_USERPTR_READONLY, align 4
  %44 = load i32, i32* @RADEON_GEM_USERPTR_ANONONLY, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RADEON_GEM_USERPTR_VALIDATE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RADEON_GEM_USERPTR_REGISTER, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %42, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %208

56:                                               ; preds = %39
  %57 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %58 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RADEON_GEM_USERPTR_READONLY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CHIP_R600, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %208

72:                                               ; preds = %63
  br label %91

73:                                               ; preds = %56
  %74 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %75 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RADEON_GEM_USERPTR_ANONONLY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %82 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RADEON_GEM_USERPTR_REGISTER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80, %73
  %88 = load i32, i32* @EACCES, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %208

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %72
  %92 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = call i32 @down_read(i32* %93)
  %95 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %96 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %97 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RADEON_GEM_DOMAIN_CPU, align 4
  %100 = call i32 @radeon_gem_object_create(%struct.radeon_device* %95, i32 %98, i32 0, i32 %99, i32 0, i32 0, %struct.drm_gem_object** %11)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %200

104:                                              ; preds = %91
  %105 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %106 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %105)
  store %struct.radeon_bo* %106, %struct.radeon_bo** %12, align 8
  %107 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %108 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %112 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %115 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @radeon_ttm_tt_set_userptr(i32 %110, i32 %113, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %104
  br label %197

121:                                              ; preds = %104
  %122 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %123 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RADEON_GEM_USERPTR_REGISTER, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %130 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %131 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @radeon_mn_register(%struct.radeon_bo* %129, i32 %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %197

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %121
  %139 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %140 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @RADEON_GEM_USERPTR_VALIDATE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %181

145:                                              ; preds = %138
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = call i32 @down_read(i32* %149)
  %151 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %152 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %151, i32 1)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %145
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = call i32 @up_read(i32* %159)
  br label %197

161:                                              ; preds = %145
  %162 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %163 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %164 = call i32 @radeon_ttm_placement_from_domain(%struct.radeon_bo* %162, i32 %163)
  %165 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %166 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %165, i32 0, i32 1
  %167 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %168 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %167, i32 0, i32 0
  %169 = call i32 @ttm_bo_validate(%struct.TYPE_5__* %166, i32* %168, %struct.ttm_operation_ctx* %8)
  store i32 %169, i32* %14, align 4
  %170 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %171 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %170)
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = call i32 @up_read(i32* %175)
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %161
  br label %197

180:                                              ; preds = %161
  br label %181

181:                                              ; preds = %180, %138
  %182 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %183 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %184 = call i32 @drm_gem_handle_create(%struct.drm_file* %182, %struct.drm_gem_object* %183, i32* %13)
  store i32 %184, i32* %14, align 4
  %185 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %186 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %185)
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %200

190:                                              ; preds = %181
  %191 = load i32, i32* %13, align 4
  %192 = load %struct.drm_radeon_gem_userptr*, %struct.drm_radeon_gem_userptr** %10, align 8
  %193 = getelementptr inbounds %struct.drm_radeon_gem_userptr, %struct.drm_radeon_gem_userptr* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 1
  %196 = call i32 @up_read(i32* %195)
  store i32 0, i32* %4, align 4
  br label %208

197:                                              ; preds = %179, %155, %136, %120
  %198 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %199 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %198)
  br label %200

200:                                              ; preds = %197, %189, %103
  %201 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 1
  %203 = call i32 @up_read(i32* %202)
  %204 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %205 = load i32, i32* %14, align 4
  %206 = call i32 @radeon_gem_handle_lockup(%struct.radeon_device* %204, i32 %205)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %200, %190, %87, %69, %53, %36
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @untagged_addr(i32) #2

declare dso_local i64 @offset_in_page(i32) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local i32 @radeon_gem_object_create(%struct.radeon_device*, i32, i32, i32, i32, i32, %struct.drm_gem_object**) #2

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #2

declare dso_local i32 @radeon_ttm_tt_set_userptr(i32, i32, i32) #2

declare dso_local i32 @radeon_mn_register(%struct.radeon_bo*, i32) #2

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @radeon_ttm_placement_from_domain(%struct.radeon_bo*, i32) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_5__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #2

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #2

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #2

declare dso_local i32 @radeon_gem_handle_lockup(%struct.radeon_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
