; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbva_buf_ctx = type { i32, i32*, i32* }
%struct.gen_pool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vbva_disable(%struct.vbva_buf_ctx* %0, %struct.gen_pool* %1, i32 %2) #0 {
  %4 = alloca %struct.vbva_buf_ctx*, align 8
  %5 = alloca %struct.gen_pool*, align 8
  %6 = alloca i32, align 4
  store %struct.vbva_buf_ctx* %0, %struct.vbva_buf_ctx** %4, align 8
  store %struct.gen_pool* %1, %struct.gen_pool** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %14 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @vbva_inform_host(%struct.vbva_buf_ctx* %13, %struct.gen_pool* %14, i32 %15, i32 0)
  ret void
}

declare dso_local i32 @vbva_inform_host(%struct.vbva_buf_ctx*, %struct.gen_pool*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
