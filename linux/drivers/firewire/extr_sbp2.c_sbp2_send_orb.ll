; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_send_orb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_send_orb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_orb = type { i32, i32, i32, %struct.sbp2_logical_unit*, i32 }
%struct.sbp2_logical_unit = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fw_device = type { i32, i32 }
%struct.sbp2_pointer = type { i32, i64 }

@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@complete_transaction = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_orb*, %struct.sbp2_logical_unit*, i32, i32, i32)* @sbp2_send_orb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2_send_orb(%struct.sbp2_orb* %0, %struct.sbp2_logical_unit* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sbp2_orb*, align 8
  %7 = alloca %struct.sbp2_logical_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fw_device*, align 8
  %12 = alloca %struct.sbp2_pointer, align 8
  %13 = alloca i64, align 8
  store %struct.sbp2_orb* %0, %struct.sbp2_orb** %6, align 8
  store %struct.sbp2_logical_unit* %1, %struct.sbp2_logical_unit** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %7, align 8
  %15 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call %struct.fw_device* @target_parent_device(%struct.TYPE_2__* %16)
  store %struct.fw_device* %17, %struct.fw_device** %11, align 8
  %18 = getelementptr inbounds %struct.sbp2_pointer, %struct.sbp2_pointer* %12, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %20 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.sbp2_pointer, %struct.sbp2_pointer* %12, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %7, align 8
  %25 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %26 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %25, i32 0, i32 3
  store %struct.sbp2_logical_unit* %24, %struct.sbp2_logical_unit** %26, align 8
  %27 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %7, align 8
  %28 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %34 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %33, i32 0, i32 2
  %35 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %7, align 8
  %36 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %7, align 8
  %39 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %45 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %44, i32 0, i32 1
  %46 = call i32 @kref_get(i32* %45)
  %47 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %48 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %47, i32 0, i32 1
  %49 = call i32 @kref_get(i32* %48)
  %50 = load %struct.fw_device*, %struct.fw_device** %11, align 8
  %51 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %54 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %53, i32 0, i32 0
  %55 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.fw_device*, %struct.fw_device** %11, align 8
  %59 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @complete_transaction, align 4
  %63 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %64 = call i32 @fw_send_request(i32 %52, i32* %54, i32 %55, i32 %56, i32 %57, i32 %60, i32 %61, %struct.sbp2_pointer* %12, i32 8, i32 %62, %struct.sbp2_orb* %63)
  ret void
}

declare dso_local %struct.fw_device* @target_parent_device(%struct.TYPE_2__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @fw_send_request(i32, i32*, i32, i32, i32, i32, i32, %struct.sbp2_pointer*, i32, i32, %struct.sbp2_orb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
