; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_mau_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_mau_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mdesc_handle = type { i32 }
%struct.n2_mau = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Found NCP at %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%pOF: Unable to allocate ncp.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%pOF: Unable to grab global resources.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%pOF: Unable to grab MDESC.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ncp\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%pOF: Unable to grab IRQ props.\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mau\00", align 1
@HV_NCS_QTYPE_MAU = common dso_local global i32 0, align 4
@mau_intr = common dso_local global i32 0, align 4
@cpu_to_mau = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"%pOF: MAU MDESC scan failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @n2_mau_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_mau_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mdesc_handle*, align 8
  %5 = alloca %struct.n2_mau*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = call i32 (...) @n2_spu_driver_version()
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call %struct.n2_mau* (...) @alloc_ncp()
  store %struct.n2_mau* %13, %struct.n2_mau** %5, align 8
  %14 = load %struct.n2_mau*, %struct.n2_mau** %5, align 8
  %15 = icmp ne %struct.n2_mau* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(%struct.TYPE_3__* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %104

26:                                               ; preds = %1
  %27 = call i32 (...) @grab_global_resources()
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(%struct.TYPE_3__* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %100

38:                                               ; preds = %26
  %39 = call %struct.mdesc_handle* (...) @mdesc_grab()
  store %struct.mdesc_handle* %39, %struct.mdesc_handle** %4, align 8
  %40 = load %struct.mdesc_handle*, %struct.mdesc_handle** %4, align 8
  %41 = icmp ne %struct.mdesc_handle* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(%struct.TYPE_3__* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %98

52:                                               ; preds = %38
  %53 = load %struct.mdesc_handle*, %struct.mdesc_handle** %4, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.n2_mau*, %struct.n2_mau** %5, align 8
  %56 = getelementptr inbounds %struct.n2_mau, %struct.n2_mau* %55, i32 0, i32 1
  %57 = call i32 @grab_mdesc_irq_props(%struct.mdesc_handle* %53, %struct.platform_device* %54, i32* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(%struct.TYPE_3__* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load %struct.mdesc_handle*, %struct.mdesc_handle** %4, align 8
  %69 = call i32 @mdesc_release(%struct.mdesc_handle* %68)
  br label %98

70:                                               ; preds = %52
  %71 = load %struct.mdesc_handle*, %struct.mdesc_handle** %4, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load %struct.n2_mau*, %struct.n2_mau** %5, align 8
  %74 = getelementptr inbounds %struct.n2_mau, %struct.n2_mau* %73, i32 0, i32 1
  %75 = load %struct.n2_mau*, %struct.n2_mau** %5, align 8
  %76 = getelementptr inbounds %struct.n2_mau, %struct.n2_mau* %75, i32 0, i32 0
  %77 = load i32, i32* @HV_NCS_QTYPE_MAU, align 4
  %78 = load i32, i32* @mau_intr, align 4
  %79 = load i32, i32* @cpu_to_mau, align 4
  %80 = call i32 @spu_mdesc_scan(%struct.mdesc_handle* %71, %struct.platform_device* %72, i32* %74, i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.mdesc_handle*, %struct.mdesc_handle** %4, align 8
  %82 = call i32 @mdesc_release(%struct.mdesc_handle* %81)
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %70
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_err(%struct.TYPE_3__* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  br label %98

93:                                               ; preds = %70
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.n2_mau*, %struct.n2_mau** %5, align 8
  %97 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %95, %struct.n2_mau* %96)
  store i32 0, i32* %2, align 4
  br label %104

98:                                               ; preds = %85, %60, %42
  %99 = call i32 (...) @release_global_resources()
  br label %100

100:                                              ; preds = %98, %30
  %101 = load %struct.n2_mau*, %struct.n2_mau** %5, align 8
  %102 = call i32 @free_ncp(%struct.n2_mau* %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %93, %16
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @n2_spu_driver_version(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.n2_mau* @alloc_ncp(...) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @grab_global_resources(...) #1

declare dso_local %struct.mdesc_handle* @mdesc_grab(...) #1

declare dso_local i32 @grab_mdesc_irq_props(%struct.mdesc_handle*, %struct.platform_device*, i32*, i8*) #1

declare dso_local i32 @mdesc_release(%struct.mdesc_handle*) #1

declare dso_local i32 @spu_mdesc_scan(%struct.mdesc_handle*, %struct.platform_device*, i32*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, %struct.n2_mau*) #1

declare dso_local i32 @release_global_resources(...) #1

declare dso_local i32 @free_ncp(%struct.n2_mau*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
