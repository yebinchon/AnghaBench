; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_cleanup_hem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_cleanup_hem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HEM_TYPE_CQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_cleanup_hem(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %3 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %13 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %9, i32* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %21, i32* %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %35 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %33, i32* %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %41 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %39, i32* %42)
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %45 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %51 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %52 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %51, i32 0, i32 4
  %53 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %38
  %55 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %56 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %62 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %63 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %62, i32 0, i32 3
  %64 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %61, i32* %63)
  br label %65

65:                                               ; preds = %60, %54
  %66 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %67 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %73 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %74 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %72, i32* %75)
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %79 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %85 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %86 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %84, i32* %87)
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %91 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %92 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %90, i32* %93)
  %95 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %96 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %97 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %95, i32* %98)
  %100 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %101 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %102 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %100, i32* %103)
  %105 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %106 = load i32, i32* @HEM_TYPE_CQE, align 4
  %107 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %89
  %110 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %111 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %112 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %110, i32* %113)
  br label %115

115:                                              ; preds = %109, %89
  %116 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %117 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %118 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %116, i32* %119)
  ret void
}

declare dso_local i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev*, i32*) #1

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
