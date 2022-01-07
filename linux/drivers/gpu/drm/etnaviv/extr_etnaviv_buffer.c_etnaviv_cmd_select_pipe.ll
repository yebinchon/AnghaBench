; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_cmd_select_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_cmd_select_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i64, i32 }
%struct.etnaviv_cmdbuf = type { i32 }

@ETNA_PIPE_2D = common dso_local global i64 0, align 8
@VIVS_GL_FLUSH_CACHE_PE2D = common dso_local global i32 0, align 4
@ETNA_PIPE_3D = common dso_local global i64 0, align 8
@VIVS_GL_FLUSH_CACHE_DEPTH = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE_COLOR = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE = common dso_local global i32 0, align 4
@SYNC_RECIPIENT_FE = common dso_local global i32 0, align 4
@SYNC_RECIPIENT_PE = common dso_local global i32 0, align 4
@VIVS_GL_PIPE_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, %struct.etnaviv_cmdbuf*, i32)* @etnaviv_cmd_select_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_cmd_select_pipe(%struct.etnaviv_gpu* %0, %struct.etnaviv_cmdbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.etnaviv_cmdbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store %struct.etnaviv_cmdbuf* %1, %struct.etnaviv_cmdbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %8, i32 0, i32 1
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %12 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ETNA_PIPE_2D, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @VIVS_GL_FLUSH_CACHE_PE2D, align 4
  store i32 %17, i32* %7, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ETNA_PIPE_3D, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @VIVS_GL_FLUSH_CACHE_DEPTH, align 4
  %26 = load i32, i32* @VIVS_GL_FLUSH_CACHE_COLOR, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %18
  br label %29

29:                                               ; preds = %28, %16
  %30 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %31 = load i32, i32* @VIVS_GL_FLUSH_CACHE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %30, i32 %31, i32 %32)
  %34 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %35 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %36 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %37 = call i32 @CMD_SEM(%struct.etnaviv_cmdbuf* %34, i32 %35, i32 %36)
  %38 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %39 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %40 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %41 = call i32 @CMD_STALL(%struct.etnaviv_cmdbuf* %38, i32 %39, i32 %40)
  %42 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %43 = load i32, i32* @VIVS_GL_PIPE_SELECT, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @VIVS_GL_PIPE_SELECT_PIPE(i32 %44)
  %46 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %42, i32 %43, i32 %45)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @CMD_SEM(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @CMD_STALL(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @VIVS_GL_PIPE_SELECT_PIPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
