; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_loader_ishtp_cl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_loader_ishtp_cl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_device = type { i32 }
%struct.ishtp_cl = type { i32 }
%struct.ishtp_cl_data = type { i32, i64, i32, %struct.TYPE_2__, %struct.ishtp_cl_device*, %struct.ishtp_cl* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reset_handler = common dso_local global i32 0, align 4
@load_fw_from_host_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_device*)* @loader_ishtp_cl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loader_ishtp_cl_probe(%struct.ishtp_cl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl_device*, align 8
  %4 = alloca %struct.ishtp_cl*, align 8
  %5 = alloca %struct.ishtp_cl_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ishtp_cl_device* %0, %struct.ishtp_cl_device** %3, align 8
  %7 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %8 = call i32 @ishtp_device(%struct.ishtp_cl_device* %7)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ishtp_cl_data* @devm_kzalloc(i32 %8, i32 40, i32 %9)
  store %struct.ishtp_cl_data* %10, %struct.ishtp_cl_data** %5, align 8
  %11 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %12 = icmp ne %struct.ishtp_cl_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %18 = call %struct.ishtp_cl* @ishtp_cl_allocate(%struct.ishtp_cl_device* %17)
  store %struct.ishtp_cl* %18, %struct.ishtp_cl** %4, align 8
  %19 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %20 = icmp ne %struct.ishtp_cl* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %65

24:                                               ; preds = %16
  %25 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %26 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %27 = call i32 @ishtp_set_drvdata(%struct.ishtp_cl_device* %25, %struct.ishtp_cl* %26)
  %28 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %29 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %30 = call i32 @ishtp_set_client_data(%struct.ishtp_cl* %28, %struct.ishtp_cl_data* %29)
  %31 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %32 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %33 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %32, i32 0, i32 5
  store %struct.ishtp_cl* %31, %struct.ishtp_cl** %33, align 8
  %34 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %35 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %36 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %35, i32 0, i32 4
  store %struct.ishtp_cl_device* %34, %struct.ishtp_cl_device** %36, align 8
  %37 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %38 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %42 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %41, i32 0, i32 2
  %43 = load i32, i32* @reset_handler, align 4
  %44 = call i32 @INIT_WORK(i32* %42, i32 %43)
  %45 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %46 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %45, i32 0, i32 0
  %47 = load i32, i32* @load_fw_from_host_handler, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %50 = call i32 @loader_init(%struct.ishtp_cl* %49, i32 0)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %24
  %54 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %55 = call i32 @ishtp_cl_free(%struct.ishtp_cl* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %24
  %58 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %59 = call i32 @ishtp_get_device(%struct.ishtp_cl_device* %58)
  %60 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %61 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %63 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %62, i32 0, i32 0
  %64 = call i32 @schedule_work(i32* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %53, %21, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.ishtp_cl_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ishtp_device(%struct.ishtp_cl_device*) #1

declare dso_local %struct.ishtp_cl* @ishtp_cl_allocate(%struct.ishtp_cl_device*) #1

declare dso_local i32 @ishtp_set_drvdata(%struct.ishtp_cl_device*, %struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_set_client_data(%struct.ishtp_cl*, %struct.ishtp_cl_data*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @loader_init(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_cl_free(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_get_device(%struct.ishtp_cl_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
