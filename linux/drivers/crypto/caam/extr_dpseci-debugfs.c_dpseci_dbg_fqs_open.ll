; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci-debugfs.c_dpseci_dbg_fqs_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci-debugfs.c_dpseci_dbg_fqs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.file = type { i32 }
%struct.dpaa2_caam_priv = type { i32 }

@dpseci_dbg_fqs_show = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"single_open() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dpseci_dbg_fqs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpseci_dbg_fqs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpaa2_caam_priv*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.dpaa2_caam_priv*
  store %struct.dpaa2_caam_priv* %10, %struct.dpaa2_caam_priv** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = load i32, i32* @dpseci_dbg_fqs_show, align 4
  %13 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %6, align 8
  %14 = call i32 @single_open(%struct.file* %11, i32 %12, %struct.dpaa2_caam_priv* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %6, align 8
  %19 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @single_open(%struct.file*, i32, %struct.dpaa2_caam_priv*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
