; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_mem_reg, i32, i32 }
%struct.ttm_mem_reg = type { i64, i32* }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.nouveau_bo = type { %struct.nouveau_drm_tile*, i64 }
%struct.nouveau_drm_tile = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Moving pinned object %p!\0A\00", align 1
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, %struct.ttm_operation_ctx*, %struct.ttm_mem_reg*)* @nouveau_bo_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_move(%struct.ttm_buffer_object* %0, i32 %1, %struct.ttm_operation_ctx* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_operation_ctx*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.nouveau_bo*, align 8
  %12 = alloca %struct.ttm_mem_reg*, align 8
  %13 = alloca %struct.nouveau_drm_tile*, align 8
  %14 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ttm_operation_ctx* %2, %struct.ttm_operation_ctx** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nouveau_drm* @nouveau_bdev(i32 %17)
  store %struct.nouveau_drm* %18, %struct.nouveau_drm** %10, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %20 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %19)
  store %struct.nouveau_bo* %20, %struct.nouveau_bo** %11, align 8
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %22 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %21, i32 0, i32 0
  store %struct.ttm_mem_reg* %22, %struct.ttm_mem_reg** %12, align 8
  store %struct.nouveau_drm_tile* null, %struct.nouveau_drm_tile** %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %24 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %23, i32 %26, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %186

35:                                               ; preds = %4
  %36 = load %struct.nouveau_bo*, %struct.nouveau_bo** %11, align 8
  %37 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %42 = load %struct.nouveau_bo*, %struct.nouveau_bo** %11, align 8
  %43 = call i32 @NV_WARN(%struct.nouveau_drm* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.nouveau_bo* %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %46 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %55 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %56 = call i32 @nouveau_bo_vm_bind(%struct.ttm_buffer_object* %54, %struct.ttm_mem_reg* %55, %struct.nouveau_drm_tile** %13)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %186

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %12, align 8
  %64 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %70 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %68
  %74 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %75 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %82 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %81, i32 0, i32 0
  %83 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %84 = bitcast %struct.ttm_mem_reg* %82 to i8*
  %85 = bitcast %struct.ttm_mem_reg* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %87 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  br label %162

88:                                               ; preds = %68, %62
  %89 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %90 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %145

94:                                               ; preds = %88
  %95 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %96 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %104 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %110 = call i32 @nouveau_bo_move_flipd(%struct.ttm_buffer_object* %101, i32 %102, i32 %105, i32 %108, %struct.ttm_mem_reg* %109)
  store i32 %110, i32* %14, align 4
  br label %140

111:                                              ; preds = %94
  %112 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %12, align 8
  %113 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %121 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %124 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %127 = call i32 @nouveau_bo_move_flips(%struct.ttm_buffer_object* %118, i32 %119, i32 %122, i32 %125, %struct.ttm_mem_reg* %126)
  store i32 %127, i32* %14, align 4
  br label %139

128:                                              ; preds = %111
  %129 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %132 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %135 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %138 = call i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object* %129, i32 %130, i32 %133, i32 %136, %struct.ttm_mem_reg* %137)
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %128, %117
  br label %140

140:                                              ; preds = %139, %100
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  br label %162

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144, %88
  %146 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %147 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %148 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %151 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %146, i32 %149, i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %145
  %157 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %158 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %159 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %160 = call i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object* %157, %struct.ttm_operation_ctx* %158, %struct.ttm_mem_reg* %159)
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %156, %145
  br label %162

162:                                              ; preds = %161, %143, %73
  %163 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %164 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %162
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %176 = call i32 @nouveau_bo_vm_cleanup(%struct.ttm_buffer_object* %175, %struct.nouveau_drm_tile* null, %struct.nouveau_drm_tile** %13)
  br label %183

177:                                              ; preds = %171
  %178 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %179 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %13, align 8
  %180 = load %struct.nouveau_bo*, %struct.nouveau_bo** %11, align 8
  %181 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %180, i32 0, i32 0
  %182 = call i32 @nouveau_bo_vm_cleanup(%struct.ttm_buffer_object* %178, %struct.nouveau_drm_tile* %179, %struct.nouveau_drm_tile** %181)
  br label %183

183:                                              ; preds = %177, %174
  br label %184

184:                                              ; preds = %183, %162
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %184, %59, %33
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, %struct.nouveau_bo*) #1

declare dso_local i32 @nouveau_bo_vm_bind(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.nouveau_drm_tile**) #1

declare dso_local i32 @BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nouveau_bo_move_flipd(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_bo_move_flips(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object*, %struct.ttm_operation_ctx*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_bo_vm_cleanup(%struct.ttm_buffer_object*, %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
