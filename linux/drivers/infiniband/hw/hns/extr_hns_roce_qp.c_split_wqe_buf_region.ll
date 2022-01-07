; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_split_wqe_buf_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_split_wqe_buf_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.hns_roce_qp = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hns_roce_buf_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_qp*, %struct.hns_roce_buf_region*, i32, i32)* @split_wqe_buf_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_wqe_buf_region(%struct.hns_roce_dev* %0, %struct.hns_roce_qp* %1, %struct.hns_roce_buf_region* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca %struct.hns_roce_qp*, align 8
  %9 = alloca %struct.hns_roce_buf_region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %7, align 8
  store %struct.hns_roce_qp* %1, %struct.hns_roce_qp** %8, align 8
  store %struct.hns_roce_buf_region* %2, %struct.hns_roce_buf_region** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %20 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %5
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %165

28:                                               ; preds = %23
  %29 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %30 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %41 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %45 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %43, %47
  store i32 %48, i32* %15, align 4
  br label %59

49:                                               ; preds = %36
  %50 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %51 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %55 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %53, %57
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %49, %39
  %60 = load i32, i32* %15, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @DIV_ROUND_UP(i32 %67, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %70, i64 %72
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %75 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %79 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sdiv i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @hns_roce_init_buf_region(%struct.hns_roce_buf_region* %73, i32 %77, i32 %83, i32 %84)
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %66, %62, %59
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %130

91:                                               ; preds = %88
  %92 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %93 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %97 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %95, %99
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %91
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %103
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @DIV_ROUND_UP(i32 %108, i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %9, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %111, i64 %113
  %115 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %116 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %120 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sdiv i32 %122, %123
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @hns_roce_init_buf_region(%struct.hns_roce_buf_region* %114, i32 %118, i32 %124, i32 %125)
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %107, %103, %91
  br label %130

130:                                              ; preds = %129, %88
  %131 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %132 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %135 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %133, %137
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %130
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @DIV_ROUND_UP(i32 %142, i32 %143)
  store i32 %144, i32* %16, align 4
  %145 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %9, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %145, i64 %147
  %149 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %150 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %154 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %12, align 4
  %158 = sdiv i32 %156, %157
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @hns_roce_init_buf_region(%struct.hns_roce_buf_region* %148, i32 %152, i32 %158, i32 %159)
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %141, %130
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %163, %26
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @hns_roce_init_buf_region(%struct.hns_roce_buf_region*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
