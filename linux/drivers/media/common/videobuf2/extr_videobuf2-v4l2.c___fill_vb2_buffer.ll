; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___fill_vb2_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___fill_vb2_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.vb2_plane = type { i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@VB2_MEMORY_MMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*, %struct.vb2_plane*)* @__fill_vb2_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fill_vb2_buffer(%struct.vb2_buffer* %0, %struct.vb2_plane* %1) #0 {
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_plane*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  store %struct.vb2_plane* %1, %struct.vb2_plane** %4, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %7)
  store %struct.vb2_v4l2_buffer* %8, %struct.vb2_v4l2_buffer** %5, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %87, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %19
  %26 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VB2_MEMORY_MMAP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %25
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %42, i64 %44
  %46 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %45, i32 0, i32 3
  store i32 %41, i32* %46, align 4
  %47 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %55, i64 %57
  %59 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %58, i32 0, i32 2
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %33, %25
  %61 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %69, i64 %71
  %73 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 4
  %74 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %82, i64 %84
  %86 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %60
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %19

90:                                               ; preds = %19
  ret i32 0
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
