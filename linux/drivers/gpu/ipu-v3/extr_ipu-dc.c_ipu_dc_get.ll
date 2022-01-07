; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_ipu_dc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_ipu_dc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dc = type { i32 }
%struct.ipu_soc = type { %struct.ipu_dc_priv* }
%struct.ipu_dc_priv = type { i32, %struct.ipu_dc* }

@IPU_DC_NUM_CHANNELS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipu_dc* @ipu_dc_get(%struct.ipu_soc* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_dc*, align 8
  %4 = alloca %struct.ipu_soc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_dc_priv*, align 8
  %7 = alloca %struct.ipu_dc*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %9 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %8, i32 0, i32 0
  %10 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %9, align 8
  store %struct.ipu_dc_priv* %10, %struct.ipu_dc_priv** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IPU_DC_NUM_CHANNELS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ipu_dc* @ERR_PTR(i32 %16)
  store %struct.ipu_dc* %17, %struct.ipu_dc** %3, align 8
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %6, align 8
  %20 = getelementptr inbounds %struct.ipu_dc_priv, %struct.ipu_dc_priv* %19, i32 0, i32 1
  %21 = load %struct.ipu_dc*, %struct.ipu_dc** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %21, i64 %23
  store %struct.ipu_dc* %24, %struct.ipu_dc** %7, align 8
  %25 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %6, align 8
  %26 = getelementptr inbounds %struct.ipu_dc_priv, %struct.ipu_dc_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ipu_dc*, %struct.ipu_dc** %7, align 8
  %29 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %18
  %33 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %6, align 8
  %34 = getelementptr inbounds %struct.ipu_dc_priv, %struct.ipu_dc_priv* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ipu_dc* @ERR_PTR(i32 %37)
  store %struct.ipu_dc* %38, %struct.ipu_dc** %3, align 8
  br label %46

39:                                               ; preds = %18
  %40 = load %struct.ipu_dc*, %struct.ipu_dc** %7, align 8
  %41 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %6, align 8
  %43 = getelementptr inbounds %struct.ipu_dc_priv, %struct.ipu_dc_priv* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.ipu_dc*, %struct.ipu_dc** %7, align 8
  store %struct.ipu_dc* %45, %struct.ipu_dc** %3, align 8
  br label %46

46:                                               ; preds = %39, %32, %14
  %47 = load %struct.ipu_dc*, %struct.ipu_dc** %3, align 8
  ret %struct.ipu_dc* %47
}

declare dso_local %struct.ipu_dc* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
