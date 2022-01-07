; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ib_udata = type { i64, i64 }
%struct.siw_device = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@IB_DEVICE_ALLOW_USER_UNREG = common dso_local global i32 0, align 4
@SIW_MAX_SGE_PBL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SIW_VENDOR_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.siw_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = call %struct.siw_device* @to_siw_dev(%struct.ib_device* %9)
  store %struct.siw_device* %10, %struct.siw_device** %8, align 8
  %11 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %12 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %17 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %164

23:                                               ; preds = %15
  %24 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %25 = call i32 @memset(%struct.ib_device_attr* %24, i32 0, i32 112)
  %26 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %26, i32 0, i32 24
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %29 = load i32, i32* @IB_DEVICE_ALLOW_USER_UNREG, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %34 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %37, i32 0, i32 23
  store i32 %36, i32* %38, align 4
  %39 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %40 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %43, i32 0, i32 22
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @SIW_MAX_SGE_PBL, align 4
  %46 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %47 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %46, i32 0, i32 21
  store i32 %45, i32* %47, align 4
  %48 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %49 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %52, i32 0, i32 20
  store i32 %51, i32* %53, align 8
  %54 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %55 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %59 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %58, i32 0, i32 19
  store i32 %57, i32* %59, align 4
  %60 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %61 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %65 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %64, i32 0, i32 18
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %66, i32 0, i32 1
  store i64 -1, i64* %67, align 8
  %68 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %69 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %72, i32 0, i32 17
  store i32 %71, i32* %73, align 4
  %74 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %75 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %79 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %81 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %85 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %87 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %90, i32 0, i32 16
  store i32 %89, i32* %91, align 8
  %92 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %93 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %97 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %96, i32 0, i32 15
  store i32 %95, i32* %97, align 4
  %98 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %99 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %103 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %102, i32 0, i32 14
  store i32 %101, i32* %103, align 8
  %104 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %105 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %109 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %107, %111
  %113 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %114 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %116 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %120 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %119, i32 0, i32 13
  store i32 %118, i32* %120, align 4
  %121 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %122 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %125, i32 0, i32 12
  store i32 %124, i32* %126, align 8
  %127 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %128 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %131, i32 0, i32 11
  store i32 %130, i32* %132, align 4
  %133 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %134 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %138 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %137, i32 0, i32 10
  store i32 %136, i32* %138, align 8
  %139 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %140 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %144 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %147 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @SIW_VENDOR_ID, align 4
  %149 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 4
  %151 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %152 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %155 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %157 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %156, i32 0, i32 5
  %158 = load %struct.siw_device*, %struct.siw_device** %8, align 8
  %159 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @memcpy(i32* %157, i32 %162, i32 6)
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %23, %20
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.siw_device* @to_siw_dev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
