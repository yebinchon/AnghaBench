; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_complete_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_complete_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i64, %struct.TYPE_2__*, i64, i32, i8*, i32 (i64, i8*)* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io*)* @complete_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_io(%struct.io* %0) #0 {
  %2 = alloca %struct.io*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32 (i64, i8*)*, align 8
  %5 = alloca i8*, align 8
  store %struct.io* %0, %struct.io** %2, align 8
  %6 = load %struct.io*, %struct.io** %2, align 8
  %7 = getelementptr inbounds %struct.io, %struct.io* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.io*, %struct.io** %2, align 8
  %10 = getelementptr inbounds %struct.io, %struct.io* %9, i32 0, i32 5
  %11 = load i32 (i64, i8*)*, i32 (i64, i8*)** %10, align 8
  store i32 (i64, i8*)* %11, i32 (i64, i8*)** %4, align 8
  %12 = load %struct.io*, %struct.io** %2, align 8
  %13 = getelementptr inbounds %struct.io, %struct.io* %12, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.io*, %struct.io** %2, align 8
  %16 = getelementptr inbounds %struct.io, %struct.io* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.io*, %struct.io** %2, align 8
  %21 = getelementptr inbounds %struct.io, %struct.io* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.io*, %struct.io** %2, align 8
  %24 = getelementptr inbounds %struct.io, %struct.io* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @invalidate_kernel_vmap_range(i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.io*, %struct.io** %2, align 8
  %29 = load %struct.io*, %struct.io** %2, align 8
  %30 = getelementptr inbounds %struct.io, %struct.io* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @mempool_free(%struct.io* %28, i32* %32)
  %34 = load i32 (i64, i8*)*, i32 (i64, i8*)** %4, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 %34(i64 %35, i8* %36)
  ret void
}

declare dso_local i32 @invalidate_kernel_vmap_range(i32, i64) #1

declare dso_local i32 @mempool_free(%struct.io*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
