; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synps_platform_data = type { i32 (%struct.synps_edac_priv*)* }
%struct.synps_edac_priv = type opaque
%struct.mem_ctl_info = type { %struct.synps_edac_priv.0* }
%struct.synps_edac_priv.0 = type { i64, i32, i32, %struct.TYPE_2__, %struct.synps_platform_data* }
%struct.TYPE_2__ = type { i64, i64 }

@DDR_QOS_IRQ_STAT_OFST = common dso_local global i64 0, align 8
@DDR_QOSCE_MASK = common dso_local global i32 0, align 4
@DDR_QOSUE_MASK = common dso_local global i32 0, align 4
@ECC_CE_UE_INTR_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Total error count CE %d UE %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.synps_platform_data*, align 8
  %7 = alloca %struct.mem_ctl_info*, align 8
  %8 = alloca %struct.synps_edac_priv.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.mem_ctl_info*
  store %struct.mem_ctl_info* %12, %struct.mem_ctl_info** %7, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %14, align 8
  store %struct.synps_edac_priv.0* %15, %struct.synps_edac_priv.0** %8, align 8
  %16 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %17 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %16, i32 0, i32 4
  %18 = load %struct.synps_platform_data*, %struct.synps_platform_data** %17, align 8
  store %struct.synps_platform_data* %18, %struct.synps_platform_data** %6, align 8
  %19 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %20 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DDR_QOS_IRQ_STAT_OFST, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @DDR_QOSCE_MASK, align 4
  %26 = load i32, i32* @DDR_QOSUE_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ECC_CE_UE_INTR_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %2
  %37 = load %struct.synps_platform_data*, %struct.synps_platform_data** %6, align 8
  %38 = getelementptr inbounds %struct.synps_platform_data, %struct.synps_platform_data* %37, i32 0, i32 0
  %39 = load i32 (%struct.synps_edac_priv*)*, i32 (%struct.synps_edac_priv*)** %38, align 8
  %40 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %41 = bitcast %struct.synps_edac_priv.0* %40 to %struct.synps_edac_priv*
  %42 = call i32 %39(%struct.synps_edac_priv* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  br label %87

47:                                               ; preds = %36
  %48 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %49 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %53 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %59 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %63 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %69 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %70 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %69, i32 0, i32 3
  %71 = call i32 @handle_error(%struct.mem_ctl_info* %68, %struct.TYPE_2__* %70)
  %72 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %73 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %76 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.synps_edac_priv.0*, %struct.synps_edac_priv.0** %8, align 8
  %81 = getelementptr inbounds %struct.synps_edac_priv.0, %struct.synps_edac_priv.0* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DDR_QOS_IRQ_STAT_OFST, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %47, %45, %34
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @handle_error(%struct.mem_ctl_info*, %struct.TYPE_2__*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
