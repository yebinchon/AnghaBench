; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_current_qm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_current_qm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_debug_file = type { %struct.hisi_zip_ctrl* }
%struct.hisi_zip_ctrl = type { i32 }
%struct.hisi_qm = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QM_DFX_MB_CNT_VF = common dso_local global i64 0, align 8
@QM_DFX_DB_CNT_VF = common dso_local global i64 0, align 8
@QM_DFX_SQE_CNT_VF_SQN = common dso_local global i64 0, align 8
@CURRENT_Q_MASK = common dso_local global i32 0, align 4
@QM_DFX_CQE_CNT_VF_CQN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctrl_debug_file*, i32)* @current_qm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @current_qm_write(%struct.ctrl_debug_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctrl_debug_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_qm*, align 8
  %7 = alloca %struct.hisi_zip_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ctrl_debug_file* %0, %struct.ctrl_debug_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ctrl_debug_file*, %struct.ctrl_debug_file** %4, align 8
  %11 = call %struct.hisi_qm* @file_to_qm(%struct.ctrl_debug_file* %10)
  store %struct.hisi_qm* %11, %struct.hisi_qm** %6, align 8
  %12 = load %struct.ctrl_debug_file*, %struct.ctrl_debug_file** %4, align 8
  %13 = getelementptr inbounds %struct.ctrl_debug_file, %struct.ctrl_debug_file* %12, i32 0, i32 0
  %14 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %13, align 8
  store %struct.hisi_zip_ctrl* %14, %struct.hisi_zip_ctrl** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %7, align 8
  %17 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %123

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %28 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %31 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %74

33:                                               ; preds = %23
  %34 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %35 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %38 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %36, %39
  %41 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %7, align 8
  %42 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %7, align 8
  %47 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %33
  %51 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %52 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %55 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %7, align 8
  %59 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sub nsw i32 %57, %63
  %65 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %66 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  br label %73

68:                                               ; preds = %33
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %71 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %50
  br label %74

74:                                               ; preds = %73, %26
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %77 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @QM_DFX_MB_CNT_VF, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %84 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @QM_DFX_DB_CNT_VF, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %91 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @QM_DFX_SQE_CNT_VF_SQN, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @readl(i64 %94)
  %96 = load i32, i32* @CURRENT_Q_MASK, align 4
  %97 = and i32 %95, %96
  %98 = or i32 %89, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %101 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @QM_DFX_SQE_CNT_VF_SQN, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %108 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @QM_DFX_CQE_CNT_VF_CQN, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @readl(i64 %111)
  %113 = load i32, i32* @CURRENT_Q_MASK, align 4
  %114 = and i32 %112, %113
  %115 = or i32 %106, %114
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %118 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @QM_DFX_CQE_CNT_VF_CQN, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %116, i64 %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %74, %20
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.hisi_qm* @file_to_qm(%struct.ctrl_debug_file*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
