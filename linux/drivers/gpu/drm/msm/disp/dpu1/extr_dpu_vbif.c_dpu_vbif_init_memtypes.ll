; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c_dpu_vbif_init_memtypes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c_dpu_vbif_init_memtypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.dpu_hw_vbif** }
%struct.dpu_hw_vbif = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 (%struct.dpu_hw_vbif*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_vbif_init_memtypes(%struct.dpu_kms* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  %3 = alloca %struct.dpu_hw_vbif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dpu_kms* %0, %struct.dpu_kms** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %65, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %9 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %8, i32 0, i32 0
  %10 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.dpu_hw_vbif** %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %6
  %14 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %15 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %14, i32 0, i32 0
  %16 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %16, i64 %18
  %20 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %19, align 8
  store %struct.dpu_hw_vbif* %20, %struct.dpu_hw_vbif** %3, align 8
  %21 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %22 = icmp ne %struct.dpu_hw_vbif* %21, null
  br i1 %22, label %23, label %64

23:                                               ; preds = %13
  %24 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %64

28:                                               ; preds = %23
  %29 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %30 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.dpu_hw_vbif*, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.dpu_hw_vbif*, i32, i32)* %32, null
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %38 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %35
  %44 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %45 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dpu_hw_vbif*, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32)** %46, align 8
  %48 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %51 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %47(%struct.dpu_hw_vbif* %48, i32 %49, i32 %58)
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %35

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %28, %23, %13
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %6

68:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.dpu_hw_vbif**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
