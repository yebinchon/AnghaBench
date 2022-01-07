; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_buffer_begin_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_buffer_begin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbva_buf_ctx = type { %struct.vbva_record*, %struct.TYPE_4__*, i64 }
%struct.vbva_record = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.vbva_record*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gen_pool = type { i32 }

@VBVA_F_MODE_ENABLED = common dso_local global i32 0, align 4
@VBVA_MAX_RECORDS = common dso_local global i32 0, align 4
@VBVA_F_RECORD_PARTIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbva_buffer_begin_update(%struct.vbva_buf_ctx* %0, %struct.gen_pool* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vbva_buf_ctx*, align 8
  %5 = alloca %struct.gen_pool*, align 8
  %6 = alloca %struct.vbva_record*, align 8
  %7 = alloca i32, align 4
  store %struct.vbva_buf_ctx* %0, %struct.vbva_buf_ctx** %4, align 8
  store %struct.gen_pool* %1, %struct.gen_pool** %5, align 8
  %8 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VBVA_F_MODE_ENABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %88

23:                                               ; preds = %12
  %24 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %29, i32 0, i32 0
  %31 = load %struct.vbva_record*, %struct.vbva_record** %30, align 8
  %32 = icmp ne %struct.vbva_record* %31, null
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ true, %23 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* @VBVA_MAX_RECORDS, align 4
  %44 = srem i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %33
  %53 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %54 = call i32 @vbva_buffer_flush(%struct.gen_pool* %53)
  br label %55

55:                                               ; preds = %52, %33
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %88

64:                                               ; preds = %55
  %65 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load %struct.vbva_record*, %struct.vbva_record** %68, align 8
  %70 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vbva_record, %struct.vbva_record* %69, i64 %75
  store %struct.vbva_record* %76, %struct.vbva_record** %6, align 8
  %77 = load i32, i32* @VBVA_F_RECORD_PARTIAL, align 4
  %78 = load %struct.vbva_record*, %struct.vbva_record** %6, align 8
  %79 = getelementptr inbounds %struct.vbva_record, %struct.vbva_record* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load %struct.vbva_record*, %struct.vbva_record** %6, align 8
  %86 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %86, i32 0, i32 0
  store %struct.vbva_record* %85, %struct.vbva_record** %87, align 8
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %64, %63, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vbva_buffer_flush(%struct.gen_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
