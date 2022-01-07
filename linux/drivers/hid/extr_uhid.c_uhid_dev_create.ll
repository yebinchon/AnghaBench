; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_device = type { i32 }
%struct.uhid_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.uhid_create_req }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uhid_create_req = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HID_MAX_DESCRIPTOR_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhid_device*, %struct.uhid_event*)* @uhid_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_dev_create(%struct.uhid_device* %0, %struct.uhid_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uhid_device*, align 8
  %5 = alloca %struct.uhid_event*, align 8
  %6 = alloca %struct.uhid_create_req, align 8
  store %struct.uhid_device* %0, %struct.uhid_device** %4, align 8
  store %struct.uhid_event* %1, %struct.uhid_event** %5, align 8
  %7 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %8 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = bitcast %struct.uhid_create_req* %6 to i8*
  %11 = bitcast %struct.uhid_create_req* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 48, i1 false)
  %12 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HID_MAX_DESCRIPTOR_SIZE, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %101

23:                                               ; preds = %15
  %24 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %25 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @copy_from_user(i32* %27, i32 %29, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %101

37:                                               ; preds = %23
  %38 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %39 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32 %42, i32 %44, i32 4)
  %46 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %47 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memcpy(i32 %50, i32 %52, i32 4)
  %54 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %55 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32 %58, i32 %60, i32 4)
  %62 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %65 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i64 %63, i64* %67, align 8
  %68 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %71 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  store i32 %69, i32* %73, align 8
  %74 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %77 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  store i32 %75, i32* %79, align 4
  %80 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %83 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  store i32 %81, i32* %85, align 8
  %86 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %89 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 4
  %92 = getelementptr inbounds %struct.uhid_create_req, %struct.uhid_create_req* %6, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %95 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 8
  %98 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %99 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %100 = call i32 @uhid_dev_create2(%struct.uhid_device* %98, %struct.uhid_event* %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %37, %34, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @copy_from_user(i32*, i32, i64) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @uhid_dev_create2(%struct.uhid_device*, %struct.uhid_event*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
