; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-smfc.c_ipu_smfc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-smfc.c_ipu_smfc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_smfc = type { i32 }
%struct.ipu_soc = type { %struct.ipu_smfc_priv* }
%struct.ipu_smfc_priv = type { i32, %struct.ipu_smfc* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipu_smfc* @ipu_smfc_get(%struct.ipu_soc* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_smfc*, align 8
  %4 = alloca %struct.ipu_soc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_smfc_priv*, align 8
  %7 = alloca %struct.ipu_smfc*, align 8
  %8 = alloca %struct.ipu_smfc*, align 8
  %9 = alloca i64, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %11 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %10, i32 0, i32 0
  %12 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %11, align 8
  store %struct.ipu_smfc_priv* %12, %struct.ipu_smfc_priv** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp uge i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ipu_smfc* @ERR_PTR(i32 %17)
  store %struct.ipu_smfc* %18, %struct.ipu_smfc** %3, align 8
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %20, i32 0, i32 1
  %22 = load %struct.ipu_smfc*, %struct.ipu_smfc** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ipu_smfc, %struct.ipu_smfc* %22, i64 %24
  store %struct.ipu_smfc* %25, %struct.ipu_smfc** %7, align 8
  %26 = load %struct.ipu_smfc*, %struct.ipu_smfc** %7, align 8
  store %struct.ipu_smfc* %26, %struct.ipu_smfc** %8, align 8
  %27 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %6, align 8
  %28 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.ipu_smfc*, %struct.ipu_smfc** %7, align 8
  %32 = getelementptr inbounds %struct.ipu_smfc, %struct.ipu_smfc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ipu_smfc* @ERR_PTR(i32 %37)
  store %struct.ipu_smfc* %38, %struct.ipu_smfc** %8, align 8
  br label %42

39:                                               ; preds = %19
  %40 = load %struct.ipu_smfc*, %struct.ipu_smfc** %7, align 8
  %41 = getelementptr inbounds %struct.ipu_smfc, %struct.ipu_smfc* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %6, align 8
  %44 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.ipu_smfc*, %struct.ipu_smfc** %8, align 8
  store %struct.ipu_smfc* %47, %struct.ipu_smfc** %3, align 8
  br label %48

48:                                               ; preds = %42, %15
  %49 = load %struct.ipu_smfc*, %struct.ipu_smfc** %3, align 8
  ret %struct.ipu_smfc* %49
}

declare dso_local %struct.ipu_smfc* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
