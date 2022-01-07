; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_mbox_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_mbox_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.flexrm_ring* }
%struct.flexrm_ring = type { i64, i64 }
%struct.mbox_controller = type { i64, %struct.mbox_chan* }
%struct.of_phandle_args = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MSI_COUNT_MASK = common dso_local global i64 0, align 8
@MSI_TIMER_VAL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.mbox_controller*, %struct.of_phandle_args*)* @flexrm_mbox_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @flexrm_mbox_of_xlate(%struct.mbox_controller* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mbox_controller*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.mbox_chan*, align 8
  %7 = alloca %struct.flexrm_ring*, align 8
  store %struct.mbox_controller* %0, %struct.mbox_controller** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.mbox_chan* @ERR_PTR(i32 %14)
  store %struct.mbox_chan* %15, %struct.mbox_chan** %3, align 8
  br label %82

16:                                               ; preds = %2
  %17 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %18 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %23 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.mbox_chan* @ERR_PTR(i32 %28)
  store %struct.mbox_chan* %29, %struct.mbox_chan** %3, align 8
  br label %82

30:                                               ; preds = %16
  %31 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %32 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MSI_COUNT_MASK, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.mbox_chan* @ERR_PTR(i32 %40)
  store %struct.mbox_chan* %41, %struct.mbox_chan** %3, align 8
  br label %82

42:                                               ; preds = %30
  %43 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %44 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MSI_TIMER_VAL_MASK, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.mbox_chan* @ERR_PTR(i32 %52)
  store %struct.mbox_chan* %53, %struct.mbox_chan** %3, align 8
  br label %82

54:                                               ; preds = %42
  %55 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %56 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %55, i32 0, i32 1
  %57 = load %struct.mbox_chan*, %struct.mbox_chan** %56, align 8
  %58 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %59 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %57, i64 %62
  store %struct.mbox_chan* %63, %struct.mbox_chan** %6, align 8
  %64 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %65 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %64, i32 0, i32 0
  %66 = load %struct.flexrm_ring*, %struct.flexrm_ring** %65, align 8
  store %struct.flexrm_ring* %66, %struct.flexrm_ring** %7, align 8
  %67 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %68 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.flexrm_ring*, %struct.flexrm_ring** %7, align 8
  %73 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %75 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.flexrm_ring*, %struct.flexrm_ring** %7, align 8
  %80 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  store %struct.mbox_chan* %81, %struct.mbox_chan** %3, align 8
  br label %82

82:                                               ; preds = %54, %50, %38, %26, %12
  %83 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %83
}

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
