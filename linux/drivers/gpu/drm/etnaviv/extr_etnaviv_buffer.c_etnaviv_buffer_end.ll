; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i64, i32, %struct.etnaviv_cmdbuf }
%struct.etnaviv_cmdbuf = type { i32 }

@ETNA_PIPE_2D = common dso_local global i64 0, align 8
@VIVS_GL_FLUSH_CACHE_PE2D = common dso_local global i32 0, align 4
@ETNA_PIPE_3D = common dso_local global i64 0, align 8
@VIVS_GL_FLUSH_CACHE_DEPTH = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE_COLOR = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE_TEXTURE = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE_TEXTUREVS = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE_SHADER_L2 = common dso_local global i32 0, align 4
@SYNC_RECIPIENT_FE = common dso_local global i32 0, align 4
@SYNC_RECIPIENT_PE = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE = common dso_local global i32 0, align 4
@VIVS_TS_FLUSH_CACHE = common dso_local global i32 0, align 4
@VIVS_TS_FLUSH_CACHE_FLUSH = common dso_local global i32 0, align 4
@VIV_FE_LINK_HEADER_OP_LINK = common dso_local global i32 0, align 4
@VIV_FE_END_HEADER_OP_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_buffer_end(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  %3 = alloca %struct.etnaviv_cmdbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %8 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %8, i32 0, i32 2
  store %struct.etnaviv_cmdbuf* %9, %struct.etnaviv_cmdbuf** %3, align 8
  %10 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %11 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 16
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %15 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %14, i32 0, i32 1
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %18 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ETNA_PIPE_2D, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @VIVS_GL_FLUSH_CACHE_PE2D, align 4
  store i32 %23, i32* %6, align 4
  br label %41

24:                                               ; preds = %1
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ETNA_PIPE_3D, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i32, i32* @VIVS_GL_FLUSH_CACHE_DEPTH, align 4
  %32 = load i32, i32* @VIVS_GL_FLUSH_CACHE_COLOR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VIVS_GL_FLUSH_CACHE_TEXTURE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VIVS_GL_FLUSH_CACHE_TEXTUREVS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VIVS_GL_FLUSH_CACHE_SHADER_L2, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %30, %24
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %41
  store i32 7, i32* %7, align 4
  %45 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %46 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @etnaviv_buffer_reserve(%struct.etnaviv_gpu* %45, %struct.etnaviv_cmdbuf* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %50 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %51 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %52 = call i32 @CMD_SEM(%struct.etnaviv_cmdbuf* %49, i32 %50, i32 %51)
  %53 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %54 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %55 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %56 = call i32 @CMD_STALL(%struct.etnaviv_cmdbuf* %53, i32 %54, i32 %55)
  %57 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %58 = load i32, i32* @VIVS_GL_FLUSH_CACHE, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %57, i32 %58, i32 %59)
  %61 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %62 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ETNA_PIPE_3D, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %44
  %67 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %68 = load i32, i32* @VIVS_TS_FLUSH_CACHE, align 4
  %69 = load i32, i32* @VIVS_TS_FLUSH_CACHE_FLUSH, align 4
  %70 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %44
  %72 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %73 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %74 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %75 = call i32 @CMD_SEM(%struct.etnaviv_cmdbuf* %72, i32 %73, i32 %74)
  %76 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %77 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %78 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %79 = call i32 @CMD_STALL(%struct.etnaviv_cmdbuf* %76, i32 %77, i32 %78)
  %80 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %81 = call i32 @CMD_END(%struct.etnaviv_cmdbuf* %80)
  %82 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @VIV_FE_LINK_HEADER_OP_LINK, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @VIV_FE_LINK_HEADER_PREFETCH(i32 %85)
  %87 = or i32 %84, %86
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @etnaviv_buffer_replace_wait(%struct.etnaviv_cmdbuf* %82, i32 %83, i32 %87, i32 %88)
  br label %95

90:                                               ; preds = %41
  %91 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @VIV_FE_END_HEADER_OP_END, align 4
  %94 = call i32 @etnaviv_buffer_replace_wait(%struct.etnaviv_cmdbuf* %91, i32 %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %90, %71
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @etnaviv_buffer_reserve(%struct.etnaviv_gpu*, %struct.etnaviv_cmdbuf*, i32) #1

declare dso_local i32 @CMD_SEM(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @CMD_STALL(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @CMD_END(%struct.etnaviv_cmdbuf*) #1

declare dso_local i32 @etnaviv_buffer_replace_wait(%struct.etnaviv_cmdbuf*, i32, i32, i32) #1

declare dso_local i32 @VIV_FE_LINK_HEADER_PREFETCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
