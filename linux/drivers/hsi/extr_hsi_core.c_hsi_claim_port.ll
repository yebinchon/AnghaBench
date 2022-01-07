; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_claim_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_claim_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.hsi_port = type { i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsi_claim_port(%struct.hsi_client* %0, i32 %1) #0 {
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsi_port*, align 8
  %6 = alloca i32, align 4
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %8 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %7)
  store %struct.hsi_port* %8, %struct.hsi_port** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %10 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %13 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %18 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %54

27:                                               ; preds = %21, %2
  %28 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %29 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_4__* @to_hsi_controller(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @try_module_get(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %54

40:                                               ; preds = %27
  %41 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %42 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %51 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %53 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %40, %37, %24
  %55 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %56 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.TYPE_4__* @to_hsi_controller(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
