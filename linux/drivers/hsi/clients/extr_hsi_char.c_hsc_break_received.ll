; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_break_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_break_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i32, i32 }
%struct.hsc_client_data = type { %struct.hsc_channel* }
%struct.hsc_channel = type { i32, i32, i32, i32 }

@HSC_DEVS = common dso_local global i32 0, align 4
@HSC_CH_READ = common dso_local global i32 0, align 4
@HSI_STATUS_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @hsc_break_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsc_break_received(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.hsc_client_data*, align 8
  %4 = alloca %struct.hsc_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hsi_msg*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %9 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hsc_client_data* @hsi_client_drvdata(i32 %10)
  store %struct.hsc_client_data* %11, %struct.hsc_client_data** %3, align 8
  %12 = load %struct.hsc_client_data*, %struct.hsc_client_data** %3, align 8
  %13 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %12, i32 0, i32 0
  %14 = load %struct.hsc_channel*, %struct.hsc_channel** %13, align 8
  store %struct.hsc_channel* %14, %struct.hsc_channel** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %52, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @HSC_DEVS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load i32, i32* @HSC_CH_READ, align 4
  %21 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %22 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %21, i32 0, i32 2
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %52

26:                                               ; preds = %19
  %27 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %28 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %29 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %28, i32 0, i32 3
  %30 = call %struct.hsi_msg* @hsc_get_first_msg(%struct.hsc_channel* %27, i32* %29)
  store %struct.hsi_msg* %30, %struct.hsi_msg** %7, align 8
  %31 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %32 = icmp ne %struct.hsi_msg* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %52

34:                                               ; preds = %26
  %35 = load i32, i32* @HSC_CH_READ, align 4
  %36 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %37 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %36, i32 0, i32 2
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %40 = call i32 @hsc_msg_len_set(%struct.hsi_msg* %39, i32 0)
  %41 = load i32, i32* @HSI_STATUS_COMPLETED, align 4
  %42 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %43 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %45 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %46 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %47 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %46, i32 0, i32 1
  %48 = call i32 @hsc_add_tail(%struct.hsc_channel* %44, %struct.hsi_msg* %45, i32* %47)
  %49 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %50 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %49, i32 0, i32 0
  %51 = call i32 @wake_up(i32* %50)
  br label %52

52:                                               ; preds = %34, %33, %25
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %56 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %55, i32 1
  store %struct.hsc_channel* %56, %struct.hsc_channel** %4, align 8
  br label %15

57:                                               ; preds = %15
  %58 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %59 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @hsi_flush(i32 %60)
  %62 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %63 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %66 = call i32 @hsi_async_read(i32 %64, %struct.hsi_msg* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %71 = call i32 @hsc_break_req_destructor(%struct.hsi_msg* %70)
  br label %72

72:                                               ; preds = %69, %57
  ret void
}

declare dso_local %struct.hsc_client_data* @hsi_client_drvdata(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.hsi_msg* @hsc_get_first_msg(%struct.hsc_channel*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hsc_msg_len_set(%struct.hsi_msg*, i32) #1

declare dso_local i32 @hsc_add_tail(%struct.hsc_channel*, %struct.hsi_msg*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @hsi_flush(i32) #1

declare dso_local i32 @hsi_async_read(i32, %struct.hsi_msg*) #1

declare dso_local i32 @hsc_break_req_destructor(%struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
