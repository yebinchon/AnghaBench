; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_dev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_dev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { %struct.ccp_device* }
%struct.ccp_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ccp_device*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_dev_destroy(%struct.sp_device* %0) #0 {
  %2 = alloca %struct.sp_device*, align 8
  %3 = alloca %struct.ccp_device*, align 8
  store %struct.sp_device* %0, %struct.sp_device** %2, align 8
  %4 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %5 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %4, i32 0, i32 0
  %6 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  store %struct.ccp_device* %6, %struct.ccp_device** %3, align 8
  %7 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %8 = icmp ne %struct.ccp_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %12 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ccp_device*)*, i32 (%struct.ccp_device*)** %16, align 8
  %18 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %19 = call i32 %17(%struct.ccp_device* %18)
  br label %20

20:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
