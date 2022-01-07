; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_nodeinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_nodeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_node_info = type { i64, i32, i32, i32, i64, i32, i32*, i32, i8*, i8*, i32, i32 }
%struct.qib_devdata = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@ib_qib_sys_image_guid = common dso_local global i32 0, align 4
@QIB_SRC_OUI_1 = common dso_local global i32 0, align 4
@QIB_SRC_OUI_2 = common dso_local global i32 0, align 4
@QIB_SRC_OUI_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_nodeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_nodeinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_node_info*, align 8
  %8 = alloca %struct.qib_devdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %13 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %12, i32 0, i32 2
  %14 = bitcast i32* %13 to %struct.ib_node_info*
  store %struct.ib_node_info* %14, %struct.ib_node_info** %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %15)
  store %struct.qib_devdata* %16, %struct.qib_devdata** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %20 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp uge i32 %24, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29, %23, %3
  %40 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %41 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %42 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %56

45:                                               ; preds = %29
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %55 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %45, %39
  %57 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %58 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  %59 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %60 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %59, i32 0, i32 2
  store i32 1, i32* %60, align 4
  %61 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %62 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %61, i32 0, i32 3
  store i32 1, i32* %62, align 8
  %63 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %64 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %67 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @ib_qib_sys_image_guid, align 4
  %69 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %70 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %72 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %77 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %79 = call i32 @qib_get_npkeys(%struct.qib_devdata* %78)
  %80 = call i8* @cpu_to_be16(i32 %79)
  %81 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %82 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %81, i32 0, i32 9
  store i8* %80, i8** %82, align 8
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %84 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_be16(i32 %85)
  %87 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %88 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %87, i32 0, i32 8
  store i8* %86, i8** %88, align 8
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %90 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %93 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @cpu_to_be32(i32 %98)
  %100 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %101 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %104 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @QIB_SRC_OUI_1, align 4
  %106 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %107 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* @QIB_SRC_OUI_2, align 4
  %111 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %112 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @QIB_SRC_OUI_3, align 4
  %116 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %117 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 %115, i32* %119, align 4
  %120 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %121 = call i32 @reply(%struct.ib_smp* %120)
  ret i32 %121
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @qib_get_npkeys(%struct.qib_devdata*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
