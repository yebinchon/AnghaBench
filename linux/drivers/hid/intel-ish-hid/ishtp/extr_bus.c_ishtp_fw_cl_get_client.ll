; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_fw_cl_get_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_fw_cl_get_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_fw_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ishtp_device = type { %struct.ishtp_fw_client*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ishtp_fw_client* @ishtp_fw_cl_get_client(%struct.ishtp_device* %0, i32* %1) #0 {
  %3 = alloca %struct.ishtp_fw_client*, align 8
  %4 = alloca %struct.ishtp_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %9 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @ishtp_fw_cl_by_uuid(%struct.ishtp_device* %12, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %16 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %15, i32 0, i32 1
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %23 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %22, i32 0, i32 0
  %24 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ishtp_fw_client, %struct.ishtp_fw_client* %24, i64 %26
  %28 = getelementptr inbounds %struct.ishtp_fw_client, %struct.ishtp_fw_client* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21, %2
  store %struct.ishtp_fw_client* null, %struct.ishtp_fw_client** %3, align 8
  br label %40

33:                                               ; preds = %21
  %34 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %35 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %34, i32 0, i32 0
  %36 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ishtp_fw_client, %struct.ishtp_fw_client* %36, i64 %38
  store %struct.ishtp_fw_client* %39, %struct.ishtp_fw_client** %3, align 8
  br label %40

40:                                               ; preds = %33, %32
  %41 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %3, align 8
  ret %struct.ishtp_fw_client* %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ishtp_fw_cl_by_uuid(%struct.ishtp_device*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
