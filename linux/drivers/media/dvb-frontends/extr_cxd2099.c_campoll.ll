; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_campoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_campoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@DVB_CA_EN50221_POLL_CAM_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"NO CAM\0A\00", align 1
@DVB_CA_EN50221_POLL_CAM_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd*)* @campoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @campoll(%struct.cxd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cxd* %0, %struct.cxd** %3, align 8
  %6 = load %struct.cxd*, %struct.cxd** %3, align 8
  %7 = call i32 @read_reg(%struct.cxd* %6, i32 4, i32* %4)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

11:                                               ; preds = %1
  %12 = load %struct.cxd*, %struct.cxd** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @write_reg(%struct.cxd* %12, i32 5, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 64
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.cxd*, %struct.cxd** %3, align 8
  %20 = getelementptr inbounds %struct.cxd, %struct.cxd* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.cxd*, %struct.cxd** %3, align 8
  %27 = getelementptr inbounds %struct.cxd, %struct.cxd* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %89

32:                                               ; preds = %28
  %33 = load %struct.cxd*, %struct.cxd** %3, align 8
  %34 = call i32 @read_reg(%struct.cxd* %33, i32 1, i32* %5)
  %35 = load i32, i32* %5, align 4
  %36 = and i32 2, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %32
  %39 = load %struct.cxd*, %struct.cxd** %3, align 8
  %40 = getelementptr inbounds %struct.cxd, %struct.cxd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %45 = load %struct.cxd*, %struct.cxd** %3, align 8
  %46 = getelementptr inbounds %struct.cxd, %struct.cxd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.cxd*, %struct.cxd** %3, align 8
  %50 = call i32 @write_regm(%struct.cxd* %49, i32 3, i32 8, i32 8)
  br label %51

51:                                               ; preds = %43, %38
  br label %70

52:                                               ; preds = %32
  %53 = load %struct.cxd*, %struct.cxd** %3, align 8
  %54 = getelementptr inbounds %struct.cxd, %struct.cxd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.cxd*, %struct.cxd** %3, align 8
  %59 = getelementptr inbounds %struct.cxd, %struct.cxd* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.cxd*, %struct.cxd** %3, align 8
  %61 = call i32 @write_regm(%struct.cxd* %60, i32 3, i32 0, i32 8)
  %62 = load %struct.cxd*, %struct.cxd** %3, align 8
  %63 = getelementptr inbounds %struct.cxd, %struct.cxd* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.cxd*, %struct.cxd** %3, align 8
  %68 = getelementptr inbounds %struct.cxd, %struct.cxd* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %57, %52
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.cxd*, %struct.cxd** %3, align 8
  %76 = getelementptr inbounds %struct.cxd, %struct.cxd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.cxd*, %struct.cxd** %3, align 8
  %82 = getelementptr inbounds %struct.cxd, %struct.cxd* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_READY, align 4
  %84 = load %struct.cxd*, %struct.cxd** %3, align 8
  %85 = getelementptr inbounds %struct.cxd, %struct.cxd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %74, %70
  br label %89

89:                                               ; preds = %88, %28
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %10
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @read_reg(%struct.cxd*, i32, i32*) #1

declare dso_local i32 @write_reg(%struct.cxd*, i32, i32) #1

declare dso_local i32 @write_regm(%struct.cxd*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
