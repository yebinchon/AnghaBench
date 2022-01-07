; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32 }
%struct.ishtp_cl_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ishtp_cl* @ishtp_cl_allocate(%struct.ishtp_cl_device* %0) #0 {
  %2 = alloca %struct.ishtp_cl*, align 8
  %3 = alloca %struct.ishtp_cl_device*, align 8
  %4 = alloca %struct.ishtp_cl*, align 8
  store %struct.ishtp_cl_device* %0, %struct.ishtp_cl_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ishtp_cl* @kmalloc(i32 4, i32 %5)
  store %struct.ishtp_cl* %6, %struct.ishtp_cl** %4, align 8
  %7 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %8 = icmp ne %struct.ishtp_cl* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ishtp_cl* null, %struct.ishtp_cl** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %12 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %13 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ishtp_cl_init(%struct.ishtp_cl* %11, i32 %14)
  %16 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  store %struct.ishtp_cl* %16, %struct.ishtp_cl** %2, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  ret %struct.ishtp_cl* %18
}

declare dso_local %struct.ishtp_cl* @kmalloc(i32, i32) #1

declare dso_local i32 @ishtp_cl_init(%struct.ishtp_cl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
