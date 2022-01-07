; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_ubx.c_ubx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_ubx.c_ubx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.gnss_serial = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ubx_data = type { %struct.gnss_serial*, %struct.gnss_serial* }

@ubx_gserial_ops = common dso_local global i32 0, align 4
@GNSS_TYPE_UBX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"v-bckp\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @ubx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubx_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.gnss_serial*, align 8
  %5 = alloca %struct.ubx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %7 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %8 = call %struct.gnss_serial* @gnss_serial_allocate(%struct.serdev_device* %7, i32 16)
  store %struct.gnss_serial* %8, %struct.gnss_serial** %4, align 8
  %9 = load %struct.gnss_serial*, %struct.gnss_serial** %4, align 8
  %10 = call i64 @IS_ERR(%struct.gnss_serial* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.gnss_serial*, %struct.gnss_serial** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.gnss_serial* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load %struct.gnss_serial*, %struct.gnss_serial** %4, align 8
  %18 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %17, i32 0, i32 1
  store i32* @ubx_gserial_ops, i32** %18, align 8
  %19 = load i32, i32* @GNSS_TYPE_UBX, align 4
  %20 = load %struct.gnss_serial*, %struct.gnss_serial** %4, align 8
  %21 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.gnss_serial*, %struct.gnss_serial** %4, align 8
  %25 = call %struct.ubx_data* @gnss_serial_get_drvdata(%struct.gnss_serial* %24)
  store %struct.ubx_data* %25, %struct.ubx_data** %5, align 8
  %26 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %27 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %26, i32 0, i32 0
  %28 = call %struct.gnss_serial* @devm_regulator_get(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %30 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %29, i32 0, i32 1
  store %struct.gnss_serial* %28, %struct.gnss_serial** %30, align 8
  %31 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %32 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %31, i32 0, i32 1
  %33 = load %struct.gnss_serial*, %struct.gnss_serial** %32, align 8
  %34 = call i64 @IS_ERR(%struct.gnss_serial* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %16
  %37 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %38 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %37, i32 0, i32 1
  %39 = load %struct.gnss_serial*, %struct.gnss_serial** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.gnss_serial* %39)
  store i32 %40, i32* %6, align 4
  br label %98

41:                                               ; preds = %16
  %42 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %43 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %42, i32 0, i32 0
  %44 = call %struct.gnss_serial* @devm_regulator_get_optional(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %46 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %45, i32 0, i32 0
  store %struct.gnss_serial* %44, %struct.gnss_serial** %46, align 8
  %47 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %48 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %47, i32 0, i32 0
  %49 = load %struct.gnss_serial*, %struct.gnss_serial** %48, align 8
  %50 = call i64 @IS_ERR(%struct.gnss_serial* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %41
  %53 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %54 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %53, i32 0, i32 0
  %55 = load %struct.gnss_serial*, %struct.gnss_serial** %54, align 8
  %56 = call i32 @PTR_ERR(%struct.gnss_serial* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %63 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %62, i32 0, i32 0
  store %struct.gnss_serial* null, %struct.gnss_serial** %63, align 8
  br label %65

64:                                               ; preds = %52
  br label %98

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %68 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %67, i32 0, i32 0
  %69 = load %struct.gnss_serial*, %struct.gnss_serial** %68, align 8
  %70 = icmp ne %struct.gnss_serial* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %73 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %72, i32 0, i32 0
  %74 = load %struct.gnss_serial*, %struct.gnss_serial** %73, align 8
  %75 = call i32 @regulator_enable(%struct.gnss_serial* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %98

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.gnss_serial*, %struct.gnss_serial** %4, align 8
  %82 = call i32 @gnss_serial_register(%struct.gnss_serial* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %87

86:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %102

87:                                               ; preds = %85
  %88 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %89 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %88, i32 0, i32 0
  %90 = load %struct.gnss_serial*, %struct.gnss_serial** %89, align 8
  %91 = icmp ne %struct.gnss_serial* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.ubx_data*, %struct.ubx_data** %5, align 8
  %94 = getelementptr inbounds %struct.ubx_data, %struct.ubx_data* %93, i32 0, i32 0
  %95 = load %struct.gnss_serial*, %struct.gnss_serial** %94, align 8
  %96 = call i32 @regulator_disable(%struct.gnss_serial* %95)
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %78, %64, %36
  %99 = load %struct.gnss_serial*, %struct.gnss_serial** %4, align 8
  %100 = call i32 @gnss_serial_free(%struct.gnss_serial* %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %86, %12
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.gnss_serial* @gnss_serial_allocate(%struct.serdev_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gnss_serial*) #1

declare dso_local i32 @PTR_ERR(%struct.gnss_serial*) #1

declare dso_local %struct.ubx_data* @gnss_serial_get_drvdata(%struct.gnss_serial*) #1

declare dso_local %struct.gnss_serial* @devm_regulator_get(i32*, i8*) #1

declare dso_local %struct.gnss_serial* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i32 @regulator_enable(%struct.gnss_serial*) #1

declare dso_local i32 @gnss_serial_register(%struct.gnss_serial*) #1

declare dso_local i32 @regulator_disable(%struct.gnss_serial*) #1

declare dso_local i32 @gnss_serial_free(%struct.gnss_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
