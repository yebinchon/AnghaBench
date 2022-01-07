; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_check_mkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_check_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.ib_smp = type { i64, i32 }

@jiffies = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ibport*, %struct.ib_smp*, i32)* @check_mkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mkey(%struct.qib_ibport* %0, %struct.ib_smp* %1, i32 %2) #0 {
  %4 = alloca %struct.qib_ibport*, align 8
  %5 = alloca %struct.ib_smp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_ibport* %0, %struct.qib_ibport** %4, align 8
  store %struct.ib_smp* %1, %struct.ib_smp** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %10 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i32, i32* @jiffies, align 4
  %16 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %17 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @time_after_eq(i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %24 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %27 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %14, %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %36 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %42 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %46 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40, %34, %29
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %55 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %61 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 130
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %66 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %71 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %78

74:                                               ; preds = %69, %64, %59
  %75 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %76 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %69, %53, %50
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %134, label %81

81:                                               ; preds = %78
  %82 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %83 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %133 [
    i32 130, label %85
    i32 129, label %93
    i32 128, label %93
  ]

85:                                               ; preds = %81
  %86 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %87 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %133

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %81, %81, %92
  %94 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %95 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 65535
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %101 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %107 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %105
  %112 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %113 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = load i32, i32* @jiffies, align 4
  %119 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %120 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HZ, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %118, %124
  %126 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %127 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %129

129:                                              ; preds = %117, %111, %105
  %130 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %131 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %132 = call i32 @qib_bad_mkey(%struct.qib_ibport* %130, %struct.ib_smp* %131)
  store i32 1, i32* %8, align 4
  br label %133

133:                                              ; preds = %129, %81, %91
  br label %134

134:                                              ; preds = %133, %78
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i32 @qib_bad_mkey(%struct.qib_ibport*, %struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
