; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sysfs.c_get_perf_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sysfs.c_get_perf_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ib_device.0*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)* }
%struct.ib_device.0 = type opaque
%struct.ib_mad_hdr = type { i32 }
%struct.ib_mad = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i32 0, align 4
@IB_PMA_CLASS_PORT_INFO = common dso_local global i64 0, align 8
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i64, i8*, i32, i64)* @get_perf_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_perf_mad(%struct.ib_device* %0, i32 %1, i64 %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 32, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ib_device.0*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)*, i32 (%struct.ib_device.0*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)** %21, align 8
  %23 = icmp ne i32 (%struct.ib_device.0*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %112

27:                                               ; preds = %6
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ib_mad* @kzalloc(i32 32, i32 %28)
  store %struct.ib_mad* %29, %struct.ib_mad** %14, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.ib_mad* @kmalloc(i32 32, i32 %30)
  store %struct.ib_mad* %31, %struct.ib_mad** %15, align 8
  %32 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %33 = icmp ne %struct.ib_mad* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %36 = icmp ne %struct.ib_mad* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %18, align 4
  br label %106

40:                                               ; preds = %34
  %41 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %42 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @IB_MGMT_CLASS_PERF_MGMT, align 4
  %45 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %46 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %49 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @IB_MGMT_METHOD_GET, align 4
  %52 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %53 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %57 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @IB_PMA_CLASS_PORT_INFO, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %40
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %65 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 41
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %40
  %69 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %70 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.ib_device.0*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)*, i32 (%struct.ib_device.0*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)** %71, align 8
  %73 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %74 = bitcast %struct.ib_device* %73 to %struct.ib_device.0*
  %75 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %78 = bitcast %struct.ib_mad* %77 to %struct.ib_mad_hdr*
  %79 = load i64, i64* %16, align 8
  %80 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %81 = bitcast %struct.ib_mad* %80 to %struct.ib_mad_hdr*
  %82 = call i32 %72(%struct.ib_device.0* %74, i32 %75, i32 %76, i32* null, i32* null, %struct.ib_mad_hdr* %78, i64 %79, %struct.ib_mad_hdr* %81, i64* %16, i32* %17)
  %83 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %84 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %88 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %89 = or i32 %87, %88
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %68
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %18, align 4
  br label %106

94:                                               ; preds = %68
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %97 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @memcpy(i8* %95, i32* %101, i64 %102)
  %104 = load i64, i64* %13, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %94, %91, %37
  %107 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %108 = call i32 @kfree(%struct.ib_mad* %107)
  %109 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %110 = call i32 @kfree(%struct.ib_mad* %109)
  %111 = load i32, i32* %18, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %106, %24
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.ib_mad* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mad* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @kfree(%struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
