; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_soc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_soc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, i32, %struct.xgene_edac_dev_ctx* }
%struct.xgene_edac_dev_ctx = type { i32, i32 }

@PCPHPERRINTSTS = common dso_local global i32 0, align 4
@PCPLPERRINTSTS = common dso_local global i32 0, align 4
@MEMERRINTSTS = common dso_local global i32 0, align 4
@IOB_PA_ERR_MASK = common dso_local global i32 0, align 4
@IOB_BA_ERR_MASK = common dso_local global i32 0, align 4
@IOB_XGIC_ERR_MASK = common dso_local global i32 0, align 4
@IOB_RB_ERR_MASK = common dso_local global i32 0, align 4
@CSW_SWITCH_TRACE_ERR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"CSW switch trace correctable memory parity error\0A\00", align 1
@soc_mem_err_v1 = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"SoC memory parity error 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s memory parity error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @xgene_edac_soc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_soc_check(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.xgene_edac_dev_ctx*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %9 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %10 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %9, i32 0, i32 2
  %11 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %10, align 8
  store %struct.xgene_edac_dev_ctx* %11, %struct.xgene_edac_dev_ctx** %3, align 8
  store i8** null, i8*** %4, align 8
  %12 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCPHPERRINTSTS, align 4
  %16 = call i32 @xgene_edac_pcp_rd(i32 %14, i32 %15, i32* %5)
  %17 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCPLPERRINTSTS, align 4
  %21 = call i32 @xgene_edac_pcp_rd(i32 %19, i32 %20, i32* %6)
  %22 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MEMERRINTSTS, align 4
  %26 = call i32 @xgene_edac_pcp_rd(i32 %24, i32 %25, i32* %7)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IOB_PA_ERR_MASK, align 4
  %29 = load i32, i32* @IOB_BA_ERR_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IOB_XGIC_ERR_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @IOB_RB_ERR_MASK, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %27, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CSW_SWITCH_TRACE_ERR_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %141

46:                                               ; preds = %42, %37, %1
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @IOB_XGIC_ERR_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %53 = call i32 @xgene_edac_iob_gic_report(%struct.edac_device_ctl_info* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @IOB_RB_ERR_MASK, align 4
  %57 = load i32, i32* @IOB_BA_ERR_MASK, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %63 = call i32 @xgene_edac_rb_report(%struct.edac_device_ctl_info* %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @IOB_PA_ERR_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %71 = call i32 @xgene_edac_pa_report(%struct.edac_device_ctl_info* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @CSW_SWITCH_TRACE_ERR_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %79 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_info(i32 %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %83 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %84 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %82, i32 0, i32 0, i32 %85)
  br label %87

87:                                               ; preds = %77, %72
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  br label %141

91:                                               ; preds = %87
  %92 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i8**, i8*** @soc_mem_err_v1, align 8
  store i8** %97, i8*** %4, align 8
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i8**, i8*** %4, align 8
  %100 = icmp ne i8** %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %98
  %102 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %103 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %108 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %109 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %107, i32 0, i32 0, i32 %110)
  br label %141

112:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %138, %112
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 31
  br i1 %115, label %116, label %141

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = shl i32 1, %118
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %124 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i8**, i8*** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %130)
  %132 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %133 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %134 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %132, i32 0, i32 0, i32 %135)
  br label %137

137:                                              ; preds = %122, %116
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %113

141:                                              ; preds = %45, %90, %101, %113
  ret void
}

declare dso_local i32 @xgene_edac_pcp_rd(i32, i32, i32*) #1

declare dso_local i32 @xgene_edac_iob_gic_report(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @xgene_edac_rb_report(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @xgene_edac_pa_report(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
