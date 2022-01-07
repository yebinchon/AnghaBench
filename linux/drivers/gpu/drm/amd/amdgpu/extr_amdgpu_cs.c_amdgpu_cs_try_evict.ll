; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_try_evict.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_try_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.amdgpu_cs_parser = type { i32, %struct.amdgpu_bo_list_entry*, i32, i32 }
%struct.amdgpu_bo_list_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.amdgpu_bo = type { i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_device = type { i32 }

@__const.amdgpu_cs_try_evict.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0, i64 0 }, align 8
@tv = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, %struct.amdgpu_bo*)* @amdgpu_cs_try_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_try_evict(%struct.amdgpu_cs_parser* %0, %struct.amdgpu_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_cs_parser*, align 8
  %5 = alloca %struct.amdgpu_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_operation_ctx, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_bo_list_entry*, align 8
  %10 = alloca %struct.amdgpu_bo*, align 8
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %4, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %5, align 8
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = bitcast %struct.ttm_operation_ctx* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.ttm_operation_ctx* @__const.amdgpu_cs_try_evict.ctx to i8*), i64 16, i1 false)
  %18 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %18, i32 0, i32 1
  %20 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %19, align 8
  %21 = icmp ne %struct.amdgpu_bo_list_entry* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %138, %23
  %25 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %25, i32 0, i32 1
  %27 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %26, align 8
  %28 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %30, i32 0, i32 0
  %32 = icmp ne i32* %29, %31
  br i1 %32, label %33, label %147

33:                                               ; preds = %24
  %34 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %34, i32 0, i32 1
  %36 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %35, align 8
  store %struct.amdgpu_bo_list_entry* %36, %struct.amdgpu_bo_list_entry** %9, align 8
  %37 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %9, align 8
  %38 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(i32 %40)
  store %struct.amdgpu_bo* %41, %struct.amdgpu_bo** %10, align 8
  %42 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %43 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %45)
  store %struct.amdgpu_device* %46, %struct.amdgpu_device** %11, align 8
  %47 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %48 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %49 = icmp eq %struct.amdgpu_bo* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %147

51:                                               ; preds = %33
  %52 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %53 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %138

57:                                               ; preds = %51
  %58 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %59 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @amdgpu_mem_type_to_domain(i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %57
  br label %138

69:                                               ; preds = %57
  %70 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %71 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %138

79:                                               ; preds = %69
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = call i32 @amdgpu_gmc_vram_full_visible(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %86 = call i64 @amdgpu_bo_in_cpu_visible_vram(%struct.amdgpu_bo* %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i1 [ false, %79 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %12, align 4
  %91 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %91, i32 %92)
  %94 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %95 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %94, i32 0, i32 2
  %96 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %97 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %96, i32 0, i32 1
  %98 = call i32 @ttm_bo_validate(%struct.TYPE_8__* %95, i32* %97, %struct.ttm_operation_ctx* %7)
  store i32 %98, i32* %8, align 4
  %99 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %7, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %102 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %88
  %110 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %7, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %113 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  br label %118

118:                                              ; preds = %109, %88
  %119 = load i32, i32* %8, align 4
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %147

123:                                              ; preds = %118
  %124 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %125 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %124, i32 0, i32 1
  %126 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %125, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tv, i32 0, i32 0), align 4
  %128 = call i8* @list_prev_entry(%struct.amdgpu_bo_list_entry* %126, i32 %127)
  %129 = bitcast i8* %128 to %struct.amdgpu_bo_list_entry*
  %130 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %131 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %130, i32 0, i32 1
  store %struct.amdgpu_bo_list_entry* %129, %struct.amdgpu_bo_list_entry** %131, align 8
  %132 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %9, align 8
  %133 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %136 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %135, i32 0, i32 0
  %137 = call i32 @list_move(i32* %134, i32* %136)
  store i32 1, i32* %3, align 4
  br label %148

138:                                              ; preds = %78, %68, %56
  %139 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %140 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %139, i32 0, i32 1
  %141 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %140, align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tv, i32 0, i32 0), align 4
  %143 = call i8* @list_prev_entry(%struct.amdgpu_bo_list_entry* %141, i32 %142)
  %144 = bitcast i8* %143 to %struct.amdgpu_bo_list_entry*
  %145 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %146 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %145, i32 0, i32 1
  store %struct.amdgpu_bo_list_entry* %144, %struct.amdgpu_bo_list_entry** %146, align 8
  br label %24

147:                                              ; preds = %122, %50, %24
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %123, %22
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(i32) #2

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #2

declare dso_local i32 @amdgpu_mem_type_to_domain(i32) #2

declare dso_local i32 @amdgpu_gmc_vram_full_visible(i32*) #2

declare dso_local i64 @amdgpu_bo_in_cpu_visible_vram(%struct.amdgpu_bo*) #2

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i32) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_8__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i8* @list_prev_entry(%struct.amdgpu_bo_list_entry*, i32) #2

declare dso_local i32 @list_move(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
