; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_dmdata_status_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_dmdata_status_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hubp* }
%struct.hubp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hubp*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn20_dmdata_status_done(%struct.pipe_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.hubp*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  %5 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.hubp*, %struct.hubp** %7, align 8
  store %struct.hubp* %8, %struct.hubp** %4, align 8
  %9 = load %struct.hubp*, %struct.hubp** %4, align 8
  %10 = icmp ne %struct.hubp* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.hubp*, %struct.hubp** %4, align 8
  %14 = getelementptr inbounds %struct.hubp, %struct.hubp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.hubp*)*, i32 (%struct.hubp*)** %16, align 8
  %18 = load %struct.hubp*, %struct.hubp** %4, align 8
  %19 = call i32 %17(%struct.hubp* %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
