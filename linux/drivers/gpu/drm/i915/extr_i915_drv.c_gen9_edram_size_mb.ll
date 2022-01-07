; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_gen9_edram_size_mb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_gen9_edram_size_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@__const.gen9_edram_size_mb.ways = private unnamed_addr constant [8 x i32] [i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16, i32 16], align 16
@__const.gen9_edram_size_mb.sets = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 2, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @gen9_edram_size_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen9_edram_size_mb(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca [4 x i32], align 16
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const.gen9_edram_size_mb.ways to i8*), i64 32, i1 false)
  %8 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i32]* @__const.gen9_edram_size_mb.sets to i8*), i64 16, i1 false)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @EDRAM_NUM_BANKS(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @EDRAM_WAYS_IDX(i32 %11)
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = mul i32 %10, %14
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @EDRAM_SETS_IDX(i32 %16)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = mul i32 %15, %19
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @EDRAM_NUM_BANKS(i32) #2

declare dso_local i64 @EDRAM_WAYS_IDX(i32) #2

declare dso_local i64 @EDRAM_SETS_IDX(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
