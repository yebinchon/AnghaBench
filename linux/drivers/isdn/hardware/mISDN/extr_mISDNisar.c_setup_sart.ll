; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_setup_sart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_setup_sart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_ch = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ISAR_HIS_SARTCFG = common dso_local global i32 0, align 4
@SMODE_DISABLE = common dso_local global i32 0, align 4
@SMODE_BINARY = common dso_local global i32 0, align 4
@SMODE_HDLC = common dso_local global i32 0, align 4
@SMODE_V14 = common dso_local global i32 0, align 4
@SCTRL_HDMC_BOTH = common dso_local global i32 0, align 4
@S_P1_CHS_8 = common dso_local global i32 0, align 4
@S_P2_BFT_DEF = common dso_local global i32 0, align 4
@ISAR_HIS_BSTREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isar_ch*)* @setup_sart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sart(%struct.isar_ch* %0) #0 {
  %2 = alloca %struct.isar_ch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.isar_ch* %0, %struct.isar_ch** %2, align 8
  %6 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %7 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SET_DPS(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %12 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %61 [
    i32 128, label %15
    i32 130, label %24
    i32 132, label %24
    i32 133, label %34
    i32 129, label %34
    i32 131, label %44
  ]

15:                                               ; preds = %1
  %16 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %17 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ISAR_HIS_SARTCFG, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SMODE_DISABLE, align 4
  %23 = call i32 @send_mbox(i32 %18, i32 %21, i32 %22, i32 0, i32* null)
  br label %61

24:                                               ; preds = %1, %1
  %25 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %26 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ISAR_HIS_SARTCFG, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SMODE_BINARY, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %33 = call i32 @send_mbox(i32 %27, i32 %30, i32 %31, i32 2, i32* %32)
  br label %61

34:                                               ; preds = %1, %1
  %35 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %36 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @ISAR_HIS_SARTCFG, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SMODE_HDLC, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %43 = call i32 @send_mbox(i32 %37, i32 %40, i32 %41, i32 1, i32* %42)
  br label %61

44:                                               ; preds = %1
  %45 = load i32, i32* @SMODE_V14, align 4
  %46 = load i32, i32* @SCTRL_HDMC_BOTH, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @S_P1_CHS_8, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @S_P2_BFT_DEF, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %53 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @ISAR_HIS_SARTCFG, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %4, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %60 = call i32 @send_mbox(i32 %54, i32 %57, i32 %58, i32 2, i32* %59)
  br label %61

61:                                               ; preds = %1, %44, %34, %24, %15
  %62 = call i32 @udelay(i32 1000)
  %63 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %64 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @ISAR_HIS_BSTREQ, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @send_mbox(i32 %65, i32 %68, i32 0, i32 0, i32* null)
  %70 = call i32 @udelay(i32 1000)
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @send_mbox(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
