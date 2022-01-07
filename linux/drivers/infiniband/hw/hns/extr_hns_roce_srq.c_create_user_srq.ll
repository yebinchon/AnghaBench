; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_create_user_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_create_user_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_srq = type { i8*, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hns_roce_ib_create_srq = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ib_umem_get error for index queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"hns_roce_mtt_init error for idx que\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"hns_roce_ib_umem_write_mtt error for idx que\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_srq*, %struct.ib_udata*, i32)* @create_user_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_user_srq(%struct.hns_roce_srq* %0, %struct.ib_udata* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_srq*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_ib_create_srq, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hns_roce_srq* %0, %struct.hns_roce_srq** %5, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %14 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.hns_roce_dev* @to_hr_dev(i32 %16)
  store %struct.hns_roce_dev* %17, %struct.hns_roce_dev** %8, align 8
  %18 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %19 = call i64 @ib_copy_from_udata(%struct.hns_roce_ib_create_srq* %9, %struct.ib_udata* %18, i32 8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %174

24:                                               ; preds = %3
  %25 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %26 = getelementptr inbounds %struct.hns_roce_ib_create_srq, %struct.hns_roce_ib_create_srq* %9, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @ib_umem_get(%struct.ib_udata* %25, i32 %27, i32 %28, i32 0, i32 0)
  %30 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %31 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %33 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %39 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %4, align 4
  br label %174

42:                                               ; preds = %24
  %43 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %44 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @ib_umem_page_count(i8* %45)
  %47 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %48 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = add nsw i32 %46, %51
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %55 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = sdiv i32 %53, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @PAGE_SHIFT, align 4
  %61 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %62 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* %10, align 4
  %66 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %70 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %69, i32 0, i32 1
  %71 = call i32 @hns_roce_mtt_init(%struct.hns_roce_dev* %66, i32 %67, i32 %68, i32* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %42
  br label %168

75:                                               ; preds = %42
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %77 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %78 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %77, i32 0, i32 1
  %79 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %80 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @hns_roce_ib_umem_write_mtt(%struct.hns_roce_dev* %76, i32* %78, i8* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %163

86:                                               ; preds = %75
  %87 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %88 = getelementptr inbounds %struct.hns_roce_ib_create_srq, %struct.hns_roce_ib_create_srq* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %91 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @ib_umem_get(%struct.ib_udata* %87, i32 %89, i32 %93, i32 0, i32 0)
  %95 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %96 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i8* %94, i8** %97, align 8
  %98 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %99 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @IS_ERR(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %86
  %105 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %106 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %110 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %12, align 4
  br label %163

114:                                              ; preds = %86
  %115 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %116 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %117 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @ib_umem_page_count(i8* %119)
  %121 = load i32, i32* @PAGE_SHIFT, align 4
  %122 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %123 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = call i32 @hns_roce_mtt_init(%struct.hns_roce_dev* %115, i32 %120, i32 %121, i32* %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %114
  %129 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %130 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %157

133:                                              ; preds = %114
  %134 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %135 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %136 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %139 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @hns_roce_ib_umem_write_mtt(%struct.hns_roce_dev* %134, i32* %137, i8* %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %133
  %146 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %147 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @dev_err(i32 %148, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %151

150:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %174

151:                                              ; preds = %145
  %152 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %153 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %154 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %152, i32* %155)
  br label %157

157:                                              ; preds = %151, %128
  %158 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %159 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @ib_umem_release(i8* %161)
  br label %163

163:                                              ; preds = %157, %104, %85
  %164 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %165 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %166 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %165, i32 0, i32 1
  %167 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %164, i32* %166)
  br label %168

168:                                              ; preds = %163, %74
  %169 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %170 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @ib_umem_release(i8* %171)
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %168, %150, %37, %21
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local i64 @ib_copy_from_udata(%struct.hns_roce_ib_create_srq*, %struct.ib_udata*, i32) #1

declare dso_local i8* @ib_umem_get(%struct.ib_udata*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @ib_umem_page_count(i8*) #1

declare dso_local i32 @hns_roce_mtt_init(%struct.hns_roce_dev*, i32, i32, i32*) #1

declare dso_local i32 @hns_roce_ib_umem_write_mtt(%struct.hns_roce_dev*, i32*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @ib_umem_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
