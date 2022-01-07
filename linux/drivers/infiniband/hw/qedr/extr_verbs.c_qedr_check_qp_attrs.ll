; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_check_qp_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_check_qp_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.qedr_dev = type { %struct.qedr_device_attr }
%struct.qedr_device_attr = type { i64, i64, i64 }
%struct.ib_qp_init_attr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.ib_udata = type { i32 }

@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@QEDR_MSG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"create qp: unsupported qp type=0x%x requested\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"create qp: cannot create a SQ with %d elements (max_send_wr=0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"create qp: unsupported inline data size=0x%x requested (max_inline=0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"create qp: unsupported send_sge=0x%x requested (max_send_sge=0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"create qp: unsupported recv_sge=0x%x requested (max_recv_sge=0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"create qp: userspace can't create special QPs of type=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.qedr_dev*, %struct.ib_qp_init_attr*, %struct.ib_udata*)* @qedr_check_qp_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_check_qp_attrs(%struct.ib_pd* %0, %struct.qedr_dev* %1, %struct.ib_qp_init_attr* %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.qedr_device_attr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store %struct.qedr_dev* %1, %struct.qedr_dev** %7, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %8, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %11 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %12 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %11, i32 0, i32 0
  store %struct.qedr_device_attr* %12, %struct.qedr_device_attr** %10, align 8
  %13 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %14 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_QPT_RC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IB_QPT_GSI, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %26 = load i32, i32* @QEDR_MSG_QP, align 4
  %27 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %28 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @DP_DEBUG(%struct.qedr_dev* %25, i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %135

33:                                               ; preds = %18, %4
  %34 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %35 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %10, align 8
  %39 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %44 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %45 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %10, align 8
  %49 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.qedr_dev*, i8*, i64, ...) @DP_ERR(%struct.qedr_dev* %43, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %135

54:                                               ; preds = %33
  %55 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %56 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %10, align 8
  %60 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %54
  %64 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %65 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %66 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %10, align 8
  %70 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (%struct.qedr_dev*, i8*, i64, ...) @DP_ERR(%struct.qedr_dev* %64, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %135

75:                                               ; preds = %54
  %76 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %77 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %10, align 8
  %81 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %75
  %85 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %86 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %87 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %10, align 8
  %91 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (%struct.qedr_dev*, i8*, i64, ...) @DP_ERR(%struct.qedr_dev* %85, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %89, i64 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %135

96:                                               ; preds = %75
  %97 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %98 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %10, align 8
  %102 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %96
  %106 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %107 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %108 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %10, align 8
  %112 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (%struct.qedr_dev*, i8*, i64, ...) @DP_ERR(%struct.qedr_dev* %106, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %110, i64 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %135

117:                                              ; preds = %96
  %118 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %119 = icmp ne %struct.ib_udata* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %122 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IB_QPT_GSI, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %128 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %129 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (%struct.qedr_dev*, i8*, i64, ...) @DP_ERR(%struct.qedr_dev* %127, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i64 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %135

134:                                              ; preds = %120, %117
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %126, %105, %84, %63, %42, %24
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i64) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
