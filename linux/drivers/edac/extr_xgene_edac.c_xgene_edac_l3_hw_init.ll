; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_l3_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_l3_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i64, %struct.xgene_edac_dev_ctx* }
%struct.xgene_edac_dev_ctx = type { i32, i64 }

@L3C_ECR = common dso_local global i64 0, align 8
@L3C_UCERREN = common dso_local global i32 0, align 4
@L3C_CERREN = common dso_local global i32 0, align 4
@OP_RUNNING_INTERRUPT = common dso_local global i64 0, align 8
@L3C_ECR_UCINTREN = common dso_local global i32 0, align 4
@L3C_ECR_CINTREN = common dso_local global i32 0, align 4
@PCPHPERRINTMSK = common dso_local global i32 0, align 4
@L3C_UNCORR_ERR_MASK = common dso_local global i32 0, align 4
@PCPLPERRINTMSK = common dso_local global i32 0, align 4
@L3C_CORR_ERR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*, i32)* @xgene_edac_l3_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_l3_hw_init(%struct.edac_device_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_edac_dev_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %7, i32 0, i32 1
  %9 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %8, align 8
  store %struct.xgene_edac_dev_ctx* %9, %struct.xgene_edac_dev_ctx** %5, align 8
  %10 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @L3C_ECR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @L3C_UCERREN, align 4
  %17 = load i32, i32* @L3C_CERREN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %22 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OP_RUNNING_INTERRUPT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @L3C_ECR_UCINTREN, align 4
  %31 = load i32, i32* @L3C_ECR_CINTREN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load i32, i32* @L3C_ECR_UCINTREN, align 4
  %37 = load i32, i32* @L3C_ECR_CINTREN, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @L3C_ECR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %52 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OP_RUNNING_INTERRUPT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %43
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PCPHPERRINTMSK, align 4
  %64 = load i32, i32* @L3C_UNCORR_ERR_MASK, align 4
  %65 = call i32 @xgene_edac_pcp_clrbits(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PCPLPERRINTMSK, align 4
  %70 = load i32, i32* @L3C_CORR_ERR_MASK, align 4
  %71 = call i32 @xgene_edac_pcp_clrbits(i32 %68, i32 %69, i32 %70)
  br label %85

72:                                               ; preds = %56
  %73 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PCPHPERRINTMSK, align 4
  %77 = load i32, i32* @L3C_UNCORR_ERR_MASK, align 4
  %78 = call i32 @xgene_edac_pcp_setbits(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PCPLPERRINTMSK, align 4
  %83 = load i32, i32* @L3C_CORR_ERR_MASK, align 4
  %84 = call i32 @xgene_edac_pcp_setbits(i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %72, %59
  br label %86

86:                                               ; preds = %85, %43
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @xgene_edac_pcp_clrbits(i32, i32, i32) #1

declare dso_local i32 @xgene_edac_pcp_setbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
