; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_pd.c_rvt_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_pd.c_rvt_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rvt_dev_info = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.rvt_pd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_alloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.rvt_dev_info*, align 8
  %7 = alloca %struct.rvt_pd*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 0
  %11 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  store %struct.ib_device* %11, %struct.ib_device** %5, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = call %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device* %12)
  store %struct.rvt_dev_info* %13, %struct.rvt_dev_info** %6, align 8
  %14 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %15 = call %struct.rvt_pd* @ibpd_to_rvtpd(%struct.ib_pd* %14)
  store %struct.rvt_pd* %15, %struct.rvt_pd** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %17 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %20 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %23 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %21, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %30 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %49

34:                                               ; preds = %2
  %35 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %36 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %40 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %43 = icmp ne %struct.ib_udata* %42, null
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.rvt_pd*, %struct.rvt_pd** %7, align 8
  %48 = getelementptr inbounds %struct.rvt_pd, %struct.rvt_pd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %34, %28
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device*) #1

declare dso_local %struct.rvt_pd* @ibpd_to_rvtpd(%struct.ib_pd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
