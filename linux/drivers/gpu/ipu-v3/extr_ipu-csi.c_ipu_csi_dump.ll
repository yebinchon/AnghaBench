; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"CSI_SENS_CONF:     %08x\0A\00", align 1
@CSI_SENS_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"CSI_SENS_FRM_SIZE: %08x\0A\00", align 1
@CSI_SENS_FRM_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"CSI_ACT_FRM_SIZE:  %08x\0A\00", align 1
@CSI_ACT_FRM_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"CSI_OUT_FRM_CTRL:  %08x\0A\00", align 1
@CSI_OUT_FRM_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"CSI_TST_CTRL:      %08x\0A\00", align 1
@CSI_TST_CTRL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"CSI_CCIR_CODE_1:   %08x\0A\00", align 1
@CSI_CCIR_CODE_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"CSI_CCIR_CODE_2:   %08x\0A\00", align 1
@CSI_CCIR_CODE_2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"CSI_CCIR_CODE_3:   %08x\0A\00", align 1
@CSI_CCIR_CODE_3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"CSI_MIPI_DI:       %08x\0A\00", align 1
@CSI_MIPI_DI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"CSI_SKIP:          %08x\0A\00", align 1
@CSI_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_csi_dump(%struct.ipu_csi* %0) #0 {
  %2 = alloca %struct.ipu_csi*, align 8
  store %struct.ipu_csi* %0, %struct.ipu_csi** %2, align 8
  %3 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %4 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %9 = load i32, i32* @CSI_SENS_CONF, align 4
  %10 = call i32 @ipu_csi_read(%struct.ipu_csi* %8, i32 %9)
  %11 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %13 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %18 = load i32, i32* @CSI_SENS_FRM_SIZE, align 4
  %19 = call i32 @ipu_csi_read(%struct.ipu_csi* %17, i32 %18)
  %20 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %22 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %27 = load i32, i32* @CSI_ACT_FRM_SIZE, align 4
  %28 = call i32 @ipu_csi_read(%struct.ipu_csi* %26, i32 %27)
  %29 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %31 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %36 = load i32, i32* @CSI_OUT_FRM_CTRL, align 4
  %37 = call i32 @ipu_csi_read(%struct.ipu_csi* %35, i32 %36)
  %38 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %40 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %45 = load i32, i32* @CSI_TST_CTRL, align 4
  %46 = call i32 @ipu_csi_read(%struct.ipu_csi* %44, i32 %45)
  %47 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %49 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %54 = load i32, i32* @CSI_CCIR_CODE_1, align 4
  %55 = call i32 @ipu_csi_read(%struct.ipu_csi* %53, i32 %54)
  %56 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %58 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %63 = load i32, i32* @CSI_CCIR_CODE_2, align 4
  %64 = call i32 @ipu_csi_read(%struct.ipu_csi* %62, i32 %63)
  %65 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %67 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %72 = load i32, i32* @CSI_CCIR_CODE_3, align 4
  %73 = call i32 @ipu_csi_read(%struct.ipu_csi* %71, i32 %72)
  %74 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %76 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %81 = load i32, i32* @CSI_MIPI_DI, align 4
  %82 = call i32 @ipu_csi_read(%struct.ipu_csi* %80, i32 %81)
  %83 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %85 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ipu_csi*, %struct.ipu_csi** %2, align 8
  %90 = load i32, i32* @CSI_SKIP, align 4
  %91 = call i32 @ipu_csi_read(%struct.ipu_csi* %89, i32 %90)
  %92 = call i32 @dev_dbg(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %91)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @ipu_csi_read(%struct.ipu_csi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
