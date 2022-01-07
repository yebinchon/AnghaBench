; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-dev.c_sp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-dev.c_sp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sp_init(%struct.sp_device* %0) #0 {
  %2 = alloca %struct.sp_device*, align 8
  store %struct.sp_device* %0, %struct.sp_device** %2, align 8
  %3 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %4 = call i32 @sp_add_device(%struct.sp_device* %3)
  %5 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %6 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %13 = call i32 @ccp_dev_init(%struct.sp_device* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %16 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %23 = call i32 @psp_dev_init(%struct.sp_device* %22)
  br label %24

24:                                               ; preds = %21, %14
  ret i32 0
}

declare dso_local i32 @sp_add_device(%struct.sp_device*) #1

declare dso_local i32 @ccp_dev_init(%struct.sp_device*) #1

declare dso_local i32 @psp_dev_init(%struct.sp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
