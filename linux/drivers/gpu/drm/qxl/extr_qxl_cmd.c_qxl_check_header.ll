; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_check_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qxl_ring_header }
%struct.qxl_ring_header = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_ring*)* @qxl_check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_check_header(%struct.qxl_ring* %0) #0 {
  %2 = alloca %struct.qxl_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qxl_ring_header*, align 8
  %5 = alloca i64, align 8
  store %struct.qxl_ring* %0, %struct.qxl_ring** %2, align 8
  %6 = load %struct.qxl_ring*, %struct.qxl_ring** %2, align 8
  %7 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.qxl_ring_header* %9, %struct.qxl_ring_header** %4, align 8
  %10 = load %struct.qxl_ring*, %struct.qxl_ring** %2, align 8
  %11 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %4, align 8
  %15 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %4, align 8
  %18 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %4, align 8
  %22 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %4, align 8
  %30 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %4, align 8
  %34 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.qxl_ring*, %struct.qxl_ring** %2, align 8
  %37 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
