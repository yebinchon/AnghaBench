; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_query2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_query2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }
%struct.amdgpu_fpriv = type { %struct.amdgpu_ctx_mgr }
%struct.amdgpu_ctx_mgr = type { i32, i32 }
%union.drm_amdgpu_ctx_out = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.amdgpu_ctx = type { i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_CTX_QUERY2_FLAGS_RESET = common dso_local global i32 0, align 4
@AMDGPU_CTX_QUERY2_FLAGS_VRAMLOST = common dso_local global i32 0, align 4
@AMDGPU_CTX_QUERY2_FLAGS_GUILTY = common dso_local global i32 0, align 4
@AMDGPU_CTX_QUERY2_FLAGS_RAS_UE = common dso_local global i32 0, align 4
@AMDGPU_CTX_QUERY2_FLAGS_RAS_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_fpriv*, i32, %union.drm_amdgpu_ctx_out*)* @amdgpu_ctx_query2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ctx_query2(%struct.amdgpu_device* %0, %struct.amdgpu_fpriv* %1, i32 %2, %union.drm_amdgpu_ctx_out* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_fpriv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.drm_amdgpu_ctx_out*, align 8
  %10 = alloca %struct.amdgpu_ctx*, align 8
  %11 = alloca %struct.amdgpu_ctx_mgr*, align 8
  %12 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_fpriv* %1, %struct.amdgpu_fpriv** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.drm_amdgpu_ctx_out* %3, %union.drm_amdgpu_ctx_out** %9, align 8
  %13 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %14 = icmp ne %struct.amdgpu_fpriv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %124

18:                                               ; preds = %4
  %19 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %20 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %19, i32 0, i32 0
  store %struct.amdgpu_ctx_mgr* %20, %struct.amdgpu_ctx_mgr** %11, align 8
  %21 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %11, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %11, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %24, i32 0, i32 1
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.amdgpu_ctx* @idr_find(i32* %25, i32 %26)
  store %struct.amdgpu_ctx* %27, %struct.amdgpu_ctx** %10, align 8
  %28 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %29 = icmp ne %struct.amdgpu_ctx* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %11, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %124

36:                                               ; preds = %18
  %37 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %38 = bitcast %union.drm_amdgpu_ctx_out* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %41 = bitcast %union.drm_amdgpu_ctx_out* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 1
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load i32, i32* @AMDGPU_CTX_QUERY2_FLAGS_RESET, align 4
  %52 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %53 = bitcast %union.drm_amdgpu_ctx_out* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %36
  %58 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = call i64 @atomic_read(i32* %62)
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i32, i32* @AMDGPU_CTX_QUERY2_FLAGS_VRAMLOST, align 4
  %67 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %68 = bitcast %union.drm_amdgpu_ctx_out* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %57
  %73 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %73, i32 0, i32 4
  %75 = call i64 @atomic_read(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @AMDGPU_CTX_QUERY2_FLAGS_GUILTY, align 4
  %79 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %80 = bitcast %union.drm_amdgpu_ctx_out* %79 to %struct.TYPE_2__*
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %72
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %86 = call i64 @amdgpu_ras_query_error_count(%struct.amdgpu_device* %85, i32 0)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %89 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %84
  %93 = load i32, i32* @AMDGPU_CTX_QUERY2_FLAGS_RAS_UE, align 4
  %94 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %95 = bitcast %union.drm_amdgpu_ctx_out* %94 to %struct.TYPE_2__*
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %101 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %92, %84
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %104 = call i64 @amdgpu_ras_query_error_count(%struct.amdgpu_device* %103, i32 1)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %107 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %102
  %111 = load i32, i32* @AMDGPU_CTX_QUERY2_FLAGS_RAS_CE, align 4
  %112 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %113 = bitcast %union.drm_amdgpu_ctx_out* %112 to %struct.TYPE_2__*
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load i64, i64* %12, align 8
  %118 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %119 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %110, %102
  %121 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %11, align 8
  %122 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %30, %15
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.amdgpu_ctx* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @amdgpu_ras_query_error_count(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
