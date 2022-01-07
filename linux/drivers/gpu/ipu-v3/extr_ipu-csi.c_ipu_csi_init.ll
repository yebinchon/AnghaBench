; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { %struct.ipu_csi** }
%struct.ipu_csi = type { i32, %struct.ipu_soc*, i32, %struct.clk*, i32, i32 }
%struct.device = type { i32 }
%struct.clk = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CSI%d base: 0x%08lx remapped to %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_csi_init(%struct.ipu_soc* %0, %struct.device* %1, i32 %2, i64 %3, i32 %4, %struct.clk* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipu_soc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.clk*, align 8
  %14 = alloca %struct.ipu_csi*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %8, align 8
  store %struct.device* %1, %struct.device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.clk* %5, %struct.clk** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %73

20:                                               ; preds = %6
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ipu_csi* @devm_kzalloc(%struct.device* %21, i32 40, i32 %22)
  store %struct.ipu_csi* %23, %struct.ipu_csi** %14, align 8
  %24 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %25 = icmp ne %struct.ipu_csi* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %73

29:                                               ; preds = %20
  %30 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %31 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %32 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %31, i32 0, i32 0
  %33 = load %struct.ipu_csi**, %struct.ipu_csi*** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ipu_csi*, %struct.ipu_csi** %33, i64 %35
  store %struct.ipu_csi* %30, %struct.ipu_csi** %36, align 8
  %37 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %38 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %37, i32 0, i32 5
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %42 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %45 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.clk*, %struct.clk** %13, align 8
  %47 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %48 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %47, i32 0, i32 3
  store %struct.clk* %46, %struct.clk** %48, align 8
  %49 = load %struct.device*, %struct.device** %9, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @devm_ioremap(%struct.device* %49, i64 %50, i32 %51)
  %53 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %54 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %56 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %29
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %73

62:                                               ; preds = %29
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %67 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64, i64 %65, i32 %68)
  %70 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %71 = load %struct.ipu_csi*, %struct.ipu_csi** %14, align 8
  %72 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %71, i32 0, i32 1
  store %struct.ipu_soc* %70, %struct.ipu_soc** %72, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %62, %59, %26, %17
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.ipu_csi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
