; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_clear_lbc_err_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_clear_lbc_err_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.lbc_int = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@LBC_INT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"LBC_INT  0x%016llx\0A\00", align 1
@NR_CLUSTERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"CAM_SOFT_ERR, invalidating LBC\0A\00", align 1
@LBC_PLM_VF1_64_INT = common dso_local global i8* null, align 8
@LBC_PLM_VF65_128_INT = common dso_local global i8* null, align 8
@LBC_ELM_VF1_64_INT = common dso_local global i8* null, align 8
@LBC_ELM_VF65_128_INT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_device*)* @clear_lbc_err_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_lbc_err_intr(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %union.lbc_int, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %7 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %8 = load i8*, i8** @LBC_INT, align 8
  %9 = call i8* @nitrox_read_csr(%struct.nitrox_device* %7, i8* %8)
  %10 = bitcast %union.lbc_int* %3 to i8**
  store i8* %9, i8** %10, align 8
  %11 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %12 = call i32 @DEV(%struct.nitrox_device* %11)
  %13 = bitcast %union.lbc_int* %3 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = bitcast %union.lbc_int* %3 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %44, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NR_CLUSTERS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @EFL_CORE_VF_ERR_INT0X(i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @nitrox_read_csr(%struct.nitrox_device* %28, i8* %29)
  store i8* %30, i8** %4, align 8
  %31 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @nitrox_write_csr(%struct.nitrox_device* %31, i8* %32, i8* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @EFL_CORE_VF_ERR_INT1X(i32 %35)
  store i8* %36, i8** %5, align 8
  %37 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @nitrox_read_csr(%struct.nitrox_device* %37, i8* %38)
  store i8* %39, i8** %4, align 8
  %40 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @nitrox_write_csr(%struct.nitrox_device* %40, i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %21

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47, %1
  %49 = bitcast %union.lbc_int* %3 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %55 = call i32 @DEV(%struct.nitrox_device* %54)
  %56 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %58 = call i32 @invalidate_lbc(%struct.nitrox_device* %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = bitcast %union.lbc_int* %3 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i8*, i8** @LBC_PLM_VF1_64_INT, align 8
  store i8* %65, i8** %5, align 8
  %66 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i8* @nitrox_read_csr(%struct.nitrox_device* %66, i8* %67)
  store i8* %68, i8** %4, align 8
  %69 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @nitrox_write_csr(%struct.nitrox_device* %69, i8* %70, i8* %71)
  %73 = load i8*, i8** @LBC_PLM_VF65_128_INT, align 8
  store i8* %73, i8** %5, align 8
  %74 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call i8* @nitrox_read_csr(%struct.nitrox_device* %74, i8* %75)
  store i8* %76, i8** %4, align 8
  %77 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @nitrox_write_csr(%struct.nitrox_device* %77, i8* %78, i8* %79)
  br label %81

81:                                               ; preds = %64, %59
  %82 = bitcast %union.lbc_int* %3 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load i8*, i8** @LBC_ELM_VF1_64_INT, align 8
  store i8* %87, i8** %5, align 8
  %88 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i8* @nitrox_read_csr(%struct.nitrox_device* %88, i8* %89)
  store i8* %90, i8** %4, align 8
  %91 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @nitrox_write_csr(%struct.nitrox_device* %91, i8* %92, i8* %93)
  %95 = load i8*, i8** @LBC_ELM_VF65_128_INT, align 8
  store i8* %95, i8** %5, align 8
  %96 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i8* @nitrox_read_csr(%struct.nitrox_device* %96, i8* %97)
  store i8* %98, i8** %4, align 8
  %99 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @nitrox_write_csr(%struct.nitrox_device* %99, i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %86, %81
  %104 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %105 = load i8*, i8** @LBC_INT, align 8
  %106 = bitcast %union.lbc_int* %3 to i8**
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @nitrox_write_csr(%struct.nitrox_device* %104, i8* %105, i8* %107)
  ret void
}

declare dso_local i8* @nitrox_read_csr(%struct.nitrox_device*, i8*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, ...) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i8* @EFL_CORE_VF_ERR_INT0X(i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i8*, i8*) #1

declare dso_local i8* @EFL_CORE_VF_ERR_INT1X(i32) #1

declare dso_local i32 @invalidate_lbc(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
