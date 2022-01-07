; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_oneinit_sm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_oneinit_sm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, i32, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_gr_oneinit_sm_id(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %56, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %8 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %59

11:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %52, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %15 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %21 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %19, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %31 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %34 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %29, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %40 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %43 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %38, i32* %46, align 4
  %47 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %48 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %28, %18
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %12

55:                                               ; preds = %12
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %5

59:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
