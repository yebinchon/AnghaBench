; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i32, i32, %struct.TYPE_2__, %struct.hns_roce_v2_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hns_roce_v2_priv = type { i32, i32 }

@TSQ_LINK_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"TSQ init failed, ret = %d.\0A\00", align 1
@TPQ_LINK_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TPQ init failed, ret = %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"QPC Timer get failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"CQC Timer get failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_init(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_v2_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 4
  %11 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %10, align 8
  store %struct.hns_roce_v2_priv* %11, %struct.hns_roce_v2_priv** %4, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %13 = load i32, i32* @TSQ_LINK_TABLE, align 4
  %14 = call i32 @hns_roce_init_link_table(%struct.hns_roce_dev* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %127

24:                                               ; preds = %1
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %26 = load i32, i32* @TPQ_LINK_TABLE, align 4
  %27 = call i32 @hns_roce_init_link_table(%struct.hns_roce_dev* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %121

36:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %40 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %46 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %45, i32* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %102

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %37

61:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %83, %61
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %65 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %62
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %71 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %72 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %70, i32* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %87

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %62

86:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %127

87:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %98, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %94 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %95 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %94, i32 0, i32 1
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %93, i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %88

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %52
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %113, %102
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %109 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %110 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %108, i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %103

116:                                              ; preds = %103
  %117 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %118 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %119 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %118, i32 0, i32 1
  %120 = call i32 @hns_roce_free_link_table(%struct.hns_roce_dev* %117, i32* %119)
  br label %121

121:                                              ; preds = %116, %30
  %122 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %123 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %124 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %123, i32 0, i32 0
  %125 = call i32 @hns_roce_free_link_table(%struct.hns_roce_dev* %122, i32* %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %121, %86, %17
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @hns_roce_init_link_table(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @hns_roce_table_get(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @hns_roce_free_link_table(%struct.hns_roce_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
