; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_write_mtt_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_write_mtt_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.hns_roce_hem_table, %struct.hns_roce_hem_table, %struct.hns_roce_hem_table, %struct.hns_roce_hem_table }
%struct.hns_roce_hem_table = type { i32 }
%struct.hns_roce_mtt = type { i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HNS_ROCE_MTT_ENTRY_PER_SEG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_mtt*, i32, i32, i32*)* @hns_roce_write_mtt_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_write_mtt_chunk(%struct.hns_roce_dev* %0, %struct.hns_roce_mtt* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca %struct.hns_roce_mtt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hns_roce_hem_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %7, align 8
  store %struct.hns_roce_mtt* %1, %struct.hns_roce_mtt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %8, align 8
  %18 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %64 [
    i32 128, label %20
    i32 131, label %31
    i32 129, label %42
    i32 130, label %53
  ]

20:                                               ; preds = %5
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %22 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store %struct.hns_roce_hem_table* %23, %struct.hns_roce_hem_table** %12, align 8
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = add nsw i32 %27, %28
  %30 = shl i32 1, %29
  store i32 %30, i32* %15, align 4
  br label %67

31:                                               ; preds = %5
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %33 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store %struct.hns_roce_hem_table* %34, %struct.hns_roce_hem_table** %12, align 8
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %36 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = add nsw i32 %38, %39
  %41 = shl i32 1, %40
  store i32 %41, i32* %15, align 4
  br label %67

42:                                               ; preds = %5
  %43 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %44 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store %struct.hns_roce_hem_table* %45, %struct.hns_roce_hem_table** %12, align 8
  %46 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %47 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = add nsw i32 %49, %50
  %52 = shl i32 1, %51
  store i32 %52, i32* %15, align 4
  br label %67

53:                                               ; preds = %5
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %55 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store %struct.hns_roce_hem_table* %56, %struct.hns_roce_hem_table** %12, align 8
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %58 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = add nsw i32 %60, %61
  %63 = shl i32 1, %62
  store i32 %63, i32* %15, align 4
  br label %67

64:                                               ; preds = %5
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %153

67:                                               ; preds = %53, %42, %31, %20
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 4
  %73 = udiv i64 %69, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 4
  %82 = udiv i64 %78, %81
  %83 = icmp ne i64 %73, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %67
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %153

87:                                               ; preds = %67
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @HNS_ROCE_MTT_ENTRY_PER_SEG, align 4
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %153

96:                                               ; preds = %87
  %97 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %98 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %12, align 8
  %99 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %8, align 8
  %100 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @HNS_ROCE_MTT_ENTRY_PER_SEG, align 4
  %104 = sdiv i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %101, %105
  %107 = call i32* @hns_roce_table_find(%struct.hns_roce_dev* %97, %struct.hns_roce_hem_table* %98, i64 %106, i32* %13)
  store i32* %107, i32** %14, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %96
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %153

113:                                              ; preds = %96
  store i32 0, i32* %16, align 4
  br label %114

114:                                              ; preds = %149, %113
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %152

118:                                              ; preds = %114
  %119 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %120 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %137, label %124

124:                                              ; preds = %118
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %131 = ashr i32 %129, %130
  %132 = call i32 @cpu_to_le64(i32 %131)
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  br label %148

137:                                              ; preds = %118
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @cpu_to_le64(i32 %142)
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %124
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %114

152:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %152, %110, %93, %84, %64
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32* @hns_roce_table_find(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
