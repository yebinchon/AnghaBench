; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_sync_point_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_sync_point_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { %struct.TYPE_2__*, i32, %struct.etnaviv_cmdbuf }
%struct.TYPE_2__ = type { i32 }
%struct.etnaviv_cmdbuf = type { i32 }

@VIVS_GL_EVENT = common dso_local global i32 0, align 4
@VIVS_GL_EVENT_FROM_PE = common dso_local global i32 0, align 4
@VIV_FE_LINK_HEADER_OP_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_sync_point_queue(%struct.etnaviv_gpu* %0, i32 %1) #0 {
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_cmdbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %10 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %9, i32 0, i32 2
  store %struct.etnaviv_cmdbuf* %10, %struct.etnaviv_cmdbuf** %5, align 8
  %11 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %12 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 16
  store i32 %14, i32* %6, align 4
  %15 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  store i32 4, i32* %7, align 4
  %18 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %19 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @etnaviv_buffer_reserve(%struct.etnaviv_gpu* %18, %struct.etnaviv_cmdbuf* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %23 = load i32, i32* @VIVS_GL_EVENT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @VIVS_GL_EVENT_EVENT_ID(i32 %24)
  %26 = load i32, i32* @VIVS_GL_EVENT_FROM_PE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %22, i32 %23, i32 %27)
  %29 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %30 = call i32 @CMD_END(%struct.etnaviv_cmdbuf* %29)
  %31 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %32 = call i32 @CMD_WAIT(%struct.etnaviv_cmdbuf* %31)
  %33 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %34 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %35 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %36 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i64 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf* %34, i32* %38)
  %40 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %41 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = sub nsw i64 %44, 4
  %46 = call i32 @CMD_LINK(%struct.etnaviv_cmdbuf* %33, i32 2, i64 %45)
  %47 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @VIV_FE_LINK_HEADER_OP_LINK, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @VIV_FE_LINK_HEADER_PREFETCH(i32 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @etnaviv_buffer_replace_wait(%struct.etnaviv_cmdbuf* %47, i32 %48, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @etnaviv_buffer_reserve(%struct.etnaviv_gpu*, %struct.etnaviv_cmdbuf*, i32) #1

declare dso_local i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @VIVS_GL_EVENT_EVENT_ID(i32) #1

declare dso_local i32 @CMD_END(%struct.etnaviv_cmdbuf*) #1

declare dso_local i32 @CMD_WAIT(%struct.etnaviv_cmdbuf*) #1

declare dso_local i32 @CMD_LINK(%struct.etnaviv_cmdbuf*, i32, i64) #1

declare dso_local i64 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf*, i32*) #1

declare dso_local i32 @etnaviv_buffer_replace_wait(%struct.etnaviv_cmdbuf*, i32, i32, i32) #1

declare dso_local i32 @VIV_FE_LINK_HEADER_PREFETCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
