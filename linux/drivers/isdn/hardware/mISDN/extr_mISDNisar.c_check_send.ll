; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_check_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_check_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_hw = type { i32 }
%struct.isar_ch = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"%s: rdm %x\0A\00", align 1
@BSTAT_RDM1 = common dso_local global i32 0, align 4
@FLG_ACTIVE = common dso_local global i32 0, align 4
@BSTAT_RDM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isar_hw*, i32)* @check_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_send(%struct.isar_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.isar_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isar_ch*, align 8
  store %struct.isar_hw* %0, %struct.isar_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %7 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BSTAT_RDM1, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %17 = call %struct.isar_ch* @sel_bch_isar(%struct.isar_hw* %16, i32 1)
  store %struct.isar_ch* %17, %struct.isar_ch** %5, align 8
  %18 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %19 = icmp ne %struct.isar_ch* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load i32, i32* @FLG_ACTIVE, align 4
  %22 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %23 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = call i64 @test_bit(i32 %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %20
  %28 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %29 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %35 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %41 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %47 = call i32 @isar_fill_fifo(%struct.isar_ch* %46)
  br label %51

48:                                               ; preds = %33, %27
  %49 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %50 = call i32 @send_next(%struct.isar_ch* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %20, %15
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @BSTAT_RDM2, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %53
  %59 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %60 = call %struct.isar_ch* @sel_bch_isar(%struct.isar_hw* %59, i32 2)
  store %struct.isar_ch* %60, %struct.isar_ch** %5, align 8
  %61 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %62 = icmp ne %struct.isar_ch* %61, null
  br i1 %62, label %63, label %95

63:                                               ; preds = %58
  %64 = load i32, i32* @FLG_ACTIVE, align 4
  %65 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %66 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = call i64 @test_bit(i32 %64, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %63
  %71 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %72 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = icmp ne %struct.TYPE_3__* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %78 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %84 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %82, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %90 = call i32 @isar_fill_fifo(%struct.isar_ch* %89)
  br label %94

91:                                               ; preds = %76, %70
  %92 = load %struct.isar_ch*, %struct.isar_ch** %5, align 8
  %93 = call i32 @send_next(%struct.isar_ch* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %63, %58
  br label %96

96:                                               ; preds = %95, %53
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.isar_ch* @sel_bch_isar(%struct.isar_hw*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @isar_fill_fifo(%struct.isar_ch*) #1

declare dso_local i32 @send_next(%struct.isar_ch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
