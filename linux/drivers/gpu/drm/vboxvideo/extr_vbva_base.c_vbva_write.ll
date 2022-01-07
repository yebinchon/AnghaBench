; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbva_buf_ctx = type { i32, %struct.vbva_record*, %struct.vbva_buffer* }
%struct.vbva_record = type { i32 }
%struct.vbva_buffer = type { i64, i64, i64 }
%struct.gen_pool = type { i32 }

@VBVA_F_RECORD_PARTIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbva_write(%struct.vbva_buf_ctx* %0, %struct.gen_pool* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vbva_buf_ctx*, align 8
  %7 = alloca %struct.gen_pool*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vbva_record*, align 8
  %11 = alloca %struct.vbva_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vbva_buf_ctx* %0, %struct.vbva_buf_ctx** %6, align 8
  store %struct.gen_pool* %1, %struct.gen_pool** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %14, i32 0, i32 2
  %16 = load %struct.vbva_buffer*, %struct.vbva_buffer** %15, align 8
  store %struct.vbva_buffer* %16, %struct.vbva_buffer** %11, align 8
  %17 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %17, i32 0, i32 1
  %19 = load %struct.vbva_record*, %struct.vbva_record** %18, align 8
  store %struct.vbva_record* %19, %struct.vbva_record** %10, align 8
  %20 = load %struct.vbva_buffer*, %struct.vbva_buffer** %11, align 8
  %21 = icmp ne %struct.vbva_buffer* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %4
  %23 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.vbva_record*, %struct.vbva_record** %10, align 8
  %29 = icmp ne %struct.vbva_record* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.vbva_record*, %struct.vbva_record** %10, align 8
  %32 = getelementptr inbounds %struct.vbva_record, %struct.vbva_record* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VBVA_F_RECORD_PARTIAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30, %27, %22, %4
  store i32 0, i32* %5, align 4
  br label %112

38:                                               ; preds = %30
  %39 = load %struct.vbva_buffer*, %struct.vbva_buffer** %11, align 8
  %40 = call i64 @vbva_buffer_available(%struct.vbva_buffer* %39)
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %76, %38
  %42 = load i64, i64* %9, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %111

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %51 = call i32 @vbva_buffer_flush(%struct.gen_pool* %50)
  %52 = load %struct.vbva_buffer*, %struct.vbva_buffer** %11, align 8
  %53 = call i64 @vbva_buffer_available(%struct.vbva_buffer* %52)
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.vbva_buffer*, %struct.vbva_buffer** %11, align 8
  %61 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ON(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  store i32 0, i32* %5, align 4
  br label %112

70:                                               ; preds = %58
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.vbva_buffer*, %struct.vbva_buffer** %11, align 8
  %73 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %70, %54
  %77 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %6, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.vbva_buffer*, %struct.vbva_buffer** %11, align 8
  %81 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @vbva_buffer_place_data_at(%struct.vbva_buf_ctx* %77, i8* %78, i64 %79, i64 %82)
  %84 = load %struct.vbva_buffer*, %struct.vbva_buffer** %11, align 8
  %85 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %struct.vbva_buffer*, %struct.vbva_buffer** %11, align 8
  %90 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = srem i64 %88, %91
  %93 = load %struct.vbva_buffer*, %struct.vbva_buffer** %11, align 8
  %94 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load %struct.vbva_record*, %struct.vbva_record** %10, align 8
  %97 = getelementptr inbounds %struct.vbva_record, %struct.vbva_record* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %12, align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %9, align 8
  %107 = sub nsw i64 %106, %105
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr i8, i8* %109, i64 %108
  store i8* %110, i8** %8, align 8
  br label %41

111:                                              ; preds = %41
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %67, %37
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @vbva_buffer_available(%struct.vbva_buffer*) #1

declare dso_local i32 @vbva_buffer_flush(%struct.gen_pool*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @vbva_buffer_place_data_at(%struct.vbva_buf_ctx*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
