; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_3__, %struct.device* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i32, %struct.ib_mr, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNS_ROCE_MAX_MTPT_PBL_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c" MR len %lld err. MR is limited to 4G at most!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c" MR len %lld err. MR page num is limited to %lld!\0A\00", align 1
@MR_TYPE_MR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @hns_roce_reg_user_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.hns_roce_dev*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca %struct.hns_roce_mr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %22 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %23 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.hns_roce_dev* @to_hr_dev(i32 %24)
  store %struct.hns_roce_dev* %25, %struct.hns_roce_dev** %14, align 8
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 1
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %15, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.hns_roce_mr* @kmalloc(i32 20, i32 %29)
  store %struct.hns_roce_mr* %30, %struct.hns_roce_mr** %16, align 8
  %31 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %32 = icmp ne %struct.hns_roce_mr* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %6
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.ib_mr* @ERR_PTR(i32 %35)
  store %struct.ib_mr* %36, %struct.ib_mr** %7, align 8
  br label %173

37:                                               ; preds = %6
  %38 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @ib_umem_get(%struct.ib_udata* %38, i32 %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %44 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %46 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %52 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %18, align 4
  br label %168

55:                                               ; preds = %37
  %56 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %57 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ib_umem_page_count(i32 %58)
  store i32 %59, i32* %19, align 4
  %60 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %61 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* @HNS_ROCE_MAX_MTPT_PBL_NUM, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.device*, %struct.device** %15, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %18, align 4
  br label %163

75:                                               ; preds = %65
  br label %112

76:                                               ; preds = %55
  store i32 1, i32* %21, align 4
  %77 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %78 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PAGE_SHIFT, align 4
  %82 = add nsw i32 %80, %81
  %83 = shl i32 1, %82
  %84 = load i32, i32* @BA_BYTE_LEN, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %86

86:                                               ; preds = %97, %76
  %87 = load i32, i32* %20, align 4
  %88 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %89 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %21, align 4
  %96 = mul nsw i32 %95, %94
  store i32 %96, i32* %21, align 4
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %20, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %20, align 4
  br label %86

100:                                              ; preds = %86
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %21, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.device*, %struct.device** %15, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %21, align 4
  %108 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %18, align 4
  br label %163

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %75
  %113 = load i32, i32* @MR_TYPE_MR, align 4
  %114 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %115 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %117 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %118 = call %struct.TYPE_4__* @to_hr_pd(%struct.ib_pd* %117)
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %126 = call i32 @hns_roce_mr_alloc(%struct.hns_roce_dev* %116, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, %struct.hns_roce_mr* %125)
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %112
  br label %163

130:                                              ; preds = %112
  %131 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %132 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %133 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %134 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @hns_roce_ib_umem_write_mr(%struct.hns_roce_dev* %131, %struct.hns_roce_mr* %132, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %159

140:                                              ; preds = %130
  %141 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %142 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %143 = call i32 @hns_roce_mr_enable(%struct.hns_roce_dev* %141, %struct.hns_roce_mr* %142)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %159

147:                                              ; preds = %140
  %148 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %149 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %152 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 4
  %154 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %155 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %155, i32 0, i32 1
  store i32 %150, i32* %156, align 4
  %157 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %158 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %157, i32 0, i32 1
  store %struct.ib_mr* %158, %struct.ib_mr** %7, align 8
  br label %173

159:                                              ; preds = %146, %139
  %160 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %161 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %162 = call i32 @hns_roce_mr_free(%struct.hns_roce_dev* %160, %struct.hns_roce_mr* %161)
  br label %163

163:                                              ; preds = %159, %129, %104, %69
  %164 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %165 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ib_umem_release(i32 %166)
  br label %168

168:                                              ; preds = %163, %50
  %169 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %16, align 8
  %170 = call i32 @kfree(%struct.hns_roce_mr* %169)
  %171 = load i32, i32* %18, align 4
  %172 = call %struct.ib_mr* @ERR_PTR(i32 %171)
  store %struct.ib_mr* %172, %struct.ib_mr** %7, align 8
  br label %173

173:                                              ; preds = %168, %147, %33
  %174 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %174
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_mr* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @ib_umem_get(%struct.ib_udata*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ib_umem_page_count(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @hns_roce_mr_alloc(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, %struct.hns_roce_mr*) #1

declare dso_local %struct.TYPE_4__* @to_hr_pd(%struct.ib_pd*) #1

declare dso_local i32 @hns_roce_ib_umem_write_mr(%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32) #1

declare dso_local i32 @hns_roce_mr_enable(%struct.hns_roce_dev*, %struct.hns_roce_mr*) #1

declare dso_local i32 @hns_roce_mr_free(%struct.hns_roce_dev*, %struct.hns_roce_mr*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.hns_roce_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
