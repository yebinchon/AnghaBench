; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_break_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_break_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.hsc_client_data = type { i32 }
%struct.hsi_msg = type { i32, i32 (%struct.hsi_msg*)*, i32 }

@HSC_RXBREAK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hsc_break_received = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_client*)* @hsc_break_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsc_break_request(%struct.hsi_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.hsc_client_data*, align 8
  %5 = alloca %struct.hsi_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  %7 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %8 = call %struct.hsc_client_data* @hsi_client_drvdata(%struct.hsi_client* %7)
  store %struct.hsc_client_data* %8, %struct.hsc_client_data** %4, align 8
  %9 = load i32, i32* @HSC_RXBREAK, align 4
  %10 = load %struct.hsc_client_data*, %struct.hsc_client_data** %4, align 8
  %11 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %10, i32 0, i32 0
  %12 = call i64 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.hsi_msg* @hsi_alloc_msg(i32 0, i32 %18)
  store %struct.hsi_msg* %19, %struct.hsi_msg** %5, align 8
  %20 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %21 = icmp ne %struct.hsi_msg* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @HSC_RXBREAK, align 4
  %24 = load %struct.hsc_client_data*, %struct.hsc_client_data** %4, align 8
  %25 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %17
  %30 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %31 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @hsc_break_received, align 4
  %33 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %34 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %36 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %35, i32 0, i32 1
  store i32 (%struct.hsi_msg*)* @hsc_break_req_destructor, i32 (%struct.hsi_msg*)** %36, align 8
  %37 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %38 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %39 = call i32 @hsi_async_read(%struct.hsi_client* %37, %struct.hsi_msg* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %44 = call i32 @hsc_break_req_destructor(%struct.hsi_msg* %43)
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %22, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.hsc_client_data* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.hsi_msg* @hsi_alloc_msg(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hsc_break_req_destructor(%struct.hsi_msg*) #1

declare dso_local i32 @hsi_async_read(%struct.hsi_client*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
