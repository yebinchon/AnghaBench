; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_DEVICE_PORT_ACTIVE_EVENT = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_ATOMIC = common dso_local global i32 0, align 4
@IB_ATOMIC_HCA = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_SRQ = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_FRMR = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@HNS_ROCE_FRMR_MAX_PA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*, %struct.ib_udata*)* @hns_roce_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_device_attr*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.hns_roce_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = call %struct.hns_roce_dev* @to_hr_dev(%struct.ib_device* %8)
  store %struct.hns_roce_dev* %9, %struct.hns_roce_dev** %7, align 8
  %10 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %11 = call i32 @memset(%struct.ib_device_attr* %10, i32 0, i32 112)
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 16
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %17 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %16, i32 0, i32 25
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_be64(i32 %20)
  %22 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %23 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %22, i32 0, i32 24
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %25 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %24, i32 0, i32 23
  store i64 -1, i64* %25, align 8
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %31 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %30, i32 0, i32 22
  store i32 %29, i32* %31, align 8
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %33 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %36 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %35, i32 0, i32 21
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %38 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %40, i32 0, i32 20
  store i32 %39, i32* %41, align 8
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %43 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %45, i32 0, i32 19
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %48 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %52 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %51, i32 0, i32 18
  store i32 %50, i32* %52, align 8
  %53 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %54 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %58 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %57, i32 0, i32 17
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @IB_DEVICE_PORT_ACTIVE_EVENT, align 4
  %60 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %63 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %65 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %69 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %68, i32 0, i32 16
  store i32 %67, i32* %69, align 8
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %71 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %74, i32 0, i32 15
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %77 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %79 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %83 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %82, i32 0, i32 14
  store i32 %81, i32* %83, align 8
  %84 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %85 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %89 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %88, i32 0, i32 13
  store i32 %87, i32* %89, align 4
  %90 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %91 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %95 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 8
  %96 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %97 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %101 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %100, i32 0, i32 11
  store i32 %99, i32* %101, align 4
  %102 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %103 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %107 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 8
  %108 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %109 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %113 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 4
  %114 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %115 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @HNS_ROCE_CAP_FLAG_ATOMIC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %3
  %122 = load i32, i32* @IB_ATOMIC_HCA, align 4
  br label %125

123:                                              ; preds = %3
  %124 = load i32, i32* @IB_ATOMIC_NONE, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %128 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  %129 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %130 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  %131 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %132 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %136 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 4
  %137 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %138 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @HNS_ROCE_CAP_FLAG_SRQ, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %125
  %145 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %146 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %150 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %152 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %156 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %158 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %162 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %144, %125
  %164 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %165 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @HNS_ROCE_CAP_FLAG_FRMR, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %163
  %172 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %173 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %174 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i32, i32* @HNS_ROCE_FRMR_MAX_PA, align 4
  %178 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %179 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %171, %163
  ret i32 0
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
