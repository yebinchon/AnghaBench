; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { i32, i32 }
%struct.ipu_soc = type { %struct.ipu_csi** }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipu_csi* @ipu_csi_get(%struct.ipu_soc* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_csi*, align 8
  %4 = alloca %struct.ipu_soc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ipu_csi*, align 8
  %8 = alloca %struct.ipu_csi*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.ipu_csi* @ERR_PTR(i32 %13)
  store %struct.ipu_csi* %14, %struct.ipu_csi** %3, align 8
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %17 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %16, i32 0, i32 0
  %18 = load %struct.ipu_csi**, %struct.ipu_csi*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ipu_csi*, %struct.ipu_csi** %18, i64 %20
  %22 = load %struct.ipu_csi*, %struct.ipu_csi** %21, align 8
  store %struct.ipu_csi* %22, %struct.ipu_csi** %7, align 8
  %23 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  store %struct.ipu_csi* %23, %struct.ipu_csi** %8, align 8
  %24 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %25 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %24, i32 0, i32 1
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %29 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.ipu_csi* @ERR_PTR(i32 %34)
  store %struct.ipu_csi* %35, %struct.ipu_csi** %8, align 8
  br label %39

36:                                               ; preds = %15
  %37 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %38 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %41 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %40, i32 0, i32 1
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.ipu_csi*, %struct.ipu_csi** %8, align 8
  store %struct.ipu_csi* %44, %struct.ipu_csi** %3, align 8
  br label %45

45:                                               ; preds = %39, %11
  %46 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  ret %struct.ipu_csi* %46
}

declare dso_local %struct.ipu_csi* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
