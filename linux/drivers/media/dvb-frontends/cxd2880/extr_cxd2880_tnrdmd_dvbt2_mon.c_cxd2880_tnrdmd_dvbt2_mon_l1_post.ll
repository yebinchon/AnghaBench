; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_l1_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_l1_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)* }
%struct.cxd2880_dvbt2_l1post = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_post(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_dvbt2_l1post* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca %struct.cxd2880_dvbt2_l1post*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store %struct.cxd2880_dvbt2_l1post* %1, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %8 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %9 = icmp ne %struct.cxd2880_tnrdmd* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %12 = icmp ne %struct.cxd2880_dvbt2_l1post* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %165

16:                                               ; preds = %10
  %17 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %165

25:                                               ; preds = %16
  %26 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %27 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %165

34:                                               ; preds = %25
  %35 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %36 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %165

43:                                               ; preds = %34
  %44 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %45 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %47, align 8
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %53 = call i32 %48(%struct.TYPE_3__* %51, i32 %52, i32 0, i32 11)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %165

58:                                               ; preds = %43
  %59 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %60 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)** %62, align 8
  %64 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %65 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %69 = call i32 %63(%struct.TYPE_3__* %66, i32 %67, i32 134, i32* %68, i32 64)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %165

74:                                               ; preds = %58
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %165

82:                                               ; preds = %74
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 127
  %86 = shl i32 %85, 8
  %87 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %88 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %92 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %98 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  %100 = load i32, i32* %99, align 16
  %101 = and i32 %100, 15
  %102 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %103 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %107 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 7
  %111 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %112 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 7
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 24
  %116 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %117 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 8
  %119 = load i32, i32* %118, align 16
  %120 = shl i32 %119, 16
  %121 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %122 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 9
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  %128 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %129 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 10
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %135 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 11
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 15
  %141 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %142 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 12
  %144 = load i32, i32* %143, align 16
  %145 = shl i32 %144, 16
  %146 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %147 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 4
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 13
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  %151 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %152 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 14
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %158 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 15
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.cxd2880_dvbt2_l1post*, %struct.cxd2880_dvbt2_l1post** %5, align 8
  %164 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %163, i32 0, i32 8
  store i32 %162, i32* %164, align 4
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %82, %79, %72, %56, %40, %31, %22, %13
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
