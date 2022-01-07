; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_setup_iom2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_setup_iom2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_ch = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IOM_CTRL_ENA = common dso_local global i32 0, align 4
@IOM_P1_TXD = common dso_local global i32 0, align 4
@IOM_CTRL_RCV = common dso_local global i32 0, align 4
@FLG_DTMFSEND = common dso_local global i32 0, align 4
@IOM_CTRL_ALAW = common dso_local global i32 0, align 4
@ISAR_HIS_IOM2CFG = common dso_local global i32 0, align 4
@ISAR_HIS_IOM2REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isar_ch*)* @setup_iom2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_iom2(%struct.isar_ch* %0) #0 {
  %2 = alloca %struct.isar_ch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  store %struct.isar_ch* %0, %struct.isar_ch** %2, align 8
  %6 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %7 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SET_DPS(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @IOM_CTRL_ENA, align 4
  store i32 %10, i32* %4, align 4
  %11 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 20, i1 false)
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %13 = load i32, i32* @IOM_P1_TXD, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %19 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %28 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %62 [
    i32 128, label %31
    i32 130, label %42
    i32 133, label %42
    i32 131, label %43
    i32 129, label %43
    i32 132, label %47
  ]

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  %32 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %33 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 2
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %38 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 2
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 %40, i32* %41, align 4
  br label %62

42:                                               ; preds = %26, %26
  br label %62

43:                                               ; preds = %26, %26
  %44 = load i32, i32* @IOM_CTRL_RCV, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %26, %43
  %48 = load i32, i32* @FLG_DTMFSEND, align 4
  %49 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %50 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = call i32 @test_bit(i32 %48, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @IOM_CTRL_RCV, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load i32, i32* @IOM_CTRL_ALAW, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %26, %58, %42, %31
  %63 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %64 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @ISAR_HIS_IOM2CFG, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %4, align 4
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %71 = call i32 @send_mbox(i32 %65, i32 %68, i32 %69, i32 5, i32* %70)
  %72 = call i32 @udelay(i32 1000)
  %73 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %74 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @ISAR_HIS_IOM2REQ, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @send_mbox(i32 %75, i32 %78, i32 0, i32 0, i32* null)
  %80 = call i32 @udelay(i32 1000)
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @send_mbox(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
