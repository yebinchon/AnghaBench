; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_allocate_report_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_allocate_report_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_report_data = type { i32, i32, i32, %struct.hid_report* }
%struct.mt_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hid_report = type { i32, %struct.hid_field** }
%struct.hid_field = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HID_MAIN_ITEM_VARIABLE = common dso_local global i32 0, align 4
@HID_DG_CONTACTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt_report_data* (%struct.mt_device*, %struct.hid_report*)* @mt_allocate_report_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt_report_data* @mt_allocate_report_data(%struct.mt_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.mt_report_data*, align 8
  %4 = alloca %struct.mt_device*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca %struct.mt_report_data*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt_device* %0, %struct.mt_device** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  %10 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %11 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mt_report_data* @devm_kzalloc(i32* %13, i32 24, i32 %14)
  store %struct.mt_report_data* %15, %struct.mt_report_data** %6, align 8
  %16 = load %struct.mt_report_data*, %struct.mt_report_data** %6, align 8
  %17 = icmp ne %struct.mt_report_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.mt_report_data* null, %struct.mt_report_data** %3, align 8
  br label %97

19:                                               ; preds = %2
  %20 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %21 = load %struct.mt_report_data*, %struct.mt_report_data** %6, align 8
  %22 = getelementptr inbounds %struct.mt_report_data, %struct.mt_report_data* %21, i32 0, i32 3
  store %struct.hid_report* %20, %struct.hid_report** %22, align 8
  %23 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %24 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %25 = call i32 @mt_find_application(%struct.mt_device* %23, %struct.hid_report* %24)
  %26 = load %struct.mt_report_data*, %struct.mt_report_data** %6, align 8
  %27 = getelementptr inbounds %struct.mt_report_data, %struct.mt_report_data* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mt_report_data*, %struct.mt_report_data** %6, align 8
  %29 = getelementptr inbounds %struct.mt_report_data, %struct.mt_report_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %19
  %33 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %34 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.mt_report_data*, %struct.mt_report_data** %6, align 8
  %38 = call i32 @devm_kfree(i32* %36, %struct.mt_report_data* %37)
  store %struct.mt_report_data* null, %struct.mt_report_data** %3, align 8
  br label %97

39:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %87, %39
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %43 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %48 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %47, i32 0, i32 1
  %49 = load %struct.hid_field**, %struct.hid_field*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %49, i64 %51
  %53 = load %struct.hid_field*, %struct.hid_field** %52, align 8
  store %struct.hid_field* %53, %struct.hid_field** %7, align 8
  %54 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %55 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %56 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %46
  br label %87

61:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %83, %61
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %65 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %70 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HID_DG_CONTACTID, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load %struct.mt_report_data*, %struct.mt_report_data** %6, align 8
  %81 = getelementptr inbounds %struct.mt_report_data, %struct.mt_report_data* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %62

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %86, %60
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %40

90:                                               ; preds = %40
  %91 = load %struct.mt_report_data*, %struct.mt_report_data** %6, align 8
  %92 = getelementptr inbounds %struct.mt_report_data, %struct.mt_report_data* %91, i32 0, i32 1
  %93 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %94 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %93, i32 0, i32 0
  %95 = call i32 @list_add_tail(i32* %92, i32* %94)
  %96 = load %struct.mt_report_data*, %struct.mt_report_data** %6, align 8
  store %struct.mt_report_data* %96, %struct.mt_report_data** %3, align 8
  br label %97

97:                                               ; preds = %90, %32, %18
  %98 = load %struct.mt_report_data*, %struct.mt_report_data** %3, align 8
  ret %struct.mt_report_data* %98
}

declare dso_local %struct.mt_report_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mt_find_application(%struct.mt_device*, %struct.hid_report*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.mt_report_data*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
