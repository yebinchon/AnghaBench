; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___setup_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___setup_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, i32, %struct.vb2_plane*, %struct.vb2_queue* }
%struct.vb2_plane = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vb2_queue = type { %struct.vb2_buffer** }

@.str = private unnamed_addr constant [36 x i8] c"buffer %d, plane %d offset 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @__setup_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_offsets(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca %struct.vb2_plane*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 3
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  store %struct.vb2_queue* %10, %struct.vb2_queue** %3, align 8
  store i64 0, i64* %5, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %1
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %17 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %16, i32 0, i32 0
  %18 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %17, align 8
  %19 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %18, i64 %23
  %25 = load %struct.vb2_buffer*, %struct.vb2_buffer** %24, align 8
  store %struct.vb2_buffer* %25, %struct.vb2_buffer** %6, align 8
  %26 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %26, i32 0, i32 2
  %28 = load %struct.vb2_plane*, %struct.vb2_plane** %27, align 8
  %29 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %28, i64 %33
  store %struct.vb2_plane* %34, %struct.vb2_plane** %7, align 8
  %35 = load %struct.vb2_plane*, %struct.vb2_plane** %7, align 8
  %36 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vb2_plane*, %struct.vb2_plane** %7, align 8
  %40 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = call i64 @PAGE_ALIGN(i64 %42)
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %15, %1
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %79, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %48 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %45
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %54 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %53, i32 0, i32 2
  %55 = load %struct.vb2_plane*, %struct.vb2_plane** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %55, i64 %57
  %59 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %52, i64* %60, align 8
  %61 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %62 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i64 %65)
  %67 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %68 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %67, i32 0, i32 2
  %69 = load %struct.vb2_plane*, %struct.vb2_plane** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %69, i64 %71
  %73 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @PAGE_ALIGN(i64 %77)
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %51
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %45

82:                                               ; preds = %45
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
