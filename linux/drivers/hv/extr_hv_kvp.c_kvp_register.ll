; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_msg = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HV_DRV_VERSION = common dso_local global i32 0, align 4
@hvt = common dso_local global i32 0, align 4
@kvp_register_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kvp_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_kvp_msg*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hv_kvp_msg* @kzalloc(i32 16, i32 %5)
  store %struct.hv_kvp_msg* %6, %struct.hv_kvp_msg** %3, align 8
  %7 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %8 = icmp ne %struct.hv_kvp_msg* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %11 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %17 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @HV_DRV_VERSION, align 4
  %21 = call i32 @strcpy(i8* %19, i32 %20)
  %22 = load i32, i32* @hvt, align 4
  %23 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %24 = load i32, i32* @kvp_register_done, align 4
  %25 = call i32 @hvutil_transport_send(i32 %22, %struct.hv_kvp_msg* %23, i32 16, i32 %24)
  %26 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %27 = call i32 @kfree(%struct.hv_kvp_msg* %26)
  br label %28

28:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.hv_kvp_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @hvutil_transport_send(i32, %struct.hv_kvp_msg*, i32, i32) #1

declare dso_local i32 @kfree(%struct.hv_kvp_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
