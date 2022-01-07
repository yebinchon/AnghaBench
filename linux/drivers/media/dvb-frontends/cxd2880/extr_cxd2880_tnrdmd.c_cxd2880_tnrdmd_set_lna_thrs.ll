; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_set_lna_thrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_set_lna_thrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { %struct.cxd2880_tnrdmd_lna_thrs_tbl_cable*, %struct.cxd2880_tnrdmd_lna_thrs_tbl_air* }
%struct.cxd2880_tnrdmd_lna_thrs_tbl_air = type { i32 }
%struct.cxd2880_tnrdmd_lna_thrs_tbl_cable = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_set_lna_thrs(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd_lna_thrs_tbl_air* %1, %struct.cxd2880_tnrdmd_lna_thrs_tbl_cable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca %struct.cxd2880_tnrdmd_lna_thrs_tbl_air*, align 8
  %7 = alloca %struct.cxd2880_tnrdmd_lna_thrs_tbl_cable*, align 8
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store %struct.cxd2880_tnrdmd_lna_thrs_tbl_air* %1, %struct.cxd2880_tnrdmd_lna_thrs_tbl_air** %6, align 8
  store %struct.cxd2880_tnrdmd_lna_thrs_tbl_cable* %2, %struct.cxd2880_tnrdmd_lna_thrs_tbl_cable** %7, align 8
  %8 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %9 = icmp ne %struct.cxd2880_tnrdmd* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.cxd2880_tnrdmd_lna_thrs_tbl_air*, %struct.cxd2880_tnrdmd_lna_thrs_tbl_air** %6, align 8
  %15 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %15, i32 0, i32 1
  store %struct.cxd2880_tnrdmd_lna_thrs_tbl_air* %14, %struct.cxd2880_tnrdmd_lna_thrs_tbl_air** %16, align 8
  %17 = load %struct.cxd2880_tnrdmd_lna_thrs_tbl_cable*, %struct.cxd2880_tnrdmd_lna_thrs_tbl_cable** %7, align 8
  %18 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %18, i32 0, i32 0
  store %struct.cxd2880_tnrdmd_lna_thrs_tbl_cable* %17, %struct.cxd2880_tnrdmd_lna_thrs_tbl_cable** %19, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
