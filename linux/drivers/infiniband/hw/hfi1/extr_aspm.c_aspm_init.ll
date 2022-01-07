; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_aspm.c_aspm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_aspm.c_aspm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i32, i32, i32 }
%struct.hfi1_ctxtdata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aspm_init(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 3
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %9 = call i32 @aspm_hw_l1_supported(%struct.hfi1_devdata* %8)
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %19, i64 %20)
  store %struct.hfi1_ctxtdata* %21, %struct.hfi1_ctxtdata** %3, align 8
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %23 = icmp ne %struct.hfi1_ctxtdata* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %26 = call i32 @aspm_ctx_init(%struct.hfi1_ctxtdata* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %29 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %28)
  br label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %35 = call i32 @aspm_hw_set_l1_ent_latency(%struct.hfi1_devdata* %34)
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %37 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %39 = call i32 @aspm_hw_disable_l1(%struct.hfi1_devdata* %38)
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %41 = call i32 @aspm_enable_all(%struct.hfi1_devdata* %40)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @aspm_hw_l1_supported(%struct.hfi1_devdata*) #1

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @aspm_ctx_init(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @aspm_hw_set_l1_ent_latency(%struct.hfi1_devdata*) #1

declare dso_local i32 @aspm_hw_disable_l1(%struct.hfi1_devdata*) #1

declare dso_local i32 @aspm_enable_all(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
