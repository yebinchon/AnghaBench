; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_read_and_clear_init_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_read_and_clear_init_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32, i32, %struct.gb_host_device* }
%struct.gb_host_device = type { i32 }

@GB_INTERFACE_QUIRK_NO_INIT_STATUS = common dso_local global i32 0, align 4
@DME_T_TST_SRC_INCREMENT = common dso_local global i32 0, align 4
@DME_TOSHIBA_GMP_INIT_STATUS = common dso_local global i32 0, align 4
@DME_SELECTOR_INDEX_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid init status\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GB_INTERFACE_QUIRK_NO_CPORT_FEATURES = common dso_local global i64 0, align 8
@GB_INTERFACE_QUIRK_FORCED_DISABLE = common dso_local global i64 0, align 8
@GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH = common dso_local global i64 0, align 8
@GB_INTERFACE_QUIRK_NO_BUNDLE_ACTIVATE = common dso_local global i64 0, align 8
@GB_INTERFACE_QUIRK_NO_PM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_interface*)* @gb_interface_read_and_clear_init_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_interface_read_and_clear_init_status(%struct.gb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_interface*, align 8
  %4 = alloca %struct.gb_host_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %3, align 8
  %11 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %12 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %11, i32 0, i32 3
  %13 = load %struct.gb_host_device*, %struct.gb_host_device** %12, align 8
  store %struct.gb_host_device* %13, %struct.gb_host_device** %4, align 8
  %14 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %15 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GB_INTERFACE_QUIRK_NO_INIT_STATUS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @DME_T_TST_SRC_INCREMENT, align 4
  store i32 %21, i32* %9, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @DME_TOSHIBA_GMP_INIT_STATUS, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %26 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %29 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DME_SELECTOR_INDEX_NULL, align 4
  %33 = call i32 @gb_svc_dme_peer_get(i32 %27, i32 %30, i32 %31, i32 %32, i32* %8)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %121

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %43 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %42, i32 0, i32 2
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %121

47:                                               ; preds = %38
  %48 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %49 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GB_INTERFACE_QUIRK_NO_INIT_STATUS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 255
  store i32 %56, i32* %10, align 4
  br label %60

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, 24
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64, i64* @GB_INTERFACE_QUIRK_NO_CPORT_FEATURES, align 8
  %62 = load i64, i64* @GB_INTERFACE_QUIRK_FORCED_DISABLE, align 8
  %63 = or i64 %61, %62
  %64 = load i64, i64* @GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* @GB_INTERFACE_QUIRK_NO_BUNDLE_ACTIVATE, align 8
  %67 = or i64 %65, %66
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* @GB_INTERFACE_QUIRK_NO_PM, align 8
  store i64 %68, i64* %6, align 8
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %94 [
    i32 129, label %70
    i32 130, label %70
    i32 128, label %78
  ]

70:                                               ; preds = %60, %60
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %73 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = or i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  br label %111

78:                                               ; preds = %60
  %79 = load i64, i64* %5, align 8
  %80 = xor i64 %79, -1
  %81 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %82 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = and i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %89 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = or i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 8
  br label %111

94:                                               ; preds = %60
  %95 = load i64, i64* %5, align 8
  %96 = xor i64 %95, -1
  %97 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %98 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = and i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 8
  %103 = load i64, i64* %6, align 8
  %104 = xor i64 %103, -1
  %105 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %106 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = and i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 8
  br label %111

111:                                              ; preds = %94, %78, %70
  %112 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %113 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %116 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @DME_SELECTOR_INDEX_NULL, align 4
  %120 = call i32 @gb_svc_dme_peer_set(i32 %114, i32 %117, i32 %118, i32 %119, i32 0)
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %111, %41, %36
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @gb_svc_dme_peer_get(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gb_svc_dme_peer_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
