; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_release_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_release_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i64 }
%struct.hsi_port = type { i64, i32, %struct.TYPE_3__, i64, i32 (%struct.hsi_client.0*)* }
%struct.TYPE_3__ = type { i32 }
%struct.hsi_client.0 = type opaque
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsi_release_port(%struct.hsi_client* %0) #0 {
  %2 = alloca %struct.hsi_client*, align 8
  %3 = alloca %struct.hsi_port*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %2, align 8
  %4 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %5 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %4)
  store %struct.hsi_port* %5, %struct.hsi_port** %3, align 8
  %6 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %7 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %10 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %9, i32 0, i32 4
  %11 = load i32 (%struct.hsi_client.0*)*, i32 (%struct.hsi_client.0*)** %10, align 8
  %12 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %13 = bitcast %struct.hsi_client* %12 to %struct.hsi_client.0*
  %14 = call i32 %11(%struct.hsi_client.0* %13)
  %15 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %16 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %21 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %26 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %32 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %34 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %39 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %24
  %41 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %42 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_4__* @to_hsi_controller(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @module_put(i32 %47)
  %49 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %50 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  ret void
}

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local %struct.TYPE_4__* @to_hsi_controller(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
