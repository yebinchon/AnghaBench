; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_tx_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_tx_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i32, i32 }
%struct.hsc_client_data = type { %struct.hsc_channel* }
%struct.hsc_channel = type { i32, i32, i32, i32 }

@HSC_CH_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @hsc_tx_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsc_tx_completed(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.hsc_client_data*, align 8
  %4 = alloca %struct.hsc_channel*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %5 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %6 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.hsc_client_data* @hsi_client_drvdata(i32 %7)
  store %struct.hsc_client_data* %8, %struct.hsc_client_data** %3, align 8
  %9 = load %struct.hsc_client_data*, %struct.hsc_client_data** %3, align 8
  %10 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %9, i32 0, i32 0
  %11 = load %struct.hsc_channel*, %struct.hsc_channel** %10, align 8
  %12 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %13 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %11, i64 %15
  store %struct.hsc_channel* %16, %struct.hsc_channel** %4, align 8
  %17 = load i32, i32* @HSC_CH_WRITE, align 4
  %18 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %19 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %18, i32 0, i32 3
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %24 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %25 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %26 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %25, i32 0, i32 2
  %27 = call i32 @hsc_add_tail(%struct.hsc_channel* %23, %struct.hsi_msg* %24, i32* %26)
  %28 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %29 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %28, i32 0, i32 1
  %30 = call i32 @wake_up(i32* %29)
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %33 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %34 = load %struct.hsc_channel*, %struct.hsc_channel** %4, align 8
  %35 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %34, i32 0, i32 0
  %36 = call i32 @hsc_add_tail(%struct.hsc_channel* %32, %struct.hsi_msg* %33, i32* %35)
  br label %37

37:                                               ; preds = %31, %22
  ret void
}

declare dso_local %struct.hsc_client_data* @hsi_client_drvdata(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hsc_add_tail(%struct.hsc_channel*, %struct.hsi_msg*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
