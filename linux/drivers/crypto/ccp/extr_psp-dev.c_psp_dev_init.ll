; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { %struct.psp_device*, {}*, i64, %struct.TYPE_2__*, %struct.device* }
%struct.psp_device = type { i32, %struct.psp_vdata*, i64, i32 }
%struct.psp_vdata = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"missing driver data\0A\00", align 1
@psp_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"psp: unable to allocate an IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"psp enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"psp initialization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psp_dev_init(%struct.sp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.psp_device*, align 8
  %6 = alloca i32, align 4
  store %struct.sp_device* %0, %struct.sp_device** %3, align 8
  %7 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %8 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %13 = call %struct.psp_device* @psp_alloc_struct(%struct.sp_device* %12)
  store %struct.psp_device* %13, %struct.psp_device** %5, align 8
  %14 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %15 = icmp ne %struct.psp_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %122

17:                                               ; preds = %1
  %18 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %19 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %20 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %19, i32 0, i32 0
  store %struct.psp_device* %18, %struct.psp_device** %20, align 8
  %21 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %22 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.psp_vdata*
  %27 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %28 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %27, i32 0, i32 1
  store %struct.psp_vdata* %26, %struct.psp_vdata** %28, align 8
  %29 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %30 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %29, i32 0, i32 1
  %31 = load %struct.psp_vdata*, %struct.psp_vdata** %30, align 8
  %32 = icmp ne %struct.psp_vdata* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %17
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %122

38:                                               ; preds = %17
  %39 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %40 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %43 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %45 = call i32 @psp_check_sev_support(%struct.psp_device* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %128

49:                                               ; preds = %38
  %50 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %51 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %54 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %53, i32 0, i32 1
  %55 = load %struct.psp_vdata*, %struct.psp_vdata** %54, align 8
  %56 = getelementptr inbounds %struct.psp_vdata, %struct.psp_vdata* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %52, %57
  %59 = call i32 @iowrite32(i32 0, i64 %58)
  %60 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %61 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %64 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %63, i32 0, i32 1
  %65 = load %struct.psp_vdata*, %struct.psp_vdata** %64, align 8
  %66 = getelementptr inbounds %struct.psp_vdata, %struct.psp_vdata* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %62, %67
  %69 = call i32 @iowrite32(i32 -1, i64 %68)
  %70 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %71 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @psp_irq_handler, align 4
  %74 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %75 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %78 = call i32 @sp_request_psp_irq(i32 %72, i32 %73, i32 %76, %struct.psp_device* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %49
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %122

84:                                               ; preds = %49
  %85 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %86 = call i32 @sev_misc_init(%struct.psp_device* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %116

90:                                               ; preds = %84
  %91 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %92 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %91, i32 0, i32 1
  %93 = bitcast {}** %92 to i32 (%struct.sp_device*)**
  %94 = load i32 (%struct.sp_device*)*, i32 (%struct.sp_device*)** %93, align 8
  %95 = icmp ne i32 (%struct.sp_device*)* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %98 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %97, i32 0, i32 1
  %99 = bitcast {}** %98 to i32 (%struct.sp_device*)**
  %100 = load i32 (%struct.sp_device*)*, i32 (%struct.sp_device*)** %99, align 8
  %101 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %102 = call i32 %100(%struct.sp_device* %101)
  br label %103

103:                                              ; preds = %96, %90
  %104 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %105 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %108 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %107, i32 0, i32 1
  %109 = load %struct.psp_vdata*, %struct.psp_vdata** %108, align 8
  %110 = getelementptr inbounds %struct.psp_vdata, %struct.psp_vdata* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %106, %111
  %113 = call i32 @iowrite32(i32 -1, i64 %112)
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_notice(%struct.device* %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %132

116:                                              ; preds = %89
  %117 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %118 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %121 = call i32 @sp_free_psp_irq(i32 %119, %struct.psp_device* %120)
  br label %122

122:                                              ; preds = %116, %81, %33, %16
  %123 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %124 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %123, i32 0, i32 0
  store %struct.psp_device* null, %struct.psp_device** %124, align 8
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i32 @dev_notice(%struct.device* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %132

128:                                              ; preds = %48
  %129 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %130 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %129, i32 0, i32 0
  store %struct.psp_device* null, %struct.psp_device** %130, align 8
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %122, %103
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.psp_device* @psp_alloc_struct(%struct.sp_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @psp_check_sev_support(%struct.psp_device*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @sp_request_psp_irq(i32, i32, i32, %struct.psp_device*) #1

declare dso_local i32 @sev_misc_init(%struct.psp_device*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*) #1

declare dso_local i32 @sp_free_psp_irq(i32, %struct.psp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
