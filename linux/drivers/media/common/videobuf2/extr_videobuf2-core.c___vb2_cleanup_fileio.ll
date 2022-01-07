; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_cleanup_fileio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_cleanup_fileio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.vb2_fileio_data*, i32 }
%struct.vb2_fileio_data = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"file io emulator closed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*)* @__vb2_cleanup_fileio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vb2_cleanup_fileio(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.vb2_fileio_data*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %4, i32 0, i32 0
  %6 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %5, align 8
  store %struct.vb2_fileio_data* %6, %struct.vb2_fileio_data** %3, align 8
  %7 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %3, align 8
  %8 = icmp ne %struct.vb2_fileio_data* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vb2_core_streamoff(%struct.vb2_queue* %10, i32 %13)
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %15, i32 0, i32 0
  store %struct.vb2_fileio_data* null, %struct.vb2_fileio_data** %16, align 8
  %17 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %3, align 8
  %18 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %20 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %3, align 8
  %21 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %3, align 8
  %24 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %23, i32 0, i32 0
  %25 = call i32 @vb2_core_reqbufs(%struct.vb2_queue* %19, i32 %22, i64* %24)
  %26 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %3, align 8
  %27 = call i32 @kfree(%struct.vb2_fileio_data* %26)
  %28 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i32 @vb2_core_streamoff(%struct.vb2_queue*, i32) #1

declare dso_local i32 @vb2_core_reqbufs(%struct.vb2_queue*, i32, i64*) #1

declare dso_local i32 @kfree(%struct.vb2_fileio_data*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
