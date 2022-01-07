; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_buffer_end_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_buffer_end_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbva_buf_ctx = type { i32, %struct.vbva_record*, i32 }
%struct.vbva_record = type { i32 }

@VBVA_F_RECORD_PARTIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vbva_buffer_end_update(%struct.vbva_buf_ctx* %0) #0 {
  %2 = alloca %struct.vbva_buf_ctx*, align 8
  %3 = alloca %struct.vbva_record*, align 8
  store %struct.vbva_buf_ctx* %0, %struct.vbva_buf_ctx** %2, align 8
  %4 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %4, i32 0, i32 1
  %6 = load %struct.vbva_record*, %struct.vbva_record** %5, align 8
  store %struct.vbva_record* %6, %struct.vbva_record** %3, align 8
  %7 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.vbva_record*, %struct.vbva_record** %3, align 8
  %13 = icmp ne %struct.vbva_record* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.vbva_record*, %struct.vbva_record** %3, align 8
  %16 = getelementptr inbounds %struct.vbva_record, %struct.vbva_record* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VBVA_F_RECORD_PARTIAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %14, %11, %1
  %23 = phi i1 [ true, %11 ], [ true, %1 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load i32, i32* @VBVA_F_RECORD_PARTIAL, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.vbva_record*, %struct.vbva_record** %3, align 8
  %29 = getelementptr inbounds %struct.vbva_record, %struct.vbva_record* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %34, i32 0, i32 1
  store %struct.vbva_record* null, %struct.vbva_record** %35, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
