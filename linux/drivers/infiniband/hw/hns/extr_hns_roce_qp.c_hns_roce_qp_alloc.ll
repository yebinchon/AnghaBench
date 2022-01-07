; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_qp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_qp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.device*, %struct.hns_roce_qp_table }
%struct.TYPE_2__ = type { i64, i64 }
%struct.device = type { i32 }
%struct.hns_roce_qp_table = type { i32, i32, i32, i32 }
%struct.hns_roce_qp = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"QPC table get failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"IRRL table get failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"TRRL table get failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SCC CTX table get failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i64, %struct.hns_roce_qp*)* @hns_roce_qp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_qp_alloc(%struct.hns_roce_dev* %0, i64 %1, %struct.hns_roce_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hns_roce_qp*, align 8
  %8 = alloca %struct.hns_roce_qp_table*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hns_roce_qp* %2, %struct.hns_roce_qp** %7, align 8
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 2
  store %struct.hns_roce_qp_table* %12, %struct.hns_roce_qp_table** %8, align 8
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %147

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %24 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %26 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %8, align 8
  %27 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %26, i32 0, i32 0
  %28 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %29 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %25, i32* %27, i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %145

37:                                               ; preds = %21
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %39 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %8, align 8
  %40 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %39, i32 0, i32 1
  %41 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %42 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %38, i32* %40, i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %9, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %137

50:                                               ; preds = %37
  %51 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %52 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %58 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %8, align 8
  %59 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %58, i32 0, i32 2
  %60 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %61 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %57, i32* %59, i64 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.device*, %struct.device** %9, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %129

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %72 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %78 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %8, align 8
  %79 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %78, i32 0, i32 3
  %80 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %81 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %77, i32* %79, i64 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.device*, %struct.device** %9, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %114

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %70
  %91 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %94 = call i32 @hns_roce_gsi_qp_alloc(%struct.hns_roce_dev* %91, i64 %92, %struct.hns_roce_qp* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %99

98:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %147

99:                                               ; preds = %97
  %100 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %101 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %107 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %8, align 8
  %108 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %107, i32 0, i32 3
  %109 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %110 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %106, i32* %108, i64 %111)
  br label %113

113:                                              ; preds = %105, %99
  br label %114

114:                                              ; preds = %113, %86
  %115 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %116 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %122 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %8, align 8
  %123 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %122, i32 0, i32 2
  %124 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %125 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %121, i32* %123, i64 %126)
  br label %128

128:                                              ; preds = %120, %114
  br label %129

129:                                              ; preds = %128, %66
  %130 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %131 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %8, align 8
  %132 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %131, i32 0, i32 1
  %133 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %134 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %130, i32* %132, i64 %135)
  br label %137

137:                                              ; preds = %129, %47
  %138 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %139 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %8, align 8
  %140 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %139, i32 0, i32 0
  %141 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %142 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %138, i32* %140, i64 %143)
  br label %145

145:                                              ; preds = %137, %34
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %98, %18
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @hns_roce_table_get(%struct.hns_roce_dev*, i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_gsi_qp_alloc(%struct.hns_roce_dev*, i64, %struct.hns_roce_qp*) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
