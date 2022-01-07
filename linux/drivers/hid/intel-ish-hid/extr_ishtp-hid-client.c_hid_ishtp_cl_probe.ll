; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_hid_ishtp_cl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_hid_ishtp_cl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_device = type { i32 }
%struct.ishtp_cl = type { i32 }
%struct.ishtp_cl_data = type { i32, i32, i32, %struct.ishtp_cl_device*, %struct.ishtp_cl* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hid_ishtp_cl_reset_handler = common dso_local global i32 0, align 4
@hid_print_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_device*)* @hid_ishtp_cl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_ishtp_cl_probe(%struct.ishtp_cl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl_device*, align 8
  %4 = alloca %struct.ishtp_cl*, align 8
  %5 = alloca %struct.ishtp_cl_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ishtp_cl_device* %0, %struct.ishtp_cl_device** %3, align 8
  %7 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %8 = icmp ne %struct.ishtp_cl_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %66

12:                                               ; preds = %1
  %13 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %14 = call i32 @ishtp_device(%struct.ishtp_cl_device* %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ishtp_cl_data* @devm_kzalloc(i32 %14, i32 32, i32 %15)
  store %struct.ishtp_cl_data* %16, %struct.ishtp_cl_data** %5, align 8
  %17 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %18 = icmp ne %struct.ishtp_cl_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %66

22:                                               ; preds = %12
  %23 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %24 = call %struct.ishtp_cl* @ishtp_cl_allocate(%struct.ishtp_cl_device* %23)
  store %struct.ishtp_cl* %24, %struct.ishtp_cl** %4, align 8
  %25 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %26 = icmp ne %struct.ishtp_cl* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %66

30:                                               ; preds = %22
  %31 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %32 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %33 = call i32 @ishtp_set_drvdata(%struct.ishtp_cl_device* %31, %struct.ishtp_cl* %32)
  %34 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %35 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %36 = call i32 @ishtp_set_client_data(%struct.ishtp_cl* %34, %struct.ishtp_cl_data* %35)
  %37 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %38 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %39 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %38, i32 0, i32 4
  store %struct.ishtp_cl* %37, %struct.ishtp_cl** %39, align 8
  %40 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %41 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %42 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %41, i32 0, i32 3
  store %struct.ishtp_cl_device* %40, %struct.ishtp_cl_device** %42, align 8
  %43 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %44 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %43, i32 0, i32 2
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %47 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %46, i32 0, i32 1
  %48 = call i32 @init_waitqueue_head(i32* %47)
  %49 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %50 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %49, i32 0, i32 0
  %51 = load i32, i32* @hid_ishtp_cl_reset_handler, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %54 = call i32 @ishtp_trace_callback(%struct.ishtp_cl_device* %53)
  store i32 %54, i32* @hid_print_trace, align 4
  %55 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %56 = call i32 @hid_ishtp_cl_init(%struct.ishtp_cl* %55, i32 0)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %30
  %60 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %61 = call i32 @ishtp_cl_free(%struct.ishtp_cl* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %30
  %64 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %65 = call i32 @ishtp_get_device(%struct.ishtp_cl_device* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %59, %27, %19, %9
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ishtp_cl_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ishtp_device(%struct.ishtp_cl_device*) #1

declare dso_local %struct.ishtp_cl* @ishtp_cl_allocate(%struct.ishtp_cl_device*) #1

declare dso_local i32 @ishtp_set_drvdata(%struct.ishtp_cl_device*, %struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_set_client_data(%struct.ishtp_cl*, %struct.ishtp_cl_data*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ishtp_trace_callback(%struct.ishtp_cl_device*) #1

declare dso_local i32 @hid_ishtp_cl_init(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_cl_free(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_get_device(%struct.ishtp_cl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
