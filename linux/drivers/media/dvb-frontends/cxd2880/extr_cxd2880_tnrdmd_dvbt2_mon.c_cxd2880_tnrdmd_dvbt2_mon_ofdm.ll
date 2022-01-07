; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_ofdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_ofdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_3__*, %struct.cxd2880_tnrdmd* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)* }
%struct.cxd2880_dvbt2_ofdm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_dvbt2_ofdm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca %struct.cxd2880_dvbt2_ofdm*, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store %struct.cxd2880_dvbt2_ofdm* %1, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %12 = icmp ne %struct.cxd2880_tnrdmd* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %15 = icmp ne %struct.cxd2880_dvbt2_ofdm* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %161

19:                                               ; preds = %13
  %20 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %161

28:                                               ; preds = %19
  %29 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %30 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %161

37:                                               ; preds = %28
  %38 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %39 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %161

44:                                               ; preds = %37
  %45 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %46 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd* %45, i32* %7, i32* %8, i32* %9)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %51 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %161

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 6
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %58 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %57)
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %62 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %68 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %67, i32 0, i32 4
  %69 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %68, align 8
  %70 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %71 = call i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(%struct.cxd2880_tnrdmd* %69, %struct.cxd2880_dvbt2_ofdm* %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %66, %56
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %161

74:                                               ; preds = %53
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %76 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %78, align 8
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %84 = call i32 %79(%struct.TYPE_3__* %82, i32 %83, i32 0, i32 11)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %89 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  br label %161

91:                                               ; preds = %74
  %92 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %93 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)** %95, align 8
  %97 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %98 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %97, i32 0, i32 3
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %101 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %102 = call i32 %96(%struct.TYPE_3__* %99, i32 %100, i32 29, i32* %101, i32 20)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %91
  %106 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %107 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %3, align 4
  br label %161

109:                                              ; preds = %91
  %110 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %111 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %110)
  %112 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %113 = load i32, i32* %112, align 16
  %114 = and i32 %113, 32
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %119 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, %struct.cxd2880_dvbt2_ofdm* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %121 = load i32, i32* %120, align 16
  %122 = and i32 %121, 16
  %123 = ashr i32 %122, 4
  %124 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %125 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, %struct.cxd2880_dvbt2_ofdm* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = and i32 %127, 7
  %129 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %130 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, %struct.cxd2880_dvbt2_ofdm* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 112
  %134 = ashr i32 %133, 4
  %135 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %136 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, %struct.cxd2880_dvbt2_ofdm* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 7
  %140 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %141 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, %struct.cxd2880_dvbt2_ofdm* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, 16
  %145 = ashr i32 %144, 4
  %146 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %147 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, %struct.cxd2880_dvbt2_ofdm* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 15
  %151 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %152 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, %struct.cxd2880_dvbt2_ofdm* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 4
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %157 = load i32, i32* %156, align 16
  %158 = or i32 %155, %157
  %159 = load %struct.cxd2880_dvbt2_ofdm*, %struct.cxd2880_dvbt2_ofdm** %5, align 8
  %160 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, %struct.cxd2880_dvbt2_ofdm* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %109, %105, %87, %72, %49, %42, %34, %25, %16
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd*, i32*, i32*, i32*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
