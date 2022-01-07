; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_check_mkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_check_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ibport*, %struct.ib_mad_hdr*, i32, i64, i32, i32*, i32)* @check_mkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mkey(%struct.hfi1_ibport* %0, %struct.ib_mad_hdr* %1, i32 %2, i64 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.hfi1_ibport*, align 8
  %9 = alloca %struct.ib_mad_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %8, align 8
  store %struct.ib_mad_hdr* %1, %struct.ib_mad_hdr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %18 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %7
  %23 = load i32, i32* @jiffies, align 4
  %24 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %25 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @time_after_eq(i32 %23, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %32 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %35 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %22, %7
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %44 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %50 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %42, %37
  store i32 1, i32* %15, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %61 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 130
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 129
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %9, align 8
  %77 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %80, label %84

80:                                               ; preds = %75, %70, %65
  %81 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %82 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %75, %59, %56
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %144, label %87

87:                                               ; preds = %84
  %88 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %9, align 8
  %89 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %143 [
    i32 130, label %91
    i32 129, label %99
    i32 128, label %99
  ]

91:                                               ; preds = %87
  %92 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %93 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %143

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %87, %87, %98
  %100 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %101 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 65535
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %107 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %113 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %111
  %118 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %119 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %117
  %124 = load i32, i32* @jiffies, align 4
  %125 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %126 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @HZ, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %124, %130
  %132 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %133 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  br label %135

135:                                              ; preds = %123, %117, %111
  %136 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %137 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %9, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @bad_mkey(%struct.hfi1_ibport* %136, %struct.ib_mad_hdr* %137, i64 %138, i32 %139, i32* %140, i32 %141)
  store i32 1, i32* %16, align 4
  br label %143

143:                                              ; preds = %135, %87, %97
  br label %144

144:                                              ; preds = %143, %84
  %145 = load i32, i32* %16, align 4
  ret i32 %145
}

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i32 @bad_mkey(%struct.hfi1_ibport*, %struct.ib_mad_hdr*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
