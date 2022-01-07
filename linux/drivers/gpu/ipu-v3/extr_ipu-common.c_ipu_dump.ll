; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"IPU_CONF = \090x%08X\0A\00", align 1
@IPU_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"IDMAC_CONF = \090x%08X\0A\00", align 1
@IDMAC_CONF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"IDMAC_CHA_EN1 = \090x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"IDMAC_CHA_EN2 = \090x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"IDMAC_CHA_PRI1 = \090x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"IDMAC_CHA_PRI2 = \090x%08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"IDMAC_BAND_EN1 = \090x%08X\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"IDMAC_BAND_EN2 = \090x%08X\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"IPU_CHA_DB_MODE_SEL0 = \090x%08X\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"IPU_CHA_DB_MODE_SEL1 = \090x%08X\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"IPU_FS_PROC_FLOW1 = \090x%08X\0A\00", align 1
@IPU_FS_PROC_FLOW1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"IPU_FS_PROC_FLOW2 = \090x%08X\0A\00", align 1
@IPU_FS_PROC_FLOW2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"IPU_FS_PROC_FLOW3 = \090x%08X\0A\00", align 1
@IPU_FS_PROC_FLOW3 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"IPU_FS_DISP_FLOW1 = \090x%08X\0A\00", align 1
@IPU_FS_DISP_FLOW1 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"IPU_INT_CTRL(%d) = \09%08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_dump(%struct.ipu_soc* %0) #0 {
  %2 = alloca %struct.ipu_soc*, align 8
  %3 = alloca i32, align 4
  store %struct.ipu_soc* %0, %struct.ipu_soc** %2, align 8
  %4 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %5 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %8 = load i32, i32* @IPU_CONF, align 4
  %9 = call i32 @ipu_cm_read(%struct.ipu_soc* %7, i32 %8)
  %10 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %12 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %15 = load i32, i32* @IDMAC_CONF, align 4
  %16 = call i32 @ipu_idmac_read(%struct.ipu_soc* %14, i32 %15)
  %17 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %19 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %22 = call i32 @IDMAC_CHA_EN(i32 0)
  %23 = call i32 @ipu_idmac_read(%struct.ipu_soc* %21, i32 %22)
  %24 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %26 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %29 = call i32 @IDMAC_CHA_EN(i32 32)
  %30 = call i32 @ipu_idmac_read(%struct.ipu_soc* %28, i32 %29)
  %31 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %33 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %36 = call i32 @IDMAC_CHA_PRI(i32 0)
  %37 = call i32 @ipu_idmac_read(%struct.ipu_soc* %35, i32 %36)
  %38 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %40 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %43 = call i32 @IDMAC_CHA_PRI(i32 32)
  %44 = call i32 @ipu_idmac_read(%struct.ipu_soc* %42, i32 %43)
  %45 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %47 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %50 = call i32 @IDMAC_BAND_EN(i32 0)
  %51 = call i32 @ipu_idmac_read(%struct.ipu_soc* %49, i32 %50)
  %52 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %54 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %57 = call i32 @IDMAC_BAND_EN(i32 32)
  %58 = call i32 @ipu_idmac_read(%struct.ipu_soc* %56, i32 %57)
  %59 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %61 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %64 = call i32 @IPU_CHA_DB_MODE_SEL(i32 0)
  %65 = call i32 @ipu_cm_read(%struct.ipu_soc* %63, i32 %64)
  %66 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  %67 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %68 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %71 = call i32 @IPU_CHA_DB_MODE_SEL(i32 32)
  %72 = call i32 @ipu_cm_read(%struct.ipu_soc* %70, i32 %71)
  %73 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %72)
  %74 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %75 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %78 = load i32, i32* @IPU_FS_PROC_FLOW1, align 4
  %79 = call i32 @ipu_cm_read(%struct.ipu_soc* %77, i32 %78)
  %80 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  %81 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %82 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %85 = load i32, i32* @IPU_FS_PROC_FLOW2, align 4
  %86 = call i32 @ipu_cm_read(%struct.ipu_soc* %84, i32 %85)
  %87 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %86)
  %88 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %89 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %92 = load i32, i32* @IPU_FS_PROC_FLOW3, align 4
  %93 = call i32 @ipu_cm_read(%struct.ipu_soc* %91, i32 %92)
  %94 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %93)
  %95 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %96 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %99 = load i32, i32* @IPU_FS_DISP_FLOW1, align 4
  %100 = call i32 @ipu_cm_read(%struct.ipu_soc* %98, i32 %99)
  %101 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %115, %1
  %103 = load i32, i32* %3, align 4
  %104 = icmp slt i32 %103, 15
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %107 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @IPU_INT_CTRL(i32 %111)
  %113 = call i32 @ipu_cm_read(%struct.ipu_soc* %110, i32 %112)
  %114 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %102

118:                                              ; preds = %102
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @ipu_cm_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @ipu_idmac_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @IDMAC_CHA_EN(i32) #1

declare dso_local i32 @IDMAC_CHA_PRI(i32) #1

declare dso_local i32 @IDMAC_BAND_EN(i32) #1

declare dso_local i32 @IPU_CHA_DB_MODE_SEL(i32) #1

declare dso_local i32 @IPU_INT_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
