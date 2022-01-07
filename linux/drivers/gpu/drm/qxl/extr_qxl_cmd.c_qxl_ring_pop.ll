; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_ring_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_ring_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_ring = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.qxl_ring_header }
%struct.qxl_ring_header = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_ring*, i8*)* @qxl_ring_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_ring_pop(%struct.qxl_ring* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qxl_ring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qxl_ring_header*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qxl_ring* %0, %struct.qxl_ring** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.qxl_ring*, %struct.qxl_ring** %4, align 8
  %11 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.qxl_ring_header* %13, %struct.qxl_ring_header** %6, align 8
  %14 = load %struct.qxl_ring*, %struct.qxl_ring** %4, align 8
  %15 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %14, i32 0, i32 2
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %6, align 8
  %19 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %18, i32 0, i32 0
  %20 = load volatile i32, i32* %19, align 4
  %21 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %6, align 8
  %22 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %21, i32 0, i32 1
  %23 = load volatile i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %6, align 8
  %27 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %26, i32 0, i32 0
  %28 = load volatile i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %6, align 8
  %31 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %30, i32 0, i32 2
  store volatile i32 %29, i32* %31, align 4
  %32 = load %struct.qxl_ring*, %struct.qxl_ring** %4, align 8
  %33 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %32, i32 0, i32 2
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 0, i32* %3, align 4
  br label %72

36:                                               ; preds = %2
  %37 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %6, align 8
  %38 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %37, i32 0, i32 0
  %39 = load volatile i32, i32* %38, align 4
  %40 = load %struct.qxl_ring*, %struct.qxl_ring** %4, align 8
  %41 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %39, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.qxl_ring*, %struct.qxl_ring** %4, align 8
  %46 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.qxl_ring*, %struct.qxl_ring** %4, align 8
  %52 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  store i32* %56, i32** %7, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load %struct.qxl_ring*, %struct.qxl_ring** %4, align 8
  %61 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i8* %57, i8* %59, i32 %62)
  %64 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %6, align 8
  %65 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %64, i32 0, i32 0
  %66 = load volatile i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store volatile i32 %67, i32* %65, align 4
  %68 = load %struct.qxl_ring*, %struct.qxl_ring** %4, align 8
  %69 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %68, i32 0, i32 2
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %36, %25
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
