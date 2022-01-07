; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_check_room.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_check_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_vnic = type { i32 }
%struct.usnic_vnic_res_spec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@USNIC_VNIC_RES_TYPE_MAX = common dso_local global i32 0, align 4
@USNIC_VNIC_RES_TYPE_EOL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_vnic_check_room(%struct.usnic_vnic* %0, %struct.usnic_vnic_res_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usnic_vnic*, align 8
  %5 = alloca %struct.usnic_vnic_res_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usnic_vnic* %0, %struct.usnic_vnic** %4, align 8
  store %struct.usnic_vnic_res_spec* %1, %struct.usnic_vnic_res_spec** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %44, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @USNIC_VNIC_RES_TYPE_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %5, align 8
  %15 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %5, align 8
  %23 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @USNIC_VNIC_RES_TYPE_EOL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %13
  br label %47

34:                                               ; preds = %13
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.usnic_vnic*, %struct.usnic_vnic** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @usnic_vnic_res_free_cnt(%struct.usnic_vnic* %36, i32 %37)
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %9

47:                                               ; preds = %33, %9
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @usnic_vnic_res_free_cnt(%struct.usnic_vnic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
