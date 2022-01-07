; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-prg.c_ipu_prg_channel_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-prg.c_ipu_prg_channel_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ipu_prg* }
%struct.ipu_prg = type { i32, i64, %struct.ipu_prg_channel* }
%struct.ipu_prg_channel = type { i32 }

@IPU_PRG_CTL = common dso_local global i64 0, align 8
@IPU_PRG_REG_UPDATE_REG_UPDATE = common dso_local global i32 0, align 4
@IPU_PRG_REG_UPDATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_prg_channel_disable(%struct.ipuv3_channel* %0) #0 {
  %2 = alloca %struct.ipuv3_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_prg*, align 8
  %5 = alloca %struct.ipu_prg_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %2, align 8
  %7 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %8 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ipu_prg_ipu_to_prg_chan(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %12 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ipu_prg*, %struct.ipu_prg** %14, align 8
  store %struct.ipu_prg* %15, %struct.ipu_prg** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %21 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %20, i32 0, i32 2
  %22 = load %struct.ipu_prg_channel*, %struct.ipu_prg_channel** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ipu_prg_channel, %struct.ipu_prg_channel* %22, i64 %24
  store %struct.ipu_prg_channel* %25, %struct.ipu_prg_channel** %5, align 8
  %26 = load %struct.ipu_prg_channel*, %struct.ipu_prg_channel** %5, align 8
  %27 = getelementptr inbounds %struct.ipu_prg_channel, %struct.ipu_prg_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %70

31:                                               ; preds = %19
  %32 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %33 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pm_runtime_get_sync(i32 %34)
  %36 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %37 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IPU_PRG_CTL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @IPU_PRG_CTL_BYPASS(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %48 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IPU_PRG_CTL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load i32, i32* @IPU_PRG_REG_UPDATE_REG_UPDATE, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %56 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IPU_PRG_REG_UPDATE, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %62 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pm_runtime_put(i32 %63)
  %65 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @ipu_prg_put_pre(%struct.ipu_prg* %65, i32 %66)
  %68 = load %struct.ipu_prg_channel*, %struct.ipu_prg_channel** %5, align 8
  %69 = getelementptr inbounds %struct.ipu_prg_channel, %struct.ipu_prg_channel* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %31, %30, %18
  ret void
}

declare dso_local i32 @ipu_prg_ipu_to_prg_chan(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @IPU_PRG_CTL_BYPASS(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @ipu_prg_put_pre(%struct.ipu_prg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
