; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_features_set_tpkbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_features_set_tpkbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hid_report** }
%struct.hid_report = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32* }
%struct.lenovo_drvdata_tpkbd = type { i32, i32, i64, i64, i64, i64 }

@HID_FEATURE_REPORT = common dso_local global i64 0, align 8
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @lenovo_features_set_tpkbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lenovo_features_set_tpkbd(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.hid_report*, align 8
  %4 = alloca %struct.lenovo_drvdata_tpkbd*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = call %struct.lenovo_drvdata_tpkbd* @hid_get_drvdata(%struct.hid_device* %5)
  store %struct.lenovo_drvdata_tpkbd* %6, %struct.lenovo_drvdata_tpkbd** %4, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load i64, i64* @HID_FEATURE_REPORT, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.hid_report**, %struct.hid_report*** %12, align 8
  %14 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %13, i64 4
  %15 = load %struct.hid_report*, %struct.hid_report** %14, align 8
  store %struct.hid_report* %15, %struct.hid_report** %3, align 8
  %16 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %4, align 8
  %17 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 2
  %22 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %23 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %21, i32* %29, align 4
  %30 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %4, align 8
  %31 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 4, i32 8
  %36 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %37 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %35
  store i32 %45, i32* %43, align 4
  %46 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %4, align 8
  %47 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 16, i32 32
  %52 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %53 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %51
  store i32 %61, i32* %59, align 4
  %62 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %4, align 8
  %63 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 128, i32 64
  %68 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %69 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %67
  store i32 %77, i32* %75, align 4
  %78 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %79 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 3, i32* %85, align 4
  %86 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %4, align 8
  %87 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %90 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %88, i32* %96, align 4
  %97 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %4, align 8
  %98 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %101 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %102, i64 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %99, i32* %107, align 4
  %108 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %109 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %110 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %111 = call i32 @hid_hw_request(%struct.hid_device* %108, %struct.hid_report* %109, i32 %110)
  ret i32 0
}

declare dso_local %struct.lenovo_drvdata_tpkbd* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.hid_report*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
